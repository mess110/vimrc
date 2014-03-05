filetype plugin on

set ls=2            " allways show status line
set tabstop=2       " numbers of spaces of tab character
set shiftwidth=2    " numbers of spaces to (auto)indent
set hls             " highlight searches
set ruler           " show the cursor position all the time
set number          " show line numbers
set title           " show title in console title bar
set ttyfast         " smoother changes
set expandtab       " space instead of tab
set nowrap          " don't wrap lines, let them continue

" <C-p>
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <Leader>p :CtrlP<CR>

" indent stuff
filetype indent on
map <Leader>f gg=G``

" map BufExplorere to F5
map <Leader>t :BufExplorer<CR>

" List contents of all registers (that typically contain pasteable text).
nnoremap <silent> "" :registers "*+.<CR>

" dir browser
map <Leader>6 :Explore<CR>
