set number
syntax on

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Townk/vim-autoclose'
Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
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

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror

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

" vim-javascript
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

