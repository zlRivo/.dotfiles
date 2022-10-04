vim.opt.encoding = "utf-8"

-- Load plugins
local plugins = lua require('plugins')

-- ---------------------------
-- EASIER KEY MAPPING
-- ---------------------------

function map(mode, shortcut, command)
    vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

function vmap(shortcut, command)
    map('v', shortcut, command)
end

-- ----------------------------
-- BINDINGS
-- ----------------------------

-- Copy to end of line
nmap("Y", "y$")

-- Move text
vmap("J", ":m '>+1<CR>gv=gv")
vmap("K", ":m '<-2<CR>gv=gv")

-- Leader key
vim.g.mapleader = " "
nmap("<SPACE>", "<NOP>")

-- Navigate between windows
map("n", "<Leader><Leader>", "<C-w><C-w>")

-- Navigate between buffers
map("", "H", ":BufferLineCyclePrev<CR>")
map("", "L", ":BufferLineCycleNext<CR>")

-- Delete current buffer
map("", "<Leader>d", "Bdelete")

-- Clear search highlighting
nmap("<BS><BS>", ":noh<CR>")

-- Escape key
require('better-escape-setup')

-- Resize buffers
map("", "-", "<C-W>-")
map("", "+", "<C-W>+")

-- Autoclosing brackets
imap("{<CR>", "{<CR>}<ESC>O");
imap("{;<CR>", "{<CR>};<ESC>O");

-- Dont unselect when indenting
vmap(">", "><CR>gv4<Right>")
vmap("<", "<<CR>gv4<Left>")

-- Quickly insert an empty new line without entering insert mode
nmap("<Leader>o", "o<Esc><Up>")
nmap("<Leader>O", "O<Esc><Down>")

-- Fuzzy finder
nmap("<C-p>", ":Telescope find_files<CR>")

-- Nvim tree
nmap("<C-n>", ":NvimTreeToggle<CR>")

-- LSP Bindings
nmap("gd", ":lua vim.lsp.buf.definition()<CR>")
nmap("gD", ":lua vim.lsp.buf.declaration()<CR>")
nmap("gi", ":lua vim.lsp.buf.implementation()<CR>")
nmap("gw", ":lua vim.lsp.buf.document_symbol()<CR>")
nmap("gw", ":lua vim.lsp.buf.workspace_symbol()<CR>")
nmap("gr", ":lua vim.lsp.buf.references()<CR>")
nmap("gt", ":lua vim.lsp.buf.type_definition()<CR>")
nmap("K", ":lua vim.lsp.buf.hover()<CR>")
nmap("<Leader>k", ":lua vim.lsp.buf.signature_help()<CR>")
nmap("<Leader>af", ":lua vim.lsp.buf.code_action()<CR>")
nmap("<Leader>rn", ":lua vim.lsp.buf.rename()<CR>")

-- ---------------------------
-- GENERAL SETTINGS
-- ---------------------------

local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if it doesn't exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Make current directory use opened file direcory
vim.cmd("autocmd BufEnter * lcd %:p:h")

-- Use system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Enable mouse support
vim.cmd("set mouse=a")

-- Cursor margin for scrolling
vim.opt.so = 4

--  Make backspace work ----------------------------- /!\
-- vim.opt.backspace:prepend {"indent,eol,start"}
vim.cmd("set backspace=indent,eol,start")

-- Make splits go below
vim.opt.splitbelow = true

-- No line break when too much text
-- vim.opt.wrap = false

-- Disable swap/backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Show line count
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight current line
vim.opt.cursorline = true

-- Highlight search results
vim.opt.hlsearch = true

-- Ignore case in search
vim.opt.ignorecase = true

-- Show search results as you type
vim.opt.incsearch = true

-- Toggle between paste mode
vim.cmd("set pastetoggle=<F2>")

-- Tab space
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Show completion hint
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- ---------------------------
-- LSP CONFIGURATION + Treesitter
-- ---------------------------

-- Treesitter
local configs = require'nvim-treesitter.configs'
configs.setup {
    ensure_installed = {"c", "rust", "lua", "bash", "java"},
    highlight = { -- enable highlighting
        enable = true,
    },
    indent = {
        enable = false, -- default is disabled anyways
    }
}

-- LSP config setup
require('nvim-lspconfig-setup')

-- Completion
require('nvim-cmp-setup')

-- ---------------------------
-- APPEARANCE
-- ---------------------------

-- Color scheme
vim.cmd("colorscheme wal")
vim.cmd("hi Comment cterm=italic")

-- Remove signcolumn gray
vim.cmd("hi clear SignColumn")

-- Highlighting menu
vim.cmd("hi Pmenu ctermbg=0 ctermfg=8")

-- Airline
vim.opt.laststatus = 2
vim.g.airline_theme = "onedark"
vim.g.airline_powerline_fonts = 1
-- Airline symbols
if vim.api.nvim_eval('exists("g:airline_symbols")') == "1" then
    vim.g.airline_symbols = {}
end
-- Separators
vim.g.airline_left_sep = ""
vim.g.airline_left_alt_sep = ""
vim.g.airline_right_sep = ""
vim.g.airline_right_alt_sep = ""

-- Nvim tree
require('nvim-tree-setup')

-- Top buffer tabs
vim.opt.termguicolors = true
-- require("bufferline").setup{}
require("bufferline-setup")
