vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = false
vim.bo.expandtab = true -- deault is false cant use with single spaces
vim.bo.tabstop = 4 -- default spaces when tab is pressed
vim.bo.softtabstop = 4  -- backspace behaviour
vim.bo.shiftwidth = 4  -- moving usinf >> <<
--vim.opt.smarttab = false -- smart tab overrides backspace behaviour
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.api.nvim_command("set noswapfile")
--vim.g.no_swapfile = 1
vim.api.nvim_command("set nobackup")
--vim.g.no_backup = 1
vim.opt.undodir = ".cache/nvim/undo"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.exrc = true
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.hidden = true
vim.opt.updatetime = 100
--for cross os files
--vim.g.nofixendofline = true
--vim.api.nvim_command("set nofixendofline")
vim.opt.scrolloff = 18
vim.opt.signcolumn = "auto"
