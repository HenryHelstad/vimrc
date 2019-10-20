runtime! debian.vim

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
"s 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

"Color schemes"
Plugin 'wmvanvliet/vim-blackboard'
Plugin 'szorfein/fromthehell.vim'
Plugin 'fortes/vim-escuro'
Plugin 'scottymoon/vim-chalkboard'
Plugin 'nanotech/jellybeans.vim'
Plugin 'kenwheeler/glow-in-the-dark-gucci-shark-bites-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/seoul256.vim'

Plugin 'itchyny/lightline.vim'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on

  "let g:seoul256_background = 236
  "colo seoul256
  colorscheme gruvbox "changes color scheme

endif

let g:gruvbox_contrast_dark = 'hard' "changes color scheme


"gets rid of weird text hilighting
hi Normal ctermbg=none 

hi NonText ctermbg=none


" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark"

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  set ts=4 sw=4 sts=4 "Sets tab size to 4 spaces
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=n		" Enable mouse usage (all modes)
map <C-o> :NERDTreeToggle<CR>
map <C-p> :BuffergatorToggle<CR>
map <C-D> :bnext<CR>
map <C-F> :bprev<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
