"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM has to remember
set history=400

"Enable filetype plugin
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"Set mapleader
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

"Fast reloading of the .vimrc
map <leader>s :source ~/vim_local/vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/vim_local/vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/vim_local/vimrc

map <leader>t :FuzzyFinderTextMate<CR>
let g:fuzzy_ignore = "*.rgs,*.def,*.dsp,*.rc,*.exe,*.tlb,*.tli,*.obj,*.vcproj,*.vspscc,*.user,*.dll,*.MANIFEST,*.manifest,*.exp,*.ilk,*.ilb,*.pcc,*.pch,*.pdb,*.tlh,*.dep,*.trg,*.idb,*.nlb,*.NLB,*.DPbcd,*.DPRul,*.DPSup,*.res,*.hex,*.elf,*.bin,*.sbr,*.aps,*.bsc,*.lib}"

map <leader>b :BufExplorer<CR>

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let tlist_ant_settings = 'ant;p:Project;r:Property;t:Target'

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

nnoremap <silent> <F7> :NERDTreeToggle<CR>

"Recognize .V files as verilog
autocmd! BufNewFile,BufRead *.V set filetype=verilog
"Remove toolbar
:set guioptions-=T

"Go to tag under cursor
nnoremap t <C-]>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable 

"Set font to Monaco 10pt
if MySys() == "mac"
  set gfn=Bitstream\ Vera\ Sans\ Mono:h14
  set nomacatsui
  set termencoding=macroman
elseif MySys() == "linux"
  set gfn=Monospace\ 9 
elseif MySys() == "windows"
  set guifont=Consolas:h8,ProggyTiny:h8,Luxi_Mono:h12:cANSI
endif

if ! has("gui_running")
    set t_Co=256
endif
" set background=light gives a different style, feel free to choose between them.
"set background=light
"colors peaksea
colorschme desert

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
set nu

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
set statusline=%<%f\ %m%a%=%([%R%H%Y]%)\ %-19(%3l\ of\ %L,%c%)%P
set showcmd

"""""""""""
" TABS
"""""""""""

set tabstop=4
set shiftwidth=4
set noexpandtab
