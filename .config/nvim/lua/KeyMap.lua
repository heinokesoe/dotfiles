-- Nvim-tree
vim.api.nvim_set_keymap( "n",   "<leader>n", ":NvimTreeToggle<CR>", {noremap = true})

-- Telescope
vim.api.nvim_set_keymap( "n",   "<leader>f", ":Telescope find_files<CR>", {noremap = true})

-- Nvim-Lsp-Installer
vim.api.nvim_set_keymap( "n",   "<leader>l", ":LspInstallInfo<CR>", {noremap = true})

-- LuaSnip
vim.api.nvim_set_keymap( "i",   "<Tab>",     "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap( "s",   "<Tab>",     "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap( "i",   "<S-Tab>",   "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap( "s",   "<S-Tab>",   "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap( "i",   "<C-E>",     "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap( "s",   "<C-E>",     "<Plug>luasnip-next-choice", {})

