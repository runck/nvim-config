set nocompatible
set mouse=a


set encoding=utf-8
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8
" set termencoding=gbk
set fileencoding=utf-8
set fileformat=unix


" 数据文件路径
if !isdirectory($XDG_DATA_HOME.'/nvim') && exists('*mkdir')
  call mkdir($XDG_DATA_HOME.'/nvim')
endif
" 备份文件
set backup
set backupdir   =$XDG_DATA_HOME/nvim/backup/
set backupext   =~vimbackup
set backupskip  =
" 交换文件
set directory   =$XDG_DATA_HOME/nvim/swap/
set updatecount =10
" 撤销文件
set undofile
set undodir     =$XDG_DATA_HOME/nvim/undo/
" viminfo 文件
set viminfo     ='100,f1,<500,n$XDG_DATA_HOME/nvim/info/viminfo'

" 设定文件浏览器目录为当前目录
set bsdir=buffer
" 自动切换到文件当前目录
set autochdir


set nu
set wrap
set linebreak
" 可跨行操作定义
set whichwrap=b,s,<,>,[,]
" 可在空白上移动
" set virtualedit=all


set shiftwidth=4
set tabstop=4


" 可能命令按键等待
set timeout           " for mappings
set timeoutlen=500    " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value


" 减少补全扫描的文件数量
" set complete-=i   " disable scanning included files
" set complete-=t   " disable searching tags

" spelling check
" It ba­si­cal­ly jumps to the pre­vi­ous spelling mis­take [s, then picks the first sug­ges­tion 1z=, and then jumps back `]a. The <c-g>u in the middle make it possible to undo the spelling correction quickly.
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
