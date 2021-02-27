" let g:localmapleader = "\<space>"
let g:mapleader = "\<space>"

" Win�����ĸ���ճ��
" source $VIMRUNTIME/mswin.vim
" if has("clipborad")
	" Cut
	vnoremap <M-Insert> "+x
	" Copy
	vnoremap <C-Insert> "+y
	" Paste and move curse
	noremap <S-Insert>		"+gP
	cnoremap <S-Insert>		<C-R>+
" endif


" init�ļ�����
noremap <leader>ini :source $MYVIMRC<CR>
" noremap <silent> <leader>ine :e! $MYVIMRC<CR>
" " ִ�����»���
" nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>


" " ����Ҽ��˵�
" nnoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>
" inoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>
" vnoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>gv

" ��������
let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  execute 'GuiFont! source\ Code\ Pro:h' . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a
" In normal mode, pressing ctrl + numpad's+ increases the font
noremap <C-kPlus> :call AdjustFontSize(1)<CR>
noremap <C-kMinus> :call AdjustFontSize(-1)<CR>
" In insert mode, pressing ctrl + numpad's+ increases the font
inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a
" command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
" command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')



" move another window
" call win_execute(win_getid(winnr('j')), "normal! \<C-E>")
" # last use
" NOT SUPPORT NOW FOR NEOVIM, TRY FUTURE
" noremap <c-w><c-e> :call win_execute(win_getid(winnr('#')), "normal! \\<c-e>")<cr>
" noremap <c-w><c-y> :call win_execute(win_getid(winnr('#')), "normal! \\<c-y>")<cr>


" ����
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" ����
nnoremap <silent><s-tab> :<<CR>
nnoremap <silent><tab>   :><CR>
vnoremap <silent><s-tab> :<gv<CR>
vnoremap <silent><tab>   :>gv<CR>

" " �����������
" inoremap <silent><c-5>  <c-o>%


" ��ǩҳ
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>tq :tabclose<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
" ���ļ����ϰ�gfʱ�����µ�tab�д�
nnoremap <leader>tgf :tabnew <cfile><cr>


" ���뵱ǰʱ��
func! GetTimeInfo()
    "return strftime('%Y-%m-%d %A %H:%M:%S')
    return strftime('%Y-%m-%d %H:%M:%S')
endfunction
inoremap <c-q>sj <C-r>=GetTimeInfo()<cr>


" �����ƶ���ǰ��
nnoremap <silent> <leader>[  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <silent> <leader>]  :<c-u>execute 'move +'. v:count1<cr>

" ������ӿ���
" nnoremap <silent> <leader>jj  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" nnoremap <silent> <leader>kk  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" ���ٱ༭�Զ����
nnoremap <leader>mc  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr>

" set filetype
nnoremap <leader>ftmd :set ft=markdown<CR>


" spelling check
" jumps to the previous spelling mistake [s, then picks the first suggestion 1z=, and then jumps back `]a. The <c-g>u in the middle make it possible to undo the spelling correction quickly.
"{i} <c-g>u start new undoable edit
inoremap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Toggle
nnoremap <silent> <Leader>S :set spell!<CR>

" update .add to .add.spl
function! s:MkSpellAll() abort
	for d in glob($XDG_CONFIG_HOME.'/nvim/spell/*.add', 1, 1)
		if filereadable(d) && (!filereadable(d . '.spl') || getftime(d) > getftime(d . '.spl'))
			" :silent exec 'mkspell! ' . fnameescape(d)
			exec 'mkspell! ' . fnameescape(d)
		endif
	endfor
endfunction
command! MkSpellAll call s:MkSpellAll()


