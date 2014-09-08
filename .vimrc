set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'textobj-user'
Plugin 'textobj-indent'


Bundle 'mileszs/ack.vim'

Bundle 'severin-lemaignan/vim-minimap'

" use + to toggle booleans
Plugin 'Toggle'

Plugin 'git@github.com:mattn/flappyvird-vim.git'

Plugin 'https://github.com/rhysd/clever-f.vim'

Plugin 'git@github.com:Shougo/unite.vim.git'
Plugin 'git@github.com:kannokanno/unite-todo.git'

Plugin 'fugitive.vim'
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

Bundle 'groenewege/vim-less'
Plugin 'CtrlP.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'Solarized'

call vundle#end()            " required
filetype plugin indent on    " required

map <Leader>i :PluginInstall<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

map <Leader>gs :Gstatus<CR>
" use - to stage/unstange changes in git status window
" ctrl+n/p to navigate through files in git status window
map <Leader>gb :Gblame<CR>
map <Leader>gd :Git diff<CR>

syntax on

" scripts from http://vim-scripts.org/vim/scripts.html
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
set ttyfast         " smoother changes
set expandtab       " space instead of tab
set nowrap          " don't wrap lines, let them continue
set omnifunc=syntaxcomplete#Complete " set autocomplete

set pastetoggle=<Leader>]
nnoremap P "+p

" indent stuff
filetype indent on
map <Leader>f gg=G``
let g:html_indent_inctags = "html,body,head,tbody"

autocmd filetype python,coffee set expandtab

" reload .vimrc
map <Leader>v :source $MYVIMRC<CR>:CtrlPClearAllCaches<CR>
map <Leader>V :!ctags .<CR>

" make the 81st column stand out
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
set cursorline

" Highlight matches when jumping to next
set incsearch
set hlsearch

set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  " shiftwidth, not tabstop

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

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

nnoremap <Leader>C :!rake spec<CR>
nnoremap <Leader>c :!rspec %<CR>

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
" batch operations
nnoremap <Leader>b :bufdo execute "normal! @q"<CR>

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" theme
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
syntax on
let g:solarized_termcolors=16
let w:solarized_style="dark"
colorscheme solarized

highlight Comment cterm=bold
highlight vimLineComment cterm=bold
highlight htmlSpecialTagName cterm=bold
highlight MatchParen ctermbg=0 ctermfg=none

function! PasteAsCoffee()
  :read !xsel --clipboard --output | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()
