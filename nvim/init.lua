vim.cmd([[autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"]])
-- vim.cmd([[set guifont=FiraCode:h10]]) -- for firenvim
require("plugins")
require("defaults")
require("color-settings")
require("key-mappings")
-- Auto Complte  and lsp setup----------------------------------------------------------------------
require("cmp-config")
require("lsp/python-lsp")
require("lsp/bash-lsp")
require("lsp/lua-lsp")
-- require("efm")
require("null-ls-config")
require("autopairs")
-- Usefull Plugin setup-----------------------------------------------------------------------------
require("lua-line")
require("telescope-settings")
require("treesitter")
----------------------------------------------------------------------------------------------------
require("non-setup")
-- Need port of auto command from neovim
vim.cmd("source $HOME/.config/nvim/vim-scripts/auto-cmd.vim")
