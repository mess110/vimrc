" Shortcuts:
"
" <Leader>v  - reload vim, generate ctags for searching, install plugins
" <Leader>6  - file explorer
" /          - search by highlight
" <Leader>r  - replace highlighted
" <Leader>f  - search file contents
" <Leader>e  - GoRun
" <Leader>t  - search buffers
" <Leader>p  - search by filename
" <Leader>c  - snippet suggestion
" <Leader>ww - swap windows around
" <Leader>mm - show minimap
" <Leader>mc - close minimap
" tab        - completes the current word
" qq         - define macro
" q          - end define macro
"
" scripts from http://vim-scripts.org/vim/scripts.html

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'szw/vim-ctrlspace'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'textobj-user'
Plugin 'textobj-indent'
Bundle 'mileszs/ack.vim'
Plugin 'Toggle'
Plugin 'https://github.com/rhysd/clever-f.vim'
Plugin 'fugitive.vim'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
Plugin 'Syntastic'
Plugin 'surround.vim'
Bundle 'https://github.com/JarrodCTaylor/vim-shell-executor'
Bundle 'repeat.vim'
Bundle 'https://github.com/tpope/vim-unimpaired.git'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'Solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/html5.vim'
Plugin 'fisadev/vim-isort'
Plugin 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Plugin 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plugin 'majutsushi/tagbar'
Bundle 'https://github.com/pseewald/nerdtree-tagbar-combined'
Plugin 'wesQ3/vim-windowswap'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
map <Leader>v :source $MYVIMRC<CR>:!ctags<CR><CR>:PluginInstall<CR>q<CR>

" use + to toggle booleans

" use cs"' to change from " to '
" cs change surrounding

" Git commands
"
"   - show status
"   - blame
"   - diff
"   - use '-' to stage/unstange changes in git status window
"   - ctrl+n/p to navigate through files in git status window
map <Leader>gs :Gstatus<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gd :Git diff<CR><CR>

set showtabline=0
" search open buffers
map <Leader>t :CtrlSpace<CR>
" search by filename
map <Leader>p :CtrlSpace O<CR>
set hidden " required for CtrlSpace

nmap <Leader>6 :ToggleNERDTreeAndTagbar<CR>
" Netrw options
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_liststyle = 3
let g:netrw_winsize = -28
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro rnu'  " --> I want line numbers on the netrw buffer
let NERDSpaceDelims=1
let NERDDefaultNesting=0

" <Leader>c for snippet suggestion
inoremap <Leader>c <C-x><C-o><C-p>

set pastetoggle=<Leader>]

" indent stuff
filetype indent on
map <Leader>F gg=G``
autocmd FileType json nnoremap<buffer> <leader>F :%!python -m json.tool<CR>
let g:html_indent_inctags = "html,body,head,tbody"

" File content search
nnoremap <Leader>f :Ack!<SPACE>
let g:ack_mappings = { "o": "<CR><C-W>j" }
" replace highlighted search
nnoremap <Leader>r :%s///g<LEFT><LEFT>
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" no more shift for :
nnoremap ; :

" keep selection while indenting files
vnoremap > >gv
vnoremap < <gv

set foldlevelstart=20
set foldmethod=indent

"" Adjust the highlighting
highlight Folded guibg=grey guifg=blue

"" Map folding to Spacebar
nnoremap <Space> za

nnoremap <Leader>n :nohlsearch<CR>

"" split vertical window
nnoremap <Leader>w <C-w>v<C-w>l
"" split horizontal window
nnoremap <Leader>s <C-w>s<C-w>j

"" qq to record q to stop Q to apply
nnoremap Q @q
vnoremap Q :norm @q<cr>

" batch operations
" I sometimes trigger this by mistake. Now it serves as an example
" nnoremap <Leader>b :bufdo execute "normal! @q"<CR>

" copy to clipboard
noremap <space>y "+y
" paste from clipboard
noremap <space>p "+p
noremap <space>P "+P

function! PasteAsCoffee()
  :read !xsel --clipboard --output | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()

let g:lightline = {
  \ 'colorscheme': 'solarized',
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

""" Look & Feel

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
set completeopt-=preview " don't open scratch pad

" File associations

autocmd filetype python,coffee set expandtab
autocmd filetype html setlocal ts=4 sw=4 expandtab
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufRead,BufNewFile *.jbuilder setfiletype ruby " jbuilder to ruby

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

augroup golang
  " vif - visual inner function to select the content of the function
  " vaf - visual around function to select the function, works from comment as
  " well
  set listchars=tab:\ \ ,nbsp:_,trail:.
  noremap <Leader>e :GoRun<CR>
augroup END
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

syntax on
let g:airline_solarized_bg='dark'
let g:solarized_termcolors=16
let w:solarized_style="dark"
set background=dark
colorscheme solarized

highlight DiffAdd            cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete         cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange         cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText           cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
highlight Comment            cterm=bold
highlight vimLineComment     cterm=bold
highlight htmlSpecialTagName cterm=bold
highlight MatchParen         ctermbg=0 ctermfg=none
highlight SpecialKey         term=bold ctermfg=11 gui=bold guifg=Yellow
