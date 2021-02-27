let g:python_host_skip_check=1
let g:python3_host_skip_check=1
let g:python3_host_prog='C:\Code\Python\Python38\python.exe'
let g:python_host_prog='C:\Code\Python\Python38\python.exe'


" :PluginInstall
call plug#begin('$XDG_CONFIG_HOME\nvim\plugin_user')
Plug 'crusoexia/vim-monokai'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sirver/ultisnips'

" Plug 'scrooloose/nerdtree'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://zhuanlan.zhihu.com/p/84773275
" Plug 'godlygeek/tabular' "±ØÒª²å¼ş£¬°²×°ÔÚvim-markdownÇ°Ãæ
" Plug 'plasticboy/vim-markdown'
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'ferrine/md-img-paste.vim'
" Plug 'iamcco/markdown-preview.nvim'
" mathjax-support-for-mkdp


" Plug 'lervag/vimtex'
call plug#end()


set termguicolors
set t_Co=256
syntax on
colorscheme monokai
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1


let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1


" Plug 'scrooloose/nerdcommenter'
" <leader>ci


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
autocmd FileType markdown nnoremap <silent> <c-P> :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nnoremap <silent> <leader><C-P> a<div align=\"center\"><img src=\"pic\" alt=\"Image\@" style=\"zoom:100%;\" /><\/div>F@xi



" Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsListSnippets        = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger  = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"ÉèÖÃÎÄ¼şÄ¿Â¼
let g:UltiSnipsSnippetDirectories=[$XDG_CONFIG_HOME.'\nvim\snippets']
"ÉèÖÃ´ò¿ªÅäÖÃÎÄ¼şÊ±Îª´¹Ö±´ò¿ª
let g:UltiSnipsEditSplit='vertical'

call UltiSnips#RefreshSnippets()
nnoremap <leader>snp :call UltiSnips#RefreshSnippets()<CR>



