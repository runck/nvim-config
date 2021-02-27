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

" ��ȫ
" inoremap <silent><expr> <c-space> coc#refresh()
" ����
" autocmd CursorHold * silent call CocActionAsync('highlight')


" Plug 'ferrine/md-img-paste.vim' 
"����Ĭ�ϴ����ļ��С������ʾ�����ڵ�ǰ�ĵ������ļ����µ�'pic'�ļ����£��൱�� ./pic/
let g:mdip_imgdir = 'pic' 
"����Ĭ��ͼƬ���ơ���ͼƬ����û�и���ʱ��ʹ��Ĭ��ͼƬ����
let g:mdip_imgname = 'image'
"���ÿ�ݼ�������ϲ�� Ctrl+p �ķ�ʽ���Ƚ�ֱ��
" F%i ���������С���õ�λ��
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
" autocmd FileType markdown nnoremap <silent> <leader><C-P> a<div align=\"center\"><img src=\"pic\" alt=\"Image\@" style=\"zoom:100%;\" /><\/div>F@xi


"����tab��Ϊ������
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsListSnippets        = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger  = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
"�����ļ�Ŀ¼
let g:UltiSnipsSnippetDirectories=[$XDG_CONFIG_HOME.'\nvim\snippets']
"���ô������ļ�ʱΪ��ֱ��
let g:UltiSnipsEditSplit='vertical'

call UltiSnips#RefreshSnippets()
nnoremap <leader>sns :call UltiSnips#RefreshSnippets()<CR>



