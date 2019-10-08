set number
highlight Normal ctermbg=none

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'vim-scripts/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'craigemery/vim-autotag'
Plug 'majutsushi/tagbar'
" Plug 'morhetz/gruvbox' "<-- choose theme
Plug 'cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'airblade/vim-gitgutter' 
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'davidhalter/jedi-vim'
Plug 'plytophogy/vim-virtualenv'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'alvan/vim-closetag'
call plug#end()

" ctrl-space
set hidden
let g:CtrlSpaceLoadLastWorkspaceOnStart=1
let g:CtrlSpaceSaveWorkspaceOnSwitch=1
let g:CtrlSpaceSaveWorkspaceOnExit=1

" vim-tmux-navigator
let g:NERDTreeMapJumpNextSibling="▾"
let g:NERDTreeMapJumpPrevSibling="▴"

" vim-auto-save
let g:auto_save=1

" theme
" colorscheme gruvbox "<-- pick theme
set background=dark

" vim-airline
let g:airline_theme='minimalist' "<-- pick theme
let left_sep="\uE0B0"
let right_sep="\uE0B2"
let g:airline_powerline_fonts=1
let g:airline_left_sep=left_sep
let g:airline_right_sep=right_sep
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=left_sep
let g:airline#extensions#tabline#right_sep=right_sep

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" vim-closetag
let g:closetag_filenames='*.html,*.xhtml,*.phtml,*.jsx,*.js'
let g:closetag_xhtml_filenames='*.html,*.xhtml,*.phtml,*.jsx,*.js'
let g:closetag_filetypes='*.html,*.xhtml,*.phtml,*.jsx,*.js'
let g:closetag_xthml_filtypes='*.html,*.xhtml,*.phtml,*.jsx,*.js'
let g:closetag_emptyTags_caseSensitive=1
let g:closetag_regions={
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

