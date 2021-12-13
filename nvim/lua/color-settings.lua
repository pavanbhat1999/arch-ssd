vim.opt.termguicolors = true
vim.g.background = 'dark'
vim.cmd[[
colorscheme solarized8_flat
let g:Hexokinase_highlighters = [ 'backgroundfull' ]
hi signcolumn ctermbg=NONE guibg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi DiffAdd gui=NONE guifg=NONE guibg=green
hi DiffDelete gui=NONE guifg=NONE guibg=red
hi DiffChange gui=NONE guifg=NONE guibg=orange
]]
