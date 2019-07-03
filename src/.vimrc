set number
syntax on

" filename in tmux pane title
autocmd BufWinEnter * let &titlestring=' ' . expand("%:t")
set title

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'shinchu/lightline-gruvbox.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vwxyutarooo/nerdtree-devicons-syntax'
Plugin 'airblade/vim-gitgutter' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'alvan/vim-closetag'
call vundle#end()
filetype plugin indent on

" vim-auto-save
let g:auto_save=1

" gruvbox
colorscheme gruvbox
set background=dark
highlight Normal ctermbg=none

" lightline-gruvbox
let g:lightline={}
let g:lightline.colorscheme='gruvbox'

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror

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

