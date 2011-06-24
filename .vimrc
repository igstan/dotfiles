set number
syntax on

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent

set guioptions-=T
set guioptions-=r
set guioptions-=L

" Customize statusbar
set statusline=%F%m%r%h%w\ [FORMAT=%{toupper(&ff)}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" UNIX line endings
set ff=unix

set guifont=Menlo:h15

colorscheme vilight

" Thinner text cursor
set gcr=i-ci:ver10-Cursor/lCursor

set nowrap

set backupdir=$TMPDIR,$TEMP,$TMP,.
set directory=$TMPDIR,$TEMP,$TMP,.

set lines=45 columns=120

set fuopt=maxvert,maxhorz

set wildmode=longest,list,full
set wildmenu

filetype plugin on

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
endif
