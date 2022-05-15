-- Code Complete by cmp using lsp
local cmp = require'cmp'

cmp.setup({

  completion = { -- Only Comeplete When I want
     completeopt = "menu,menuone,noinsert",
     autocomplete = false,
     keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
     keyword_length = 1,
  },

  window = {
    documentation = { -- Border for Documentation
      border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"},
      winhighlight = 'NormalFloat:NormalFloat,FloatBorder:NormalFloat',
      maxwidth = 1000,
      maxheight = 1000,
      minwidth = 1000,
      minheight = 1000,
    },

    view = {
      entries = {name = 'custom', selection_order = 'near_cursor' }
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
    { name = 'path' }
  }, {
  })
})

local cmp = require "cmp"
cmp.setup {
    -- ... rest of your setup ...

    sorting = {
        comparators = {
            require "cmp-under-comparator".under,
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
}

-- icons for cmp
local kind_icons = {
      Text = " ",
      Method = " ",
      Function = " ",
      Constructor = " ",
      Field = "ﰮ ",
      Variable = " ",
      Class = "ﴯ ",
      Interface = " ",
      Module = " ",
      Property = "ﰠ ",
      Unit = "塞 ",
      Value = " ",
      Enum = "  ",
      Keyword = " ",
      Snippet = " ",
      Color = " ",
      File = " ",
      Reference = "渚 ",
      Folder = "  ",
      EnumMember = "  ",
      Constant = " ",
      Struct = "פּ ",
      Event = " ",
      Operator = " ",
      TypeParameter = " "
    }

local cmp = require('cmp')
cmp.setup {
  formatting = {
    fields = {"abbr", "kind" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format(' %s' ,kind_icons[vim_item.kind] ) -- This concatonates the icons with the name of the item kind
      return vim_item
    end
  },
}
