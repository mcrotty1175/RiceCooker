-- [[ Setting options ]]
-- See `:help vim.opt`

local options = {
	-- Basic Settings
	guicursor = "",
	errorbells = false,
	title = true,
	hidden = true,
	scrolloff = 8,
	wrap = false,
	signcolumn = "yes",
	showcmd = true,
	cmdheight = 2,
	pumheight = 10,
	textwidth = 80,
	spell = true,
	spelllang = "en_us",

	-- Line Numbers
	number = true,
	relativenumber = true,

	-- Tabs/Indents
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	breakindent = true,
	expandtab = true,
	smartindent = true,
	autoindent = true,

	-- Searching
	hlsearch = false,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	wildmode = { "longest", "list" },
	completeopt = "menuone,noselect",
	inccommand = "split",

	-- Backups
	swapfile = false,
	backup = false,
	undofile = true,

	-- Splits
	splitbelow = true,
	splitright = true,

	-- Colors
	background = "dark",
	termguicolors = true,
	syntax = "enable",

	-- System
	mouse = "a",
	fileencoding = "utf-8",
	backspace = { "indent", "eol", "start" },
	clipboard = "unnamedplus",
	updatetime = 300,
	timeout = true,
	timeoutlen = 300,

	-- Speed Improvements
	lazyredraw = true,
	ttyfast = true,

	-- Misc
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.lsp.inlay_hint.enable(true)
