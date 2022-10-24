local g   = vim.g
local opt = vim.opt

--------------------------
-- Core Editor Settings --
--------------------------
opt.number      = true
opt.mouse       = 'a'
opt.ignorecase  = true
opt.smartcase   = true
opt.hlsearch    = false
opt.wrap        = false
opt.colorcolumn = '120'
opt.splitright  = true
opt.splitbelow  = true
opt.showmatch   = true
opt.foldmethod  = 'marker'

-- Tabs
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.expandtab   = true
opt.smartindent = true

g.mapleader = ' '

-- Clipboard Hacking
vim.keymap.set({'n', 'x'}, 'cp', '"y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- Theme
opt.termguicolors = true
vim.cmd('colorscheme gruvbox')

-----------------------
-- Plugin Management --
-----------------------
require('packer_init')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')

