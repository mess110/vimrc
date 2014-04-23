filetype plugin on
syntax on

set rtp+=~/.vim/bundle/vundle/set rtp+=~/.vim/bundle/vundle/
let g:vundle_default_git_proto = 'git'
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
map <Leader>i :PluginInstall<CR>

" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'CtrlP.vim'
map <Leader>p :CtrlP<CR>
nnoremap <Leader>. :CtrlPTag<CR>

Plugin 'bufexplorer.zip'
map <Leader>t :BufExplorer<CR>

" autocomplete with Ctrl+n

Plugin 'The-NERD-Commenter'
" <Leader>c<space>

Plugin 'The-NERD-tree'
map <Leader>6 :NERDTreeToggle<CR>

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" use tab or <Leader>\
inoremap <Leader>\ <C-x><C-o>

" use cs"' to change from " to '
" cs change surrounding
Plugin 'surround.vim'

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
set omnifunc=syntaxcomplete#Complete " set autocomplete

" indent stuff
filetype indent on
map <Leader>f gg=G``
let g:html_indent_inctags = "html,body,head,tbody"

" reload .vimrc
map <Leader>v :source $MYVIMRC<CR>:CtrlPClearAllCaches<CR>
map <Leader>V :!ctags .<CR>

" git
map <Leader>gs :!clear; git status<CR>
map <Leader>gc :!clear; git commit<CR>
map <Leader>gd :!clear; git diff<CR>
map <Leader>gg :!clear; git grep 
map <Leader>ga :!git add `git ls-files --modified`<CR>

" make the 81st column stand out
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Highlight matches when jumping to next
set incsearch
set hlsearch

" No funny stuff. trailing spaces tabs etc
set listchars=tab:>~,nbsp:_,trail:.
set list

" no more shift for :
nnoremap ; :

" execute the current file
nnoremap <Leader>e :!%:p<CR>

" keep selection while indenting files
vnoremap > >gv
vnoremap < <gv

set foldlevelstart=20
set foldmethod=indent

"" Adjust the highlighting
highlight Folded guibg=grey guifg=blue

"" Map folding to Spacebar
nnoremap <Space> za
