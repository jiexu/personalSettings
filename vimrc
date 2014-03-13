"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM has to remember
set history=700

"Enable filetype plugin
set nocp
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

map <leader>s :source ~/vim_local/vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/vim_local/vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/vim_local/vimrc

map <leader>t :FuzzyFinderTextMate<CR>
let g:fuzzy_ignore = "*.rgs,*.def,*.dsp,*.rc,*.exe,*.tlb,*.tli,*.obj,*.vcproj,*.vspscc,*.user,*.dll,*.MANIFEST,*.manifest,*.exp,*.ilk,*.ilb,*.pcc,*.pch,*.pdb,*.tlh,*.dep,*.trg,*.idb,*.nlb,*.NLB,*.DPbcd,*.DPRul,*.DPSup,*.res,*.hex,*.elf,*.bin,*.sbr,*.aps,*.bsc,*.lib}"

map <leader>b :BufExplorer<CR>
" use ,x to quit the vim
map <leader>x :qa!<CR>

"Fast start tags list
map <F8> :TlistToggle<cr>
map <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -h ".h" --exclude=avr32iss --exclude=avr32synt --exclude=Utilities --exclude=vtoc --exclude=*.v --exclude=*.asm --exclude=*.py .<CR><cr>

"Switch among splited windows
map <C-h> :wincmd h <cr> 
map <C-l> :wincmd l <cr>
map <C-k> :wincmd k <cr>
map <C-j> :wincmd j <cr>

"nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let tlist_ant_settings = 'ant;p:Project;r:Property;t:Target'
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type='name'

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"map <C-n> :bn<cr>
"map <C-p> :bp<cr>
let g:miniBufExplModSelTarget = 1

" toggle nerd tree plugin
nnoremap <silent> <F7> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI = 1

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
if has("gui_running")
  set cursorline
  hi cursorline guibg=#eeeeee 
  hi CursorColumn guibg=#eeeeee
endif

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
"set nu
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
set tabstop=4
set shiftwidth=4
set expandtab
set formatoptions-=cro

:map <F2> ^o/* ---- EXCLUDED by Jie Xu at: <Esc>:read !date<CR>kJA  ----<Esc>
:map <F3> ^o   ---- EXCLUDED by Jie Xu at: <Esc>:read !date<CR>kJA  ---- */<Esc>
:map <F4> ^o///@@@ Shall be moved to device family folder<Esc>

ab #b /************************************************
ab #e ************************************************/
ab #v `ifndef verilator
ab #r `endif //verilator


""""""""""""""""
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode
"

