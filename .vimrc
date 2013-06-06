" ~/.vimrc (configuration file for vim only)
" skeletons
function! SKEL_spec()
    0r /usr/share/vim/current/skeletons/skeleton.spec
    language time en_US
    if $USER != ''
        let login = $USER
    elseif $LOGNAME != ''
        let login = $LOGNAME
    else
        let login = 'unknown'
    endif
    let newline = stridx(login, "\n")
    if newline != -1
        let login = strpart(login, 0, newline)
    endif
    if $HOSTNAME != ''
        let hostname = $HOSTNAME
    else
        let hostname = system('hostname -f')
        if v:shell_error
            let hostname = 'localhost'
        endif
    endif
    let newline = stridx(hostname, "\n")
    if newline != -1
        let hostname = strpart(hostname, 0, newline)
    endif
    exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
    exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
    exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
    setf spec
endfunction
autocmd BufNewFile	*.spec	call SKEL_spec()
" filetypes
filetype plugin on
filetype indent on

" my customizations

colorscheme darkblue
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

" indent stuff
filetype indent on
map <F4> gg=G``

" map NERDTree to F2
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" map BufExplorere to F3
map <F3> :BufExplorer<CR>

map <F5> :FufFile **/<CR>

" lines with width bigger than 81 get red background
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Ctrl+s to save
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" move lines, blocks up/down in different modes
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-down> :m .+1<CR>==

nnoremap <C-up> :m .-2<CR>==
nnoremap <C-k> :m .-2<CR>==

inoremap <C-j> <Esc>:m+<CR>==gi
inoremap <C-down> <Esc>:m+<CR>==gi

inoremap <C-k> <Esc>:m-2<CR>==gi
inoremap <C-up> <Esc>:m-2<CR>==gi

vnoremap <C-j> :m'>+<CR>gv=gv
vnoremap <C-down> :m'>+<CR>gv=gv

vnoremap <C-k> :m-2<CR>gv=gv
vnoremap <C-up> :m-2<CR>gv=gv

" ~/.vimrc ends here
