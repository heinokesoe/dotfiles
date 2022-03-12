local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	vim.notify("nvim-lsp-installer is not found. Please install with :PlugInstall")
    return
end
-- Include the servers you want to have installed by default below
local servers = {
    "bashls",
    "clangd",
    "dockerls",
    "emmet_ls",
    "gopls",
    "sumneko_lua",
}

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found and not server:is_installed() then
        print("Installing " .. name)
        server:install()
    end
end
