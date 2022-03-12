local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
	vim.notify("nvim-autopairs is not found. Please install with :PlugInstall")
    return
end

autopairs.setup {
    fast_wrap = {
        map = "<M-e>",
        chars = { "{", "[", "(", '"', "'" },
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
        offset = 0, -- Offset from pattern match
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "PmenuSel",
        highlight_grey = "LineNr",
    },
}
