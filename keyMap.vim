" let g:localmapleader = "\<space>"
let g:mapleader = "\<space>"

" Win交互的复制粘贴
" source $VIMRUNTIME/mswin.vim
" if has("clipborad")
	" Cut
	vnoremap <M-Insert> "+x
	" Copy
	vnoremap <C-Insert> "+y
	" Paste
	noremap <S-Insert>		"+gP
	cnoremap <S-Insert>		<C-R>+
" endif


" init文件重载
nnoremap <silent> <leader>ins :source $MYVIMRC<CR>
nnoremap <silent> <leader>ine :e! $MYVIMRC<CR>
" " 执行重新绘制
" nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>


" 鼠标右键菜单
nnoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>
inoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>
vnoremap <RightMouse> <Cmd>call GuiShowContextMenu()<CR>gv


" 字体缩放
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

" 上下
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" 缩进
nnoremap <silent><s-tab> :<<CR>
nnoremap <silent><tab>   :><CR>
vnoremap <silent><s-tab> :<gv<CR>
vnoremap <silent><tab>   :>gv<CR>


" 标签页
noremap <leader>tt :tabnew<cr>
noremap <leader>tq :tabclose<cr>
noremap <leader>tn :tabnext<cr>
noremap <leader>tp :tabprevious<cr>
" 在文件名上按gf时，在新的tab中打开
noremap <leader>tgf :tabnew <cfile><cr>


" 插入当前时间
func! GetTimeInfo()
    "return strftime('%Y-%m-%d %A %H:%M:%S')
    return strftime('%Y-%m-%d %H:%M:%S')
endfunction
inoremap <leader><F5> <C-r>=GetTimeInfo()<cr>


" 快速移动当前行
nnoremap <silent> <leader>[  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <silent> <leader>]  :<c-u>execute 'move +'. v:count1<cr>

" 快速添加空行
" nnoremap <silent> <leader>jj  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
" nnoremap <silent> <leader>kk  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" 快速编辑自定义宏
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr>


nnoremap <leader>sf :set filetype=
nnoremap <leader>sfmd :set filetype=markdown<CR>
