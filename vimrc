"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM has to remember
set history=700

"Enable filetype plugin
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"set auto indent
set cindent
set smartindent

"Have the mouse enabled all the time:
"set mouse=a
set mouse=n
set mousefocus

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
"nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

map <leader>t :FuzzyFinderTextMate<CR>
let g:fuzzy_ignore = "*.rgs,*.def,*.dsp,*.rc,*.exe,*.tlb,*.tli,*.obj,*.vcproj,*.vspscc,*.user,*.dll,*.MANIFEST,*.manifest,*.exp,*.ilk,*.ilb,*.pcc,*.pch,*.pdb,*.tlh,*.dep,*.trg,*.idb,*.nlb,*.NLB,*.DPbcd,*.DPRul,*.DPSup,*.res,*.hex,*.elf,*.bin,*.sbr,*.aps,*.bsc,*.lib}"

map <leader>b :BufExplorer<CR>
" use ,x to quit the vim
map <leader>x :qa!<CR>

"Fast start tags list
map <F8> :TagbarToggle<cr>
map <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -h ".h" --exclude=avr32iss --exclude=avr32synt --exclude=Utilities --exclude=vtoc --exclude=*.v --exclude=*.asm --exclude=*.py .<CR><cr>
map <F10> :%!python -m json.tool
set tags=tags;/
let Tlist_Ctags_Cmd='/usr/bin/ctags'

"Switch among splited windows
map <C-h> :wincmd h <cr> 
map <C-l> :wincmd l <cr>
map <C-k> :wincmd k <cr>
map <C-j> :wincmd j <cr>

"vim-go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" toggle nerd tree plugin
nnoremap <silent> <F7> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows=0

"Recognize .V files as verilog
autocmd! BufNewFile,BufRead *.V set filetype=verilog
autocmd! BufNewFile,BufRead *.vh set filetype=verilog
"Remove toolbar
:set guioptions-=T

"Go to tag under cursor
nnoremap t <C-]>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable 

  set gfn=Monospace\ 9 

if ! has("gui_running")
    set t_Co=256
endif
" set background=light gives a different style, feel free to choose between them.
"set background=light
"colors peaksea
colorscheme desert

"Highlight current
"if has("gui_running")
  set cursorline
  hi cursorline guibg=#eeeeee 
  hi CursorColumn guibg=#eeeeee
"endif

"Omni menu colors
hi Pmenu guibg=#eeeeee
hi PmenuSel guibg=#555555 guifg=#ffffff



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
set ruler

"The commandbar is 1 high
set cmdheight=2

"Show line number
set nu
set ruler

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent


"Ignore case when searching
set ignorecase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"Highlight search things
set hlsearch

set laststatus=2
set statusline+=%1*%<%f
set statusline+=%4*\ %-3m%=
set statusline+=%2*\ [line:%l/%L][column:%03c]%P 
"set statusline+=%3*\ %-16{strftime(\"%Y-%m-%d\ %H:%M\")}
"set statusline+=%4*\ %-3m


hi User1 ctermfg=lightred  cterm=italic
hi User4 ctermfg=lightblue  cterm=italic
hi User3 ctermfg=lightgreen  cterm=italic
hi User2 ctermfg=lightcyan  cterm=italic


"set statusline=%<%f\ %m%a%=%([%R%H%Y]%)\ %-19(%3l\ of\ %L,%c%)%P
set showcmd

"" gcc compiler

"""""""""""
" TABS
"""""""""""
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list
set tabstop=8
set shiftwidth=4
set expandtab
set formatoptions-=cro

:map <F2> ^o/* ---- EXCLUDED by Jie Xu at: <Esc>:read !date<CR>kJA  ----<Esc>
:map <F3> ^o   ---- EXCLUDED by Jie Xu at: <Esc>:read !date<CR>kJA  ---- */<Esc>

ab #b /************************************************
ab #e ************************************************/
ab #v `ifndef verilator
ab #r `endif //verilator

ab ### # ---------------------------------------------------------------------------
ab /// // --------------------------------------------------------------------------
""""""""""""""""
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

nmap <F10> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files ;
  \:!cscope -b -i cscope.files -f cscope.out<CR>
  \:cs kill -1<CR>:cs add cscope.out<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" beginning of easymotion settings
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-sn)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" end of easymotion settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" beginning of tagbar settings
" go tagbar
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'f:functions',
		\ 'm:methods',
		\ 'r:constructor'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : '/usr/bin/gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" end of tagbar  settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
let g:ctrlp_working_path_mode = 'ar'
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for youcompleteme
let g:loaded_youcompletme = 1
""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" plug setting
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/vimshell.vim'
"Plug 'scrooloose/syntastic'
Plug 'Shougo/unite.vim'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-powerline'
Plug 'tpope/vim-surround'
Plug 'fholgado/minibufexpl.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'jiexu/Vim-Jinja2-Syntax'
Plug 'vim-scripts/SyntaxRange'
Plug 'elzr/vim-json'
Plug 'tpope/vim-abolish'
"Plug 'Valloric/YouCompleteMe'
call plug#end()
