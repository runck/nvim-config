let g:python_host_skip_check=1
let g:python3_host_skip_check=1
let g:python3_host_prog='C:\Code\Python\Python38\python.exe'
let g:python_host_prog='C:\Code\Python\Python38\python.exe'


" :PluginInstall
call plug#begin('$XDG_CONFIG_HOME\nvim\plugin_user')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
Plug 'ferrine/md-img-paste.vim'
Plug 'sirver/ultisnips'

call plug#end()
 
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

" 补全
" inoremap <silent><expr> <c-space> coc#refresh()
" 高亮
" autocmd CursorHold * silent call CocActionAsync('highlight')


" Plug 'ferrine/md-img-paste.vim' 
"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
let g:mdip_imgdir = 'pic' 
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
" F%i 光标跳到大小设置的位置
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nnoremap <silent> <leader><C-P> a<div align=\"center\"><img src=\"pic\" alt=\"Image\@" style=\"zoom:100%;\" /><\/div>F@xi


"设置tab键为触发键
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsListSnippets        = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger  = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
"设置文件目录
let g:UltiSnipsSnippetDirectories=[$XDG_CONFIG_HOME.'\nvim\snippets']
"设置打开配置文件时为垂直打开
let g:UltiSnipsEditSplit='vertical'

call UltiSnips#RefreshSnippets()
nnoremap <leader>sns :call UltiSnips#RefreshSnippets()<CR>



