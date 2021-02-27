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

" ²¹È«
" inoremap <silent><expr> <c-space> coc#refresh()
" ¸ßÁÁ
" autocmd CursorHold * silent call CocActionAsync('highlight')


" Plug 'ferrine/md-img-paste.vim' 
"ÉèÖÃÄ¬ÈÏ´¢´æÎÄ¼ş¼Ğ¡£ÕâÀï±íÊ¾´¢´æÔÚµ±Ç°ÎÄµµËùÔÚÎÄ¼ş¼ĞÏÂµÄ'pic'ÎÄ¼ş¼ĞÏÂ£¬Ïàµ±ÓÚ ./pic/
let g:mdip_imgdir = 'pic' 
"ÉèÖÃÄ¬ÈÏÍ¼Æ¬Ãû³Æ¡£µ±Í¼Æ¬Ãû³ÆÃ»ÓĞ¸ø³öÊ±£¬Ê¹ÓÃÄ¬ÈÏÍ¼Æ¬Ãû³Æ
let g:mdip_imgname = 'image'
"ÉèÖÃ¿ì½İ¼ü£¬¸öÈËÏ²»¶ Ctrl+p µÄ·½Ê½£¬±È½ÏÖ±¹Û
" F%i ¹â±êÌøµ½´óĞ¡ÉèÖÃµÄÎ»ÖÃ
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nnoremap <silent> <leader><C-P> a<div align=\"center\"><img src=\"pic\" alt=\"Image\@" style=\"zoom:100%;\" /><\/div>F@xi


"ÉèÖÃtab¼üÎª´¥·¢¼ü
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsListSnippets        = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger  = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
"ÉèÖÃÎÄ¼şÄ¿Â¼
let g:UltiSnipsSnippetDirectories=[$XDG_CONFIG_HOME.'\nvim\snippets']
"ÉèÖÃ´ò¿ªÅäÖÃÎÄ¼şÊ±Îª´¹Ö±´ò¿ª
let g:UltiSnipsEditSplit='vertical'

call UltiSnips#RefreshSnippets()
nnoremap <leader>sns :call UltiSnips#RefreshSnippets()<CR>



