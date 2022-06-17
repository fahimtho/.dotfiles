-- Code Complete by cmp using lsp
local cmp = require 'cmp'

cmp.setup({
  completion = { -- Only Comeplete When I want
  completeopt = "menu,menuone,noinsert",
  autocomplete = true,
  keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
  keyword_length = 1,
  winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
  col_offset = -3,
  side_padding = 0,
},

  window = {
    documentation = { -- Border for Documentation
      winhighlight = 'NormalFloat:NormalFloat,FloatBorder:NormalFloat',
      maxwidth = 1000,
      maxheight = 1000,
      minwidth = 1000,
      minheight = 1000,
    },

    view = {
      entries = { name = 'custom', selection_order = 'near_cursor' }
    },
  },

  snippet = { -- Snippets by snippy
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({ -- What to do when menu comes
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),

  sources = cmp.config.sources({ -- Cmp Sources
    { name = 'nvim_lsp' },
    { name = 'snippy' },
    { name = 'latex_symbols' },
    { name = 'buffer' },
    { name = 'path' },

  }, {
  })
})

local cmp = require "cmp"
cmp.setup {
  sorting = {
    comparators = {
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.score,
      require "cmp-under-comparator".under,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
}

-- icons for cmp
local kind_icons = {
  Text = " Text",
  Method = " Method",
  Function = " Function",
  Constructor = " Constructor",
  Field = "ﰮ Field",
  Variable = "[] Variable",
  Class = "ﴯ Class",
  Interface = "  Interface",
  Module = " Module",
  Property = "ﰠ Property",
  Unit = "塞 Unit",
  Value = "  Value",
  Enum = "  Enum",
  Keyword = "  Keyword",
  Snippet = " Snip",
  Color = " Color",
  File = " File",
  Reference = "渚 Reference",
  Folder = "  Folder",
  EnumMember = "  EnumMember",
  Constant = " Constant",
  Struct = "פּ Struct",
  Event = " Event",
  Operator = "  Operator",
  TypeParameter = " TypeParameter"
}

-- Menu Look and Feel
local cmp = require('cmp')
cmp.setup {
formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. strings[1] .. " "
      kind.menu = "    (" .. strings[2] .. ")"
      return kind
    end,
  },
}
