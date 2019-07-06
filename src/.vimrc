set number
syntax on

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'craigemery/vim-autotag'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vwxyutarooo/nerdtree-devicons-syntax'
Plugin 'airblade/vim-gitgutter' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'alvan/vim-closetag'
call vundle#end()
filetype plugin indent on

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

" gruvbox
colorscheme gruvbox
set background=dark
highlight Normal ctermbg=none

" airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror

" jedi-vim
let g:jedi#completions_enabled=0

" javascript
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

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

