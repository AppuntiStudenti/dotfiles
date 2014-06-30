runtime bundle/pathogen.vim/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set wildmode=longest,full
set wildignore=.svn,.git
set comments=sr:/*,mb:*,ex:*/

set incsearch
set hlsearch

set nopaste

" Remove any trailing whitespace that is in the file
autocmd BufWrite * if ! &bin | :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")')) | endif

" Shows trailing spaces and tabs
set list listchars=tab:»·,trail:·
set showbreak=↪
