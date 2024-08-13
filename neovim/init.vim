call plug#begin()
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'preservim/nerdtree'
call plug#end()

colorscheme catppuccin-mocha " catpuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

filetype plugin indent on

" show line numbers
set number

" no more shift for :
nnoremap ; :

" keep selection while indenting files
vnoremap > >gv
vnoremap < <gv

" copy to clipboard
noremap <space>y "+y
" paste from clipboard
noremap <space>p "+p
noremap <space>P "+P

set title
set visualbell           " don't beep
set noerrorbells         " don't beep

" No funny stuff. trailing spaces tabs etc
set listchars=tab:>~,nbsp:_,trail:.
set list

set expandtab       " space instead of tab

"" split vertical window
nnoremap <Leader>w <C-w>v<C-w>l
"" split horizontal window
nnoremap <Leader>s <C-w>s<C-w>j

"" qq to record q to stop Q to apply
nnoremap Q @q
vnoremap Q :norm @q<cr>

set pastetoggle=<Leader>]

nmap <Leader>6 :NERDTreeToggle<CR>

" vim.g.mapleader = "\\"
" -- vim.g.maplocalleader = " "
" 
" -- since : is shift+;, we can just use ;
" vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
" 
" 
" 
" -- copy paste from buffers
" -- vim.api.nvim_set_keymap('n', '<space>y', '"+y', { noremap = true, silent = true })
" -- vim.api.nvim_set_keymap('v', '<space>y', '"+y', { noremap = true, silent = true })
" -- vim.api.nvim_set_keymap('n', '<space>p', '"+p', { noremap = true, silent = true })
" -- vim.api.nvim_set_keymap('v', '<space>p', '"+p', { noremap = true, silent = true })
" -- vim.api.nvim_set_keymap('n', '<space>P', '"+P', { noremap = true, silent = true })
" -- vim.api.nvim_set_keymap('v', '<space>P', '"+P', { noremap = true, silent = true })
