" " if has("termguicolors")
    " " " fix bug for vim
    " " set t_8f=^[[38;2;%lu;%lu;%lum
    " " set t_8b=^[[48;2;%lu;%lu;%lum
    " " enable true color
    " set termguicolors
	" set t_Co=256
" " endif

" syntax on
" " colorscheme monokai
" colorscheme monokai_local

" " need turn-off if using tmux
" let g:monokai_term_italic = 1
" let g:monokai_gui_italic = 1


" 当前行高亮
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline


