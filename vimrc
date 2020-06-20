set number "relativenumber
set nocompatible

set encoding=UTF-8

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set expandtab
set smartindent

syntax on

set hlsearch
set incsearch
set cursorline
set title
set completeopt=menuone

set textwidth=80
set colorcolumn=+1

" Plug install
if empty(glob('~/.vim/bundle'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/bundle')
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"    Plug 'valloric/youcompleteme'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'easymotion/vim-easymotion'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'puremourning/vimspector'
"	Plug 'octol/vim-cpp-enhanced-highlight'
    " Color theme
"    Plug 'morhetz/gruvbox'
call plug#end()

" Plugin settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:airline#extensions#xkblayout#enabled = 0

let g:Powerline_symbols='unicode'

let g:vimspector_enable_mappings='HUMAN'

" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_autoclose_preview_window_after_completion=0

" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1 " Disable by default
" let g:cpp_class_decl_highlight = 1 " Disable by default
" let g:cpp_posix_standard = 1 Disable by default
" let g:cpp_experimental_simple_template_highlight = 1 Disable by default
" let g:cpp_experimental_template_highlight = 1 you can use this option instead of the previous
" let g:cpp_concepts_highlight = 1 Disable by default
" let g:cpp_no_function_highlight = 1 Disable by default

" Key map
let g:mapleader=','

map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

ab #d #define
ab #i #include

" colorscheme gruvbox
