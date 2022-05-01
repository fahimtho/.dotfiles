-- Code Complete by cmp using lsp
local cmp = require'cmp'

cmp.setup({

  completion = { -- Only Comeplete When I want
     autocomplete = false,
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
    { name = 'cmp_tabnine' },
    { name = 'buffer' },
    { name = 'nvim_lua' },
    { name = 'path' }
  }, {
  })
})

for _, cmd_type in ipairs({':', '/', '?', '@'}) do
  cmp.setup.cmdline(cmd_type, {
    sources = {
      { name = 'cmdline_history' },
    },
  })
end

require'cmp'.setup.cmdline(':', {
  sources = {
    { name = 'cmdline' }
  }
})

require'cmp'.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

local cmp = require "cmp"
cmp.setup {
    -- ... rest of your setup ...

    sorting = {
        comparators = {
            require('cmp_tabnine.compare'),
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

local tabnine = require('cmp_tabnine.config')
tabnine:setup({
	max_lines = 1000;
	max_num_results = 20;
	sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = '..';
	ignored_file_types = { -- default is not to ignore
		-- uncomment to ignore in lua:
		-- lua = true
	};
	show_prediction_strength = false;
})

-- icons for cmp
local kind_icons = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰮ",
      Variable = "",
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
    }

require'cmp'.setup {
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = lspkind.presets.default[vim_item.kind]
			local menu = source_mapping[entry.source.name]
			if entry.source.name == 'cmp_tabnine' then
				if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
					menu = entry.completion_item.data.detail .. ' ' .. menu
				end
				vim_item.kind = ''
			end
			vim_item.menu = menu
			return vim_item
		end
	},
}

local cmp = require('cmp')
cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
      -- Source
      vim_item.menu = ({
        buffer = " [Buffer]",
        nvim_lsp = " [LSP]",
        nvim_lua = " [Api]",
        latex_symbols = " [Tex]",
        snippy = " [Snip]",
	      cmp_tabnine = " [TN]",
	      path = " [Path]",
      })[entry.source.name]
      return vim_item
    end
  },
}
