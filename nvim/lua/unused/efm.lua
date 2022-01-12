require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {{formatCommand = "lua-format -i --column-limit=200", formatStdin = true}}
        }
    }
}
