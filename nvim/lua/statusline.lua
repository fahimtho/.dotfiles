require'staline'.setup {

	sections = {
		left = {
			'right_sep_double', '-file_name', 'left_sep_double',
      ' ','%{NvimGps()}',' ',
		},
		mid  = {''},
		right= {
      ' ','-lsp',' ',
			'right_sep_double', '-line_column', 'left_sep_double',
		}
	},

	defaults={
		fg = "#0f0f0f",
		left_separator = "",
		right_separator = "",
		true_colors = true,
		line_column = "%l of %L 並"
	},
	mode_colors = {
		n  = "#7196e6",
		i  = "#7196e6",
		ic = "#7196e6",
		c  = "#7196e6",
		v  = "#7196e6"
	}
}
