set termguicolors
colorscheme solarized8_flat
set background=dark
let g:Hexokinase_highlighters = [ 'backgroundfull' ]
hi Normal guibg=NONE ctermbg=NONE
"set signcolumn=number
hi signcolumn ctermbg=NONE guibg=NONE
"Git Diff view colors
" hi DiffAdd gui=NONE guifg=NONE guibg=green
" hi DiffDelete gui=NONE guifg=NONE guibg=red
" hi DiffChange gui=NONE guifg=NONE guifg=orange
hi DiffAdd         ctermbg=4    guibg=#0B4207
hi DiffChange      ctermbg=5 guifg=orange guibg=#073642
hi DiffDelete      cterm=bold ctermfg=12 ctermbg=6 gui=bold guifg=#dc322f guibg=#420715
hi DiffText        ctermbg=9 guifg=#268bd2 guibg=#091A29
