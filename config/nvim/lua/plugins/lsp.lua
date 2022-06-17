-- linting format
vim.diagnostic.config({
  virtual_text = false,
  underline = false,
  signs = false,
  update_in_insert = true,
  float = {
    source = 'always',
    border = 'rounded',
  },
})

-- Lsp Code Location
local navic = require("nvim-navic")
navic.setup {
  icons = {
    File          = "  ",
    Module        = "  ",
    Namespace     = "  ",
    Package       = "  ",
    Class         = "  ",
    Method        = "  ",
    Property      = "  ",
    Field         = "  ",
    Constructor   = "  ",
    Enum          = " 練",
    Interface     = " 練",
    Function      = "  ",
    Variable      = "  ",
    Constant      = "  ",
    String        = "  ",
    Number        = "  ",
    Boolean       = "◩ ",
    Array         = "  ",
    Object        = "  ",
    Key           = "  ",
    Null          = " ﳠ ",
    EnumMember    = "  ",
    Struct        = "  ",
    Event         = "  ",
    Operator      = "  ",
    TypeParameter = "  ",
  },
  highlight = false,
  separator = "  ",
  depth_limit = 0,
  depth_limit_indicator = "..",
}

-- Border for Documentation
local border = {
  { "╭", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╮", "FloatBorder" },
  { "│", "FloatBorder" },
  { "╯", "FloatBorder" },
  { "─", "FloatBorder" },
  { "╰", "FloatBorder" },
  { "│", "FloatBorder" },
}

local handlers = {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
}

-- LSP Snippets
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- use | capabilities = capabilities | to use snippet from lsp

-- Python
require("lspconfig").pyright.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- C,CPP
require 'lspconfig'.clangd.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- latex
require 'lspconfig'.texlab.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Arduino
require 'lspconfig'.arduino_language_server.setup({
  cmd = {
    -- Required
    "arduino-language-server",
    "-cli-config", "/home/fh1m/.arduino15/arduino-cli.yaml",
    -- Optional
    "-cli", "/usr/bin/arduino-cli",
    "-clangd", "/usr/bin/clangd"
  },

  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
})

-- Bash
require 'lspconfig'.bashls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Go
require 'lspconfig'.gopls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Haskell
require 'lspconfig'.hls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Rust
require 'lspconfig'.rust_analyzer.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- typescript and javascript
require "plugins.ts"

-- Javascript
require 'lspconfig'.eslint.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Markdown
require 'lspconfig'.grammarly.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Html
require 'lspconfig'.html.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- CSS
require 'lspconfig'.cssls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- JSON
require 'lspconfig'.jsonls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Lua
require 'lspconfig'.sumneko_lua.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Vim
require 'lspconfig'.vimls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- SQL
require 'lspconfig'.sqlls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- emmet
require 'lspconfig'.emmet_ls.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}

-- Markdown
require 'lspconfig'.marksman.setup {
  handlers = handlers,
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    navic.attach(client, bufnr)
  end
}
