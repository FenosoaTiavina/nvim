return {
    {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts={
        color_overrides = {
        	mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
			},
	},
        integrations = {
		telescope = {
			enabled = true,
			style = "nvchad",
			},
	        	dropbar = {
		        	enabled = true,
				color_mode = true,
			},
	},
    },
    config = function()
        vim.cmd("colorscheme catppuccin-mocha")
    end
    },
    {
        "xiyaowong/transparent.nvim",
        config = function()
            require("transparent").setup({ -- Optional, you don't have to run setup.
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
  },
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
            vim.cmd("TransparentEnable")
        end
    },
}
