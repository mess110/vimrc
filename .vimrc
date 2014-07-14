set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/set rtp+=~/.vim/bundle/vundle/
let g:vundle_default_git_proto = 'git'
call vundle#rc()

" alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
map <Leader>i :PluginInstall<CR>

Plugin 'textobj-user'
Plugin 'textobj-indent'

Bundle 'mileszs/ack.vim'

Plugin 'git@github.com:mattn/flappyvird-vim.git'

" git
Plugin 'fugitive.vim'
map <Leader>gs :Gstatus<CR>
" use - to stage/unstange changes in git status window
" ctrl+n/p to navigate through files in git status window
map <Leader>gb :Gblame<CR>
map <Leader>gd :Gdiff<CR>

Bundle 'kchmck/vim-coffee-script'
Plugin 'bufexplorer.zip'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Plugin 'Syntastic'
" use cs"' to change from " to '
" cs change surrounding
Plugin 'surround.vim'

filetype plugin indent on
syntax on

" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'CtrlP.vim'
map <Leader>p :CtrlP<CR>
nnoremap <Leader>. :CtrlPTag<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

map <Leader>t :BufExplorer<CR>

map <Leader>6 :NERDTreeToggle<CR>

" use tab or <Leader>\ for snippet suggestion
inoremap <Leader>\ <C-x><C-o>

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

nnoremap <Leader>c :!rake spec<CR>

nnoremap <Leader>n :nohlsearch<CR>

nnoremap <C-j> <C-W>j "Ctrl-j to move down a split
nnoremap <C-k> <C-W>k "Ctrl-k to move up a split
nnoremap <C-l> <C-W>l "Ctrl-l to move right a split
nnoremap <C-h> <C-W>h "Ctrl-h to move left a split

nnoremap <leader>s :w<cr>
"" works in insert as well
inoremap <leader>s <C-c>:w<cr>

"" qq to record q to stop Q to apply
nnoremap Q @q
vnoremap Q :norm @q<cr>

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" theme
Plugin 'itchyny/lightline.vim'
let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component': {
  \   'readonly': '%{&filetype=="help"?"":&readonly?"read-only":""}',
  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
  \ },
  \ 'component_visible_condition': {
  \   'readonly': '(&filetype!="help"&& &readonly)',
  \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ }
  \ }
Plugin 'Solarized'
syntax on
let g:solarized_termcolors=16
let w:solarized_style="dark"
colorscheme solarized
" no idea why this is needed but this fixes Comment color
highlight Comment cterm=bold

set cursorline
