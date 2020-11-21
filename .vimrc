"Set nocommpatible Vi and Vim
set nocompatible
"-------------------------------------------------------------------------------

"Using backspace to delete the character in front of the cursor when Insert mode
set backspace=indent,eol,start

"-------------------------------------------------------------------------------

"Always display the current cursor position in the lower right corner of the Vim
"window
set ruler

"-------------------------------------------------------------------------------

"Display an incomplete command in the lower right corner of the Vim window, left
"of the ruler
set showcmd

"-------------------------------------------------------------------------------

"Set textwidth maximum 80
set textwidth=80

"-------------------------------------------------------------------------------

"Display completion matches in a status line. That is when you type <Tab> and
"there is more than one match
set wildmenu

"-------------------------------------------------------------------------------

"This makes typing Esc take effect more quickly
set ttimeout
set ttimeoutlen=100

"-------------------------------------------------------------------------------

"Show @@@ in the last line if it is truncated, instead of hiding the whole line
set display=truncate

"-------------------------------------------------------------------------------

"Display the match for a search pattern when halfway typing it
set incsearch

"-------------------------------------------------------------------------------

"Enable highlighting files in color
syntax on

"-------------------------------------------------------------------------------

"Filetype detection, using filetype plugin files, using indent files
filetype plugin indent on

"-------------------------------------------------------------------------------
"Tabstop is how many columns of whitespace is a \t character worth (when typing
"\t in a file)
set tabstop=8

"-------------------------------------------------------------------------------
"Softabstop is how many columns of whitespace is a "tab" keystroke or a
""backspace" keystroke worth (when press keyboard)
set softtabstop=4

"-------------------------------------------------------------------------------

"Shiftwidth is how many columns of whitespace a "level of indentation" is worth.
set shiftwidth=4

"-------------------------------------------------------------------------------

"Setting expandtab means that "tab" keystroke will be expanded into spaces
"(which means using "h" or "l" to move cursor between tabs available)
set expandtab

"-------------------------------------------------------------------------------

"Set number
set number
