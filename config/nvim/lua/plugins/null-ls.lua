-- External Programs as Lsp
local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = {
  -- Formatting:
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.asmfmt,
  null_ls.builtins.formatting.black,
  null_ls.builtins.formatting.clang_format,
  null_ls.builtins.formatting.brittany,
  null_ls.builtins.formatting.fixjson,
  null_ls.builtins.formatting.gofmt,
  null_ls.builtins.formatting.jq,
  null_ls.builtins.formatting.lua_format,
  null_ls.builtins.formatting.rustfmt,
  -- Diagnostics:
  null_ls.builtins.diagnostics.alex,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.diagnostics.eslint_d,
  null_ls.builtins.diagnostics.flake8,
  null_ls.builtins.diagnostics.luacheck,
  null_ls.builtins.diagnostics.markdownlint,
  null_ls.builtins.diagnostics.revive,
  null_ls.builtins.diagnostics.shellcheck,
  null_ls.builtins.diagnostics.zsh,
  -- Hover:
  null_ls.builtins.hover.dictionary,
  -- Completion:
  null_ls.builtins.completion.spell,
}
null_ls.setup({ sources = sources })
