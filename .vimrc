"
""""""""""""""""""""""""""""""""""""""""
"
"  HIGHLIGHTING
"
syntax on
"se cursorline
se listchars=tab:▸\ ,trail:□,eol:¬

"
""""""""""""""""""""""""""""""""""""""""
"
"  ENVIRONMENT
"
se enc=utf8
se bs=2
se ff=unix
se ffs=unix
se nocompatible
se hidden
se nobackup
se dir=/tmp,/var/tmp
se autoread
se nu
se vb
se ch=1
se laststatus=2
se nosmd
se mousehide
se ttyfast
se autoindent
se copyindent
se smartindent
se smarttab
se nolist
se nofoldenable
se backspace=indent,eol,start
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*cache,*/logs,*/web/bundles,.DS_Store


""""""""""""""""""""""""""""""""""""""""
"
"  SEARCH
"
se incsearch
se hlsearch
se showmatch
se ignorecase
se smartcase
se gdefault

"
""""""""""""""""""""""""""""""""""""""""
"
"  TABS
"
se tabstop=4
se shiftwidth=4
se expandtab
se softtabstop=4
se showtabline=1

"
""""""""""""""""""""""""""""""""""""""""
"
"  AUTOCOMPLETION
"
se wcm=<Tab>
se wildmenu
se wildmode=list:longest

"
""""""""""""""""""""""""""""""""""""""""
"
"  WRAPPING
"
"se wrap linebreak
"se textwidth=100
"se colorcolumn=100
"se formatoptions=qrn1
"se formatprg=par
"se formatoptions+=tca

"
""""""""""""""""""""""""""""""""""""""""
"
"  PHP
"
map <leader>u :call PhpInsertUse()<cr>
"nmap <c-p>   :call PhpDocSingle()<cr>
"nmap <c-p>   :call PhpDocRange()<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  PHP CS FIXER
"
let g:php_cs_fixer_path = "~/git/php-cs-fixer.phar"

"
""""""""""""""""""""""""""""""""""""""""
"
"  BEHAT
"
let feature_filetype='behat'
