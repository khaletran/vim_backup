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

"-------------------------------------------------------------------------------


"Adding a package matchit
"A package is a set of files that you can add to Vim. There are two kinds of
"packages: optional(using the command below: packadd!) and automatically loaded
"on startup.
"The Vim distribution comes with a few packages that you can optionally use. For
"example, the matchit plugin. This plugin makes the "%" command jump to matching
"HTML tags, if/else/endif in Vim scripts, etc. Very useful, although it's not
"backwards compatible (that's why it is not enabled by default).

"To start using the matchit plugin, add one line to vimrc file: packadd!
"matchit.


"More information about packages can be found at :help packages
packadd! matchit

"-------------------------------------------------------------------------------

"That's all! After restarting Vim you can find help about this plugin: :help
"matchit

"This works, because when :packadd loaded the plugin it also added the package
"directory in 'runtimepath', so that the help file can be found.

"You can find packages on the Internet in various places. It usually comes as an
"archive or as a repository. For an archive you can follow these steps:
"   1. create the package directory: 
"       mkdir -p ~/.vim/pack/fancy, in which "fancy" can be any name of your
"       liking. Ue one that describes the package.
"   2. unpack the archive in that directory. This assumes the top directory in
"   the archive is "start":
"       cd ~/.vim/pack/fancy
"       unxip /tmp/fancy.zip
