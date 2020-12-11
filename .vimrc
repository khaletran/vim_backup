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

"--------------------
"- Adding a package -
"--------------------

"A package is a set of files that you can add to Vim. There are two kinds of
"packages: optional(using the command below: packadd!) and automatically loaded
"on startup.
"The Vim distribution comes with a few packages that you can optionally use. For
"example, the matchit plugin. This plugin makes the "%" command jump to matching
"HTML tags, if/else/endif in Vim scripts, etc. Very useful, although it's not
"backwards compatible (that's why it is not enabled by default).

"To start using the matchit plugin, add one line to vimrc file: packadd!
"matchit.

"That's all! After restarting Vim you can find help about this plugin: :help
"matchit

"This works, because when :packadd loaded the plugin it also added the package
"directory in 'runtimepath', so that the help file can be found.

"You can find packages on the Internet in various places. It usually comes as an
"archive or as a repository. For an archive you can follow these steps:
"   1. create the package directory: 
"           mkdir -p ~/.vim/pack/fancy, in which "fancy" can be any name of your
"       liking. Ue one that describes the package.
"   2. unpack the archive in that directory. This assumes the top directory in
"   the archive is "start":
"           cd ~/.vim/pack/fancy
"           unzip /tmp/fancy.zip
"       If the archive layout is different make sure that you end up with a path
"       like this:
"           ~/.vim/pack/fancy/start/fancytext/plugin/fancy.vim
"       Here "fancytext" is the name of the package, it can be anything else. 
"   
"More information about packages can be found at :help packages

"-------------------------------------
"| Installing plugins using packages |
"-------------------------------------

"vimcasts.org/episodes/packages/

"Packages are a new feature in version 8 of Vim. We can see how we can use
"packages to easily install Vim plugins. The process will be familiar if you've
"used pathogen before.

"It's easy to confuse the terms package and plugin, so let's start by defining
"the terminology: A plugin is a directory containing one or more scripts. A
"package is a directory containing one or more plugins.

"What's a Plugin?

"A plugin is a directory containing one or more scripts (usually with
"documentation). The purpose of a plugin is to add new functionality to Vim, or
"to modify Vim's existing functionality. A demo-plugin containing one script and
"an accompanying documentation file might look like this:

"demo-plugin
"|--doc
"|  |--demo.txt
"|--plugin
"   |--demo.vim

"To install this plugin, you would add the top-level demo-plugin directory to
"Vim's runtimepath. You could manipulate the runtimepath by hand:

"set runtimepath+=~/.vim/arbitrary/demo-plugin

"Vim has supported plugins since version 6, but until recently there was no
"convenient way of managing the runtimepath. You had to do it by hand, or you
"had to install a plugin such as pathogen to automate the runtimepath
"management. With version 8, Vim released thet packages feature to fill this
"gap.

"What's a Package?

"A package is a directory that contains one or more plugins. When you organize
"your plugins in a package, Vim can automatically add those plugins to your
"runtimepath on startup.
packadd! matchit
