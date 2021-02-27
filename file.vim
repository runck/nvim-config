filetype on

" au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  setf markdown
" au BufNewFile,BufRead *.python,*.py  setf python

" python
augroup my_python
    autocmd! * <buffer>
	autocmd FileType python setlocal expandtab
	autocmd FileType python nnoremap <F5> :call BuildAndRun('python %')<cr>
augroup END

function! BuildAndRun(cmd)
	if &buftype ==# "terminal"
		execute "normal! :bdelete!\<cr>"
	else
		execute "normal! :sp\<cr>:term ".a:cmd."\<cr>"
	endif
endfunction



" " 可以通过连续按下 ' C 或者 ' H 快速跳转回去
" autocmd BufLeave *.{c,cpp} mark C
" autocmd BufLeave *.h       mark H