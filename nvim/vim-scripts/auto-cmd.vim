" Persist cursor
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
"TODO: add this feature for
"find root of the project
" function! s:find_git_root()
"   return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
" endfunction
" command! ProjectFiles execute 'cd' s:find_git_root()
"map <C-p> :ProjectFiles<CR>
" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
"autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR><C-W>
"LSP autoformat-------------------------------------------------------------------------------------
"TODO :Make Formating for other languages-----------------------------------------------------------
augroup FormatCode
    autocmd!
    " autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
    " autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
    " autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
    " autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
augroup END
"---------------------------------------------------------------------------------------------------
" restore cursor shape after exit
"augroup RestoreCursorShapeOnExit
    "autocmd!
    "autocmd VimLeave * set guicursor=a:ver20
"augroup END
"Autocmd for source init.vim----------------------------------------------------
"Auto cmd for java
autocmd BufWritePost *.java !javac %
"Autocmd for g++
autocmd BufWritePost *11.cpp !g++ % -lGL -lcrypto -lglut -lGLU &&  ./a.out
"autocmd filetype cpp nnoremap <f5> :w <bar> !g++ % -lcrypto -lGL -lglut -lGLU -o %:r && ./%:r <cr>
"Autocmd for latex
autocmd BufWritePost *.tex !pdflatex %
" Auto  for permission for shell script
command! Perm !sudo chmod +x %
"-------------------------------------------------------------------------------
