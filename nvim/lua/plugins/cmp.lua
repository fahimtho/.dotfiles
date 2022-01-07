-- Code Complete by cmp using lsp
local cmp = require'cmp'

cmp.setup({

  completion = { -- Only Comeplete When I want
     autocomplete = false,
  },

  documentation = { -- Border for Documentation
    border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"},
    winhighlight = 'NormalFloat:NormalFloat,FloatBorder:NormalFloat',
    maxwidth = 1000,
    maxheight = 1000,
    minwidth = 1000,
    minheight = 1000,
  },

  snippet = { -- Snippets by snippy
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end,
  },

  mapping = { -- What to do when menu comes
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  },

  sources = cmp.config.sources({ -- Cmp Sources
    { name = 'nvim_lsp' },
    { name = 'snippy' },
    { name = "latex_symbols" },
  }, {
  })
})

-- icons for cmp
require('lspkind').init({
    with_text = true,
    preset = 'codicons',
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰮ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = " ",
      Color = "",
      File = "",
      Reference = "渚",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({with_text = false, maxwidth = 100})
  }
}
