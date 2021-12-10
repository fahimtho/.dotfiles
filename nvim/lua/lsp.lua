-- LSP UI
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = false,
  underline = false,
  update_in_insert = true,
})

-- Border for Documentation
local border = {
      {"╭", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╮", "FloatBorder"},
      {"│", "FloatBorder"},
      {"╯", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╰", "FloatBorder"},
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

-- LSPs
require'lspconfig'.pyright.setup{
  handlers=handlers,
}
require'lspconfig'.clangd.setup{
  handlers=handlers,
}
require'lspconfig'.rust_analyzer.setup{
  handlers=handlers,
}
require'lspconfig'.gopls.setup{
  handlers=handlers,
}
require'lspconfig'.julials.setup{
  handlers=handlers,
}
require'lspconfig'.texlab.setup{
  handlers=handlers,
}
require'lspconfig'.tsserver.setup{
  handlers=handlers,
}
require'lspconfig'.bashls.setup{
  handlers=handlers,
}
require'lspconfig'.hls.setup{
  handlers=handlers,
}
require'lspconfig'.cssls.setup{
  handlers=handlers,
  capabilities = capabilities,
}
require'lspconfig'.html.setup {
  capabilities = capabilities,
  handlers=handlers,
}
require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
  handlers=handlers,
}
require'lspconfig'.julials.setup{
  handlers=handlers,
}
require'lspconfig'.vimls.setup{
  handlers=handlers,
}
require'lspconfig'.r_language_server.setup{
  handlers=handlers,
}
require'lspconfig'.cmake.setup{
handlers=handlers,
}
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
})
