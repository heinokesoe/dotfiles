-- Auto install plugin manager
local install_path = vim.fn.stdpath('config')..'/autoload/plug.vim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.cmd('echo "Downloading junegunn/vim-plug to manage plugins..."')
    vim.cmd('silent !mkdir -p '..vim.fn.stdpath('config')..'/autoload/')
    vim.cmd('silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > '..install_path)
    vim.cmd('autocmd VimEnter * PlugInstall')
end

-- Plugins
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'navarasu/onedark.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['nvim-treesitter#TSUpdate']})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'saadparwaiz1/cmp_luasnip'

vim.call('plug#end')
