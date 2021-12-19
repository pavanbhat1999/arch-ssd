vim.cmd[[autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"]]
vim.cmd('source $HOME/.config/nvim/vim-scripts/plugins.vim')--TODO:Think about changing package manager
require('defaults')
require("color-settings")
require("key-mappings")--TODO:Convert all mappings to lua standard
require("cmp-config")
require('lsp/python-lsp')
require("lsp/bash-lsp")
require("lsp/lua-lsp")
require("lua-line")
require("comment")
require("treesitter")
--require("efm")
-- Need port of auto command from neovim
vim.cmd('source $HOME/.config/nvim/vim-scripts/auto-cmd.vim')
