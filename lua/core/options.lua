local g   = vim.g
local opt = vim.opt

-----------------
-- Core Editor --
-----------------
opt.mouse       = 'a'
opt.clipboard   = 'unnamedplus'
opt.swapfile    = false
opt.completeopt = 'menuone,noinsert,noselect'

----------------
-- Identation --
----------------
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.expandtab   = true
opt.smartindent = true

--------
-- UI --
--------
opt.number        = true
opt.hlsearch      = false
opt.wrap          = false
opt.colorcolumn   = '120'
opt.splitright    = true
opt.splitbelow    = true
opt.showmatch     = true
opt.foldmethod    = 'marker'
opt.termguicolors = true

------------
-- Search --
------------
opt.ignorecase = true
opt.smartcase  = true

-----------------------------
-- Disable Builtin Plugins --
-----------------------------
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
