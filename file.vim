filetype on

" au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  setf markdown
" au BufNewFile,BufRead *.python,*.py  setf python

" autocmd! * <buffer>
" "\<bar>"

function! RunInBott(cmd)
	exec "update!"
	exec '!'.a:cmd
endfunction

function! RunInSyst(cmd)
	exec "update!"
	call system('start '.a:cmd)
endfunction

" function! RunInTerm(cmd)
	" exec "update!"
	" exec "sp"
	" exec "term ".a:cmd
" endfunction




" " terminal
" augroup my_terminal
    " autocmd! * <buffer>
	" autocmd TermOpen * nnoremap <buffer> <F6> :bdelete!<cr>
" augroup END

" python
augroup my_python
    au! * <buffer>
	au FileType python setlocal expandtab
	au FileType python noremap <buffer> <F5> :call RunInBott('python '.expand('%:p'))<cr>
	au FileType python noremap <buffer> <F6> :call RunInSyst('python '.expand('%:p'))<cr>
augroup END

" markdown
augroup my_markdown
    au! * <buffer>
	" au FileType markdown call ToggleInteractive()
	au FileType markdown noremap <buffer> <F5> :call RunInSyst('Typora.lnk '.expand('%:p'))<cr>
augroup END






" " 可以通过连续按下 ' C 或者 ' H 快速跳转回去
" autocmd BufLeave *.{c,cpp} mark C
" autocmd BufLeave *.h       mark H