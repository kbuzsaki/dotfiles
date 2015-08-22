" Kyle Buzsaki
" kbuzsaki@ucsd.edu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                        " Disables vi compatability mode
let mapleader=","                       " leader key to ','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set rtp+=~/.vim/bundle/Vundle.vim       " set vundle runtime
call vundle#begin()                     " begin vundle block

Plugin 'gmarik/Vundle.vim'              " let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'         " does autocomplete for c++ and python
" Plugin 'davidhalter/jedi-vim'         " jedi vim handles python 3 better
Plugin 'othree/eregex.vim'              " does perl compatible regex
Plugin 'scrooloose/syntastic'           " does syntax checking

call vundle#end()                       " end vundle block

" YouCompleteMe config file
let g:ycm_global_ycm_extra_conf = '~/.global_ycm_extra_conf.py'

" Syntastic config
let g:syntastic_javascript_checkers = ['jshint']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Events
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" filetype detection[ON] plugin[ON] indent[ON]
filetype plugin indent on       

" Don't expand tabs for makefiles
autocmd FileType make setlocal noexpandtab

" Trim whitespace on save
autocmd BufWritePre *.py,*.html,*.css,*.js,*.go :%s/\s\+$//e

" not sure what these do
autocmd BufNewFile [Mm]akefile* set formatoptions=croql comments=:#
autocmd BufNewFile .vimrc,*.vim set formatoptions=croql comments=:\"
autocmd FileType c,cpp,java set mps+==:;

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256                            " enable 256 colors
syntax enable                           " enable syntax highlighting

" Prettify JSON files
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Markdown files
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END     

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a                             " enable mouse in all modes
set relativenumber                      " line numbers relative to cursor
set title                               " show file title at top of screen
set ruler                               " show row,col in the bottom row
set showmode                            " show the current mode at the bottom
set showmatch                           " highlight matching {}, [] or ()'s
set matchtime=2                         " 200 ms delay before showing match
set virtualedit=all                     " let cursor go beyond end of line
set nolist	                            " don't render tabs as \I or EOL as $
set splitbelow                          " open split windows below this window
set noincsearch                         " don't search until <return>
set hlsearch                            " highlight search matches
set showcmd                             " show the partial command as you type

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting / Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent                          " automatically indent
set smartindent                         " automatically do extra indentation 
set cindent                             " smarter indents for c-like languages
set tabstop=4                           " make tabs 4 spaces
set softtabstop=4                       " really make tabs 4 spaces?
set shiftwidth=4                        " make >> and << do 4 space increments
set shiftround                          " snap to mod 4 columns with << and >>
set expandtab                           " expand tabs to spaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Saving / History
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tabpagemax=100                      " increase maximum number of open tabs
set history=100                         " store last 100 ':' commands
set undolevels=100                      " save last 100 actions

set confirm                             " confirm exiting without saving
set noautoread                          " allow separate windows of same file
set nobackup                            " don't backup prev file on write
set noswapfile	                        " no intermediate file while saving
set nowritebackup                       " really no intermediate file?

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomple
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildchar=<Tab>                      " use tab to start autocomplete
set wildmenu                            " show options on autocomplete
set wildmode=list                       " list all matches when there are many
" file patterns to ignore when autocompleting
set wildignore=*.o,*.bak,*.data,*.class,*.pyc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Additional JSON prettifying?
" command PrettyJSON %!python -m json.tool               

