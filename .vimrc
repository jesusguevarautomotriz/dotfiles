" Store as ~/.vimrc (Unix) or ~/_vimrc (Windows, non-cygwin) 

set nocompatible             " Disable vi compatibility
                             " be iMproved, Vundle  required

" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
" " Make sure you use single quotes

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-crosshairs'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'

" All of your Plugins must be added before the following line
call plug#end()                " vim-plug required

" Put your non-Plugin stuff after this line


" Now we can turn our filetype functionality back on
filetype plugin indent on    " Vundle required

" ================ General Config ====================
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"Turns on line numbering.
:set number

:syntax enable

set encoding=utf-8           " The encoding displayed
set fileencoding=utf-8       " The encoding to file
set t_Co=256
                             " Fuente de la interfaz grafica   
set guifont=Lucida\ Console

"Wrap text after 72 characters
set textwidth=80

" Column 80 marker
highlight OverLength ctermbg=darkred ctermfg=white guibg=#660000
match OverLength /\%81v.\+/

"Highlights searches
:set hlsearch
:set incsearch

"Ignore case. Makes searching case insensitive
:set ignorecase
:set smartcase

"This makes Vim break text to avoid lines getting longer than 78
"characters.  "But only for files that have been detected to be plain
"text.  There are "actually two parts here.  "autocmd FileType text" is
"an autocommand.  This "defines that when the file type is set to "text"
"the following command is "automatically executed.  "setlocal
"textwidth=78" sets the 'textwidth' optio"n to 78, but only locally in
""one file.
:autocmd FileType text setlocal textwidth=80

"When enabled, the ruler is displayed on the right side of the status
"line at the bottom of the window. By default, it displays the line
"number, the column number, the virtual column number, and the relative
"position of the cursor in the file (as a percentage).
:set ruler

"Cursor tracking. Adding both the cursor line and column marking makes
"the cursor look like a crosshair, thus making it impossible to miss.
"Hacking VIM 7.2 Pagina 38.
:set cursorline
:set cursorcolumn

" Setting Vim cursorline colors? - Stack Overflow
" http://stackoverflow.com/questions/29167604/setting-vim-cursorline-colors
" Fecha de consulta: sábado, 18 de junio de 2016 14:37:43
":hi CursorColumn ctermfg=black ctermbg=green guibg=green
":hi CursorLine ctermfg=black ctermbg=green guibg=green
"
"Opciones copiadas del .vimrc de git bash
"cursor position all the time
" make the last line where the status is two lines deep so you can see status
" always
set laststatus=2

" make that backspace key work the way it should
set backspace=indent,eol,start

" show the current mode
set showmode

" whitespace - Tab key == 4 spaces and auto-indent after curly braces in Vim - Stack Overflow
" http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim
" Fecha de consulta: mié 13 jul 2016 23:52:31 VET

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" -----------------------------------------------------------------------------
" Plugins Configuration
" -----------------------------------------------------------------------------
" vim-airline
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif


" unicode symbols
  let g:airline_left_sep = '«'
  let g:airline_left_sep = '>'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '<'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '♠'
  let g:airline_symbols.linenr = '☺'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = '♥'
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '¥'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = '√'
  let g:airline_symbols.notexists = ' З⁄'
  let g:airline_symbols.whitespace = 'Ξ'

" Human readable Line number (with thousands separators)
function! MyLineNumber()
  return substitute(line('.'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g'). ' | '.
    \    substitute(line('$'), '\d\@<=\(\(\d\{3\}\)\+\)$', ',&', 'g')
endfunction

call airline#parts#define('linenr', {'function': 'MyLineNumber', 'accents': 'bold'})

let g:airline_section_z = airline#section#create(['%3p%%: ', 'linenr', ':%3v'])

" vim-markdown
" Do not require .md extensions for Markdown links
let g:vim_markdown_no_extensions_in_markdown = 1

" Disable Folding
let g:vim_markdown_folding_disabled = 1

" Every level will instead cycle between the valid list item markers *, - and +:
let g:vmt_cycle_list_item_markers = 0
let g:vmt_auto_update_on_save = 1


