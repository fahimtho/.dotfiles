-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/fh1m/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/fh1m/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/fh1m/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/fh1m/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/fh1m/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20plugins.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["asyncrun.vim"] = {
    commands = { "AsyncRun" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["bracey.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/bracey.vim",
    url = "https://github.com/turbio/bracey.vim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.bufferline\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["clipboard-image.nvim"] = {
    config = { "\27LJ\1\2¥\1\0\0\3\0\n\0\0224\0\0\0007\0\1\0007\0\2\0>\0\1\0014\0\0\0007\0\1\0007\0\3\0%\1\4\0>\0\2\0024\1\0\0007\1\1\0017\1\5\1>\1\1\1\n\0\0\0T\1\2€\a\0\6\0T\1\4€4\1\a\0007\1\b\1%\2\t\0@\1\2\0H\0\2\0\22%y-%m-%d-%H-%M-%S\tdate\aos\5\17inputrestore\vName: \ninput\14inputsave\afn\bvim°\1\1\0\4\0\n\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0001\3\4\0:\3\5\2:\2\a\0013\2\b\0:\2\t\1>\0\2\1G\0\1\0\rmarkdown\1\0\1\naffix\f![](%s)\fdefault\1\0\0\rimg_name\0\1\0\3\16img_dir_txt\bimg\naffix\a%s\fimg_dir\bimg\nsetup\20clipboard-image\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/clipboard-image.nvim",
    url = "https://github.com/ekickx/clipboard-image.nvim"
  },
  ["cmp-latex-symbols"] = {
    after_files = { "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols/after/plugin/cmp_latex.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cmp-latex-symbols",
    url = "https://github.com/kdheepak/cmp-latex-symbols"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-snippy"] = {
    after_files = { "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cmp-snippy/after/plugin/cmp_snippy.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cmp-snippy",
    url = "https://github.com/dcampos/cmp-snippy"
  },
  ["cphelper.nvim"] = {
    commands = { "CphReceive", "CphTest", "CphRetest", "CphEdit", "CphDelete" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cphelper.nvim",
    url = "https://github.com/p00f/cphelper.nvim"
  },
  ["cutlass.nvim"] = {
    config = { "\27LJ\1\2F\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\fcut_key\6m\nsetup\fcutlass\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/cutlass.nvim",
    url = "https://github.com/gbprod/cutlass.nvim"
  },
  ["dial.nvim"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17plugins.dial\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["filetype.nvim"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["gitsigns.nvim"] = {
    commands = { "Gitsigns" },
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.git\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    commands = { "Glow" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\1\0024\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\25plugins.goto-preview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["highlight-current-n.nvim"] = {
    config = { "\27LJ\1\2_\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\20highlight_group\vVisual\nsetup\24highlight_current_n\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/highlight-current-n.nvim",
    url = "https://github.com/rktjmp/highlight-current-n.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17plugins.null\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\1\0022\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\tnumb\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2-\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\18plugins.pairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.gps\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    commands = { "SnipRun" },
    config = { "\27LJ\1\2.\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\19plugins.notify\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-pqf.git"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.pqf\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-snippy"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-snippy",
    url = "https://github.com/dcampos/nvim-snippy"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.nvim-tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  playground = {
    commands = { "TSHighlightCapturesUnderCursor" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sniprun = {
    commands = { "SnipRun" },
    config = { "\27LJ\1\2Ý\2\0\0\5\0\17\0\0234\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\0012\2\0\0:\2\5\0012\2\0\0:\2\6\0013\2\n\0003\3\b\0003\4\a\0:\4\t\3:\3\v\2:\2\f\0013\2\r\0:\2\14\0013\2\15\0:\2\16\1>\0\2\1G\0\1\0\19show_no_output\1\3\0\0\fClassic\23TempFloatingWindow\fdisplay\1\2\0\0\15NvimNotify\24interpreter_options\17GFM_original\1\0\0\21use_on_filetypes\1\0\0\1\2\0\0\20markdown.pandoc\17repl_disable\16repl_enable\26selected_interpreters\1\0\2\20inline_messages\3\0\fborders\vsingle\nsetup\fsniprun\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["surround.nvim"] = {
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21plugins.surround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/surround.nvim",
    url = "https://github.com/blackCauldron7/surround.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/McAuleyPenney/tidy.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["treesitter-unit"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/treesitter-unit",
    url = "https://github.com/David-Kunz/treesitter-unit"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    config = { "\27LJ\1\2Ð\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\v\15auto_close\1\17indent_lines\1\vheight\3\n\17auto_preview\2\14auto_fold\1\nicons\2\14fold_open\bï‘¼\tmode\25document_diagnostics\16fold_closed\bï‘ \rposition\vbottom\fpadding\2\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ultisnips = {
    after_files = { "/home/fh1m/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/sirver/ultisnips"
  },
  ["vim-eunuch"] = {
    commands = { "Delete", "Unlink", "Move", "Rename", "Chmod", "Mkdir", "Cfind", "Clocate", "SudoWrite", "SudoEdit" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-floaterm"] = {
    commands = { "FloatermToggle", "FloatermNew", "FloatermKill" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  vimtex = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["vista.vim"] = {
    commands = { "Vista" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/opt/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  ["windline.nvim"] = {
    loaded = true,
    path = "/home/fh1m/.local/share/nvim/site/pack/packer/start/windline.nvim",
    url = "https://github.com/windwp/windline.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-gps
time([[Config for nvim-gps]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.gps\frequire\0", "config", "nvim-gps")
time([[Config for nvim-gps]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: dial.nvim
time([[Config for dial.nvim]], true)
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17plugins.dial\frequire\0", "config", "dial.nvim")
time([[Config for dial.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23plugins.bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17plugins.null\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: highlight-current-n.nvim
time([[Config for highlight-current-n.nvim]], true)
try_loadstring("\27LJ\1\2_\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\1\20highlight_group\vVisual\nsetup\24highlight_current_n\frequire\0", "config", "highlight-current-n.nvim")
time([[Config for highlight-current-n.nvim]], false)
-- Config for: nvim-pqf.git
time([[Config for nvim-pqf.git]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16plugins.pqf\frequire\0", "config", "nvim-pqf.git")
time([[Config for nvim-pqf.git]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Move lua require("packer.load")({'vim-eunuch'}, { cmd = "Move", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CphRetest lua require("packer.load")({'cphelper.nvim'}, { cmd = "CphRetest", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Delete lua require("packer.load")({'vim-eunuch'}, { cmd = "Delete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CphReceive lua require("packer.load")({'cphelper.nvim'}, { cmd = "CphReceive", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Cfind lua require("packer.load")({'vim-eunuch'}, { cmd = "Cfind", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Vista lua require("packer.load")({'vista.vim'}, { cmd = "Vista", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoEdit lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermToggle lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Glow lua require("packer.load")({'glow.nvim'}, { cmd = "Glow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CphDelete lua require("packer.load")({'cphelper.nvim'}, { cmd = "CphDelete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Mkdir lua require("packer.load")({'vim-eunuch'}, { cmd = "Mkdir", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Clocate lua require("packer.load")({'vim-eunuch'}, { cmd = "Clocate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CphTest lua require("packer.load")({'cphelper.nvim'}, { cmd = "CphTest", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SnipRun lua require("packer.load")({'nvim-notify', 'sniprun'}, { cmd = "SnipRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermKill lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermKill", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Unlink lua require("packer.load")({'vim-eunuch'}, { cmd = "Unlink", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FloatermNew lua require("packer.load")({'vim-floaterm'}, { cmd = "FloatermNew", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gitsigns lua require("packer.load")({'gitsigns.nvim'}, { cmd = "Gitsigns", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CphEdit lua require("packer.load")({'cphelper.nvim'}, { cmd = "CphEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSHighlightCapturesUnderCursor lua require("packer.load")({'playground'}, { cmd = "TSHighlightCapturesUnderCursor", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Chmod lua require("packer.load")({'vim-eunuch'}, { cmd = "Chmod", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoWrite lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Rename lua require("packer.load")({'vim-eunuch'}, { cmd = "Rename", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType arduino ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "arduino" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'bracey.vim', 'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-ts-autotag', 'asyncrun.vim'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'bracey.vim', 'nvim-ts-autotag'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType julia ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "julia" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim', 'clipboard-image.nvim', 'glow.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'asyncrun.vim'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ultisnips', 'clipboard-image.nvim', 'vimtex', 'cmp-latex-symbols'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'cmp-snippy'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-colorizer.lua'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertLeave * ++once lua require("packer.load")({'goto-preview', 'treesitter-unit', 'cutlass.nvim'}, { event = "InsertLeave *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'surround.nvim', 'nvim-snippy', 'lspkind-nvim', 'numb.nvim', 'nvim-cmp', 'vim-snippets', 'nvim-autopairs', 'Comment.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], true)
vim.cmd [[source /home/fh1m/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]]
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/ultisnips/ftdetect/snippets.vim]], false)
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/fh1m/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
