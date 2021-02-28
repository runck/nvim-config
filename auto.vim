augroup my_final_auto
	autocmd!
	
	" 当前行高亮
	autocmd InsertLeave,WinEnter * set cursorline
	autocmd InsertEnter,WinLeave * set nocursorline
	
augroup END


