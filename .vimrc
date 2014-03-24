filetype plugin on
syntax on

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

" reload .vimrc
map <Leader>v :source $MYVIMRC<CR>

" git
map <Leader>gs :!clear; git status<CR>
map <Leader>gc :!clear; git commit<CR>
map <Leader>gd :!clear; git diff<CR>

" make the 81st column stand out
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Highlight matches when jumping to next
set incsearch 
set hlsearch 

function! HLNext (blinktime)
  set invcursorline
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  set invcursorline
  redraw
endfunction

nnoremap <silent> n n:call HLNext(0.4)<cr>
nnoremap <silent> N N:call HLNext(0.4)<cr>

" No funny stuff. trailing spaces tabs etc
set listchars=tab:>~,nbsp:_,trail:.
set list

" no more shift for :
nnoremap ; :
