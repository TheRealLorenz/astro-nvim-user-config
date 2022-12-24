--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
--
local config = {
	-- Set colorscheme to use
	colorscheme = "onedark",

	-- set vim options here (vim.<first_key>.<second_key> = value)
	options = {
		opt = {
			-- set to true or false etc.
			relativenumber = true, -- sets vim.opt.relativenumber
			number = true, -- sets vim.opt.number
			spell = false, -- sets vim.opt.spell
			signcolumn = "auto", -- sets vim.opt.signcolumn to auto
			wrap = false, -- sets vim.opt.wrap
		},
		g = {
			mapleader = " ", -- sets vim.g.mapleader
			autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
			cmp_enabled = true, -- enable completion at start
			autopairs_enabled = true, -- enable autopairs at start
			diagnostics_enabled = true, -- enable diagnostics at start
			status_diagnostics_enabled = true, -- enable diagnostics in statusline
			icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
			ui_notifications_enabled = true, -- disable notifications when toggling UI elements
		},
	},

	-- Set dashboard header
	header = {
		"  ██████  ██████   █████  ███    ██ ██████  ███████  ",
		" ██       ██   ██ ██   ██ ████   ██ ██   ██ ██       ",
		" ██   ███ ██████  ███████ ██ ██  ██ ██   ██ █████    ",
		" ██    ██ ██   ██ ██   ██ ██  ██ ██ ██   ██ ██       ",
		"  ██████  ██   ██ ██   ██ ██   ████ ██████  ███████  ",
		"                                                     ",
		"                                                     ",
		"████████ ███████  ██████   █████  ███    ███ ███████ ",
		"   ██    ██      ██       ██   ██ ████  ████ ██      ",
		"   ██    █████   ██   ███ ███████ ██ ████ ██ █████   ",
		"   ██    ██      ██    ██ ██   ██ ██  ██  ██ ██      ",
		"   ██    ███████  ██████  ██   ██ ██      ██ ███████ ",
	},

	-- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
	diagnostics = {
		virtual_text = true,
		underline = true,
	},

	-- Extend LSP configuration
	lsp = require "user.lsp",

	-- Mapping data with "desc" stored directly by vim.keymap.set().
	mappings = require "user.mappings",

	-- Modify which-key registration (Use this with mappings table in the above.)
	["which-key"] = require "user.which-key",

	-- Configure plugins
	plugins = require "user.plugins",

	-- LuaSnip Options
	luasnip = {
		-- Extend filetypes
		filetype_extend = {
			-- javascript = { "javascriptreact" },
		},
		-- Configure luasnip loaders (vscode, lua, and/or snipmate)
		vscode = {
			-- Add paths for including more VS Code style snippets in luasnip
			paths = {},
		},
	},

	-- CMP Source Priorities
	-- modify here the priorities of default cmp sources
	-- higher value == higher priority
	-- The value can also be set to a boolean for disabling default sources:
	-- false == disabled
	-- true == 1000
	cmp = {
		source_priority = {
			nvim_lsp = 1000,
			luasnip = 750,
			buffer = 500,
			path = 250,
		},
	},

	-- This function is run last and is a good place to configuring
	-- augroups/autocommands and custom filetypes also this just pure lua so
	-- anything that doesn't fit in the normal config locations above can go here
	polish = function()
		-- Set up custom filetypes
		-- vim.filetype.add {
		--   extension = {
		--     foo = "fooscript",
		--   },
		--   filename = {
		--     ["Foofile"] = "fooscript",
		--   },
		--   pattern = {
		--     ["~/%.config/foo/.*"] = "fooscript",
		--   },
		-- }
	end,
}

return config
