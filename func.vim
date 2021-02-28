" ���뵱ǰʱ��
func! GetTimeInfo()
    "return strftime('%Y-%m-%d %A %H:%M:%S')
    return strftime('%Y-%m-%d %H:%M:%S')
endfunction
inoremap <c-q>sj <C-r>=GetTimeInfo()<cr>


" ������Ӧ��Э��
function! ToggleInteractive()
    if !exists('#InteractiveGroup#BufEnter')
		setlocal autoread
        augroup InteractiveGroup
            autocmd!
			au FocusGained,BufEnter <buffer> :silent! !  "trigger reload	
			au TextChanged,InsertLeave <buffer> if &readonly == 0 | silent write | endif
			" au FocusLost,WinLeave * :silent! noautocmd w   "do not trig other auto
        augroup END
		echo 'Interactive ON'
    else
		setlocal noautoread
        augroup InteractiveGroup
            autocmd!
        augroup END
		echo 'Interactive OFF'
    endif
endfunction
nnoremap <F4> :call ToggleInteractive()<CR>



