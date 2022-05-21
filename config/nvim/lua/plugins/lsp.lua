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

-- Border for Documentation
-- local border = {
--       {"╭", "FloatBorder"},
--       {"─", "FloatBorder"},
--       {"╮", "FloatBorder"},
--       {"│", "FloatBorder"},
--       {"╯", "FloatBorder"},
--       {"─", "FloatBorder"},
--       {"╰", "FloatBorder"},
--       {"│", "FloatBorder"},
-- }
local border = {
      {"┌", "FloatBorder"},
      {"─", "FloatBorder"},
      {"┐", "FloatBorder"},
      {"│", "FloatBorder"},
      {"┘", "FloatBorder"},
      {"─", "FloatBorder"},
      {"└", "FloatBorder"},
      {"│", "FloatBorder"},
}


local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

-- LSP Snippets
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- use | capabilities = capabilities | to use snippet from lsp

-- Python
require'lspconfig'.pyright.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- C,CPP
require'lspconfig'.clangd.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- latex
require'lspconfig'.texlab.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Arduino
require'lspconfig'.arduino_language_server.setup({
cmd =  {
		-- Required
		"arduino-language-server",
		"-cli-config", "/home/fh1m/.arduino15/arduino-cli.yaml",
		-- Optional
		"-cli", "/usr/bin/arduino-cli",
		"-clangd", "/usr/bin/clangd"
	},

handlers=handlers,
capabilities = capabilities,
})

-- Bash
require'lspconfig'.bashls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Go
require'lspconfig'.gopls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Haskell
require'lspconfig'.hls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Rust
require'lspconfig'.rust_analyzer.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- typescript and javascript
require'lspconfig'.tsserver.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Javascript
require'lspconfig'.eslint.setup{
   handlers=handlers,
  capabilities = capabilities,
}

-- Markdown
require'lspconfig'.grammarly.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Html
require'lspconfig'.html.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- CSS
require'lspconfig'.cssls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- JSON
require'lspconfig'.jsonls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Lua
require'lspconfig'.sumneko_lua.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- Vim
require'lspconfig'.vimls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- MD,LaTex
require'lspconfig'.ltex.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- SQL
require'lspconfig'.sqlls.setup{
  handlers=handlers,
  capabilities = capabilities,
}

-- emmet
require'lspconfig'.emmet_ls.setup{
  handlers=handlers,
  capabilities = capabilities,
}
