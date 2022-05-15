-- disable useless plugin [built in]
local disabled_built_ins = {
    "gzip",
    "man",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

-- Start Quickly
require'impatient'.enable_profile()
vim.g.did_load_filetypes = 1

-- UI
vim.ui.select = require"popui.ui-overrider"
vim.ui.input = require"popui.input-overrider"

vim.notify = require("notify")

-- Utility functions shared between progress reports for LSP and DAP

local client_notifs = {}

local function get_notif_data(client_id, token)
 if not client_notifs[client_id] then
   client_notifs[client_id] = {}
 end

 if not client_notifs[client_id][token] then
   client_notifs[client_id][token] = {}
 end

 return client_notifs[client_id][token]
end


local spinner_frames = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" }

local function update_spinner(client_id, token)
 local notif_data = get_notif_data(client_id, token)

 if notif_data.spinner then
   local new_spinner = (notif_data.spinner + 1) % #spinner_frames
   notif_data.spinner = new_spinner

   notif_data.notification = vim.notify(nil, nil, {
     hide_from_history = true,
     icon = spinner_frames[new_spinner],
     replace = notif_data.notification,
   })

   vim.defer_fn(function()
     update_spinner(client_id, token)
   end, 100)
 end
end

local function format_title(title, client_name)
 return client_name .. (#title > 0 and ": " .. title or "")
end

local function format_message(message, percentage)
 return (percentage and percentage .. "%\t" or "") .. (message or "")
end

vim.lsp.handlers["$/progress"] = function(_, result, ctx)
 local client_id = ctx.client_id

 local val = result.value

 if not val.kind then
   return
 end

 local notif_data = get_notif_data(client_id, result.token)

 if val.kind == "begin" then
   local message = format_message(val.message, val.percentage)

   notif_data.notification = vim.notify(message, "info", {
     title = format_title(val.title, vim.lsp.get_client_by_id(client_id).name),
     icon = spinner_frames[1],
     timeout = false,
     hide_from_history = false,
   })

   notif_data.spinner = 1
   update_spinner(client_id, result.token)
 elseif val.kind == "report" and notif_data then
   notif_data.notification = vim.notify(format_message(val.message, val.percentage), "info", {
     replace = notif_data.notification,
     hide_from_history = false,
   })
 elseif val.kind == "end" and notif_data then
   notif_data.notification =
     vim.notify(val.message and format_message(val.message) or "Complete", "info", {
       icon = "",
       replace = notif_data.notification,
       timeout = 3000,
     })

   notif_data.spinner = nil
 end
end

vim.lsp.handlers['window/showMessage'] = function(_, result, ctx)
  local client = vim.lsp.get_client_by_id(ctx.client_id)
  local lvl = ({ 'ERROR', 'WARN', 'INFO', 'DEBUG' })[result.type]
  notify({ result.message }, lvl, {
    title = 'LSP | ' .. client.name,
    timeout = 10000,
    keep = function()
      return lvl == 'ERROR' or lvl == 'WARN'
    end,
  })
end

-- Disable comment new line
vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove { "c", "r", "o" }
    end,
})

 --- returns a table containing the lsp changes counts from an lsp result
 function count_lsp_res_changes(lsp_res)
   local count = { instances = 0, files = 0 }
   if (lsp_res.documentChanges) then
     for _, changed_file in pairs(lsp_res.documentChanges) do
       count.files = count.files + 1
       count.instances = count.instances + #changed_file.edits
     end
   elseif (lsp_res.changes) then
     for _, changed_file in pairs(lsp_res.changes) do
       count.instances = count.instances + #changed_file
       count.files = count.files + 1
     end
   end
   return count
 end



      function LspRename()
        local curr_name = vim.fn.expand("<cword>")
        local input_opts = {
          prompt = 'LSP Rename',
          default = curr_name
        }

        -- ask user input
        vim.ui.input(input_opts, function(new_name)
          -- check new_name is valid
          if not new_name or #new_name == 0 or curr_name == new_name then return end

          -- request lsp rename
          local params = vim.lsp.util.make_position_params()
          params.newName = new_name

          vim.lsp.buf_request(0, "textDocument/rename", params, function(_, res, ctx, _)
            if not res then return end

            -- apply renames
            local client = vim.lsp.get_client_by_id(ctx.client_id)
            vim.lsp.util.apply_workspace_edit(res, client.offset_encoding)

            -- display a message
            local changes = count_lsp_res_changes(res)
            local message = string.format("renamed %s instance%s in %s file%s. %s",
              changes.instances,
              changes.instances== 1 and '' or 's',
              changes.files,
              changes.files == 1 and '' or 's',
              changes.files > 1 and "To save them run ':wa'" or ''
            )
            vim.notify(message)
          end)
        end)
      end
      vim.api.nvim_create_user_command('LspRename', LspRename, {})
