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
