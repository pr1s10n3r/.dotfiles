-- Clipboard Hacking
vim.keymap.set({'n', 'x'}, 'cp', '"y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')
vim.keymap.set({'n', 'x'}, 'x', '"_x')

require('packer_init')
require('core/options')
require('core/keymaps')
require('core/theme')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')

