" Vundle start-up configuration
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'
" My Bundles here:
" ===============
Bundle 'Align'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'tomasr/molokai'
Bundle 'junegunn/seoul256.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'AfterColors.vim'
" Bundle 'google/maktaba'
Bundle 'sjl/gundo.vim'
nnoremap <silent> <D-u> :GundoToggle<CR>
let g:gundo_preview_bottom = 1
let g:gundo_right = 1
let g:gundo_help = 0
" Bundle 'ctrlp.vim'
Bundle 'vim-voom/VOoM'
let g:voom_tree_placement = "right"
let g:voom_tree_width = 50
noremap <silent> <D-2> :Voomtoggle<CR>
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_detect_iminsert = 1
let g:airline_powerline_fonts = 1                                            " Enables utf-8 glyphs
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#whitespace#enabled = 1
Bundle 'bling/vim-airline'
" Bundle 'farseer90718/vim-taskwarrior'
Bundle 'vimwiki/vimwiki'
let g:task_gui_term = 1
" Bundle 'kshenoy/vim-signature'
" Bundle 'EasyMotion'
" Bundle 'justinmk/vim-sneak'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
let g:tex_conceal = "bdgm"
let                 g:tex_flavor = 'latex'                                      " Empty *.tex defaults to ft=tex
  if has("gui_macvim")
    let            g:LatexBox_viewer = '/Applications/Skim.app/Contents/MacOS/Skim' " Opens the PDFs in Skim
  else
    let            g:LatexBox_viewer = 'zathura' " Opens the PDFs in Skim
  endif
" let           g:tex_fold_enabled = 1
" let g:LatexBox_Folding = 1
let     g:LatexBox_latexmk_async = 1
let g:LatexBox_loaded_matchparen = 1
Bundle 'matchit.zip'
Bundle 'Shougo/vimproc'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#auto_completion_start_length = 4
"let g:neocomplete#disable_auto_complete = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.tex = '\\cite\a\?{[^}]*\|\\ref{[^}]*'
"let g:neocomplete#sources#omni#input_patterns = {}
"let g:neocomplete#sources#omni#input_patterns.tex = '\\cite\a\?{[^}]*\|\\ref{[^}]*'
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_refresh_always = 1
" let g:neocomplete#sources#dictionary#dictionaries = {'_':'~/mydict'}
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><Tab> pumvisible() ? neocomplete#close_popup() : "\<Tab>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/unite.vim'
" Bundle 'Shougo/vimfiler.vim'
let g:unite_force_overwrite_statusline = 0
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup --hidden --ignore-case'
let g:unite_source_grep_recursive_opt = ''
" Execute help.
nnoremap <C-h>  :<C-u>Unite -start-insert help<CR>
" Execute help by cursor keyword.
nnoremap <silent> g<C-h>  :<C-u>UniteWithCursorWord help<CR>
" Bundle 'snipMate'
Bundle 'SyntaxAttr.vim'
nnoremap -a :call SyntaxAttr()<CR>
Bundle 'taglist.vim'
let        g:Tlist_WinWidth         = 40                                           " Window's width to 40 chars
let      g:tlist_make_settings      = 'make;m:makros;t:targets'                    " Latex customization
" let      g:tlist_tex_settings       = 'latex;d:definitions;s:outline;g:graphics;l:labels'        " Latex customization
let      g:tlist_tex_settings       = 'latex;t:tables;g:graphics;l:labels'        " Latex customization
let     g:Tlist_Close_On_Select     = 1
let     g:Tlist_Compact_Format      = 1
let     g:Tlist_Exit_OnlyWindow     = 1
let   g:Tlist_Enable_Fold_Column    = 0
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Inc_Winwidth = 0
let g:Tlist_Show_One_File = 1
nnoremap <silent> <D-1> :TlistToggle<CR>
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
let g:surround_34 = "«\r»"
Bundle 'ZoomWin'

" Back to my .vimrc
call vundle#end()
filetype plugin indent on
syntax on

if &term == "rxvt-unicode-256color"
 let &term = "screen-256color"
endif
if has("multi_byte")
  set encoding =utf-8
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  setglobal fileencoding =utf-8
" setglobal bomb
  set fileencodings =ucs-bom,utf-8,latin1
endif

set   hidden   " The current buffer can be put to the background without writing to disk
set  hlsearch  " highlight search
set ignorecase " Do case in sensitive matching with
set smartcase  " be sensitive when there's a capital letter
set incsearch  " incremental highlighting
set linebreak
" Turn backup off
set nobackup
set nowritebackup
set noswapfile
" Tab settings
set expandtab
set shiftwidth=2
set tabstop=8
set softtabstop=2
set dictionary+=/usr/share/dict/words
set backspace=eol,start,indent
set clipboard=unnamedplus,unnamed
set nowrapscan

set  wildmenu  
set  showcmd   
set       breakat-=.
set       grepprg =grep\ -nH\ $*
set       history =100
set     listchars =tab:→\ ,eol:¶,trail:·,nbsp:·,extends:»,precedes:«
set     showbreak =↪\ 
" set    foldcolumn =5
set    guioptions-=r
set    guioptions-=L
set    guioptions-=m
set    guioptions-=T
set    laststatus =2
set concealcursor =cv
set  conceallevel =2
set scrolloff =2
set display=lastline
set diffopt+=vertical
set mouse=
if has("patch-7.4.314")
  set shortmess+=c
endif

set background=dark
colorscheme hybrid
if (has('gui_running'))
  call togglebg#map("<F2>")
  if has("gui_macvim")
    set guifont =DejaVu\ Sans\ Mono\ for\ Powerline:h19
    set lines =60
    set columns =180
  else
    set guifont =DejaVu\ Sans\ Mono\ for\ Powerline\ 16
  endif
else
  highlight MyTagListFileName guifg=white guibg=NONE ctermfg=white ctermbg=NONE
  set nowrap
endif

" highlight VertSplit gui=NONE cterm=NONE guibg=NONE ctermbg=NONE
" highlight FoldColumn guibg=NONE ctermbg=NONE 
" highlight Folded guibg=NONE ctermbg=NONE 

augroup MyAutoCmd
  autocmd!
" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
  autocmd InsertEnter *.tex if !exists('w:last_fdm') 
                         \|   let w:last_fdm=&foldmethod 
                         \|   setlocal foldmethod=manual 
                         \| endif
  autocmd InsertLeave,WinLeave *.tex if exists('w:last_fdm') 
                                  \|   let &l:foldmethod=w:last_fdm 
                                  \|   unlet w:last_fdm 
                                  \| endif
  if has("gui_macvim")
    autocmd InsertEnter *.tex VimProcBang textinputsource -s Spanish
    autocmd InsertLeave *.tex VimProcBang textinputsource -s U.S.
  else
    autocmd InsertEnter *.tex VimProcBang setxkbmap -layout latam,us
    autocmd InsertLeave *.tex VimProcBang setxkbmap -layout us
  endif
augroup END

" Source my .vimrc immediately
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " } 

" Global mappings
let maplocalleader = ","
" nmap Q q:
inoremap jk 
inoremap kj 
nnoremap j gj
nnoremap k gk
inoremap <LocalLeader>b \textbf{
inoremap <LocalLeader>i \textit{

nnoremap <silent> <LocalLeader>1 :TlistToggle<CR>
nnoremap <silent> <LocalLeader>2 :Voomtoggle<CR>
map <ScrollWheelUp> <Nop>
map <ScrollWheelDown> <Nop>
map <PageUp> <Nop>
map <PageDown> <Nop>
nnoremap <silent><LocalLeader>ev :e $MYVIMRC<cr>
nnoremap <silent><LocalLeader>/ :nohls<CR>
" nnoremap <silent><LocalLeader>f :<C-U>call <SID>VIMRC_toggleFolded()<CR>
nnoremap <silent><LocalLeader>w :<C-U>call <SID>VIMRC_toggleWrap()<CR>
if has("gui_macvim")
  nnoremap <silent> <LocalLeader>ls :silent
      \ !/Applications/Skim.app/Contents/SharedSupport/displayline
      \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
      \ "%:p" <CR>
else
  nnoremap <silent> <LocalLeader>ls :silent
      \ !zathura --synctex-forward
      \ <C-R>=line('.')<CR>:0:"<C-R>=expand("%:p")<CR>"
      \ <C-R>=LatexBox_GetOutputFile()<CR><CR>
endif
inoremap <C-u> <C-g>u<C-u>
nnoremap <LocalLeader>b :<C-u>call <SID>Unite_buffer()<CR>
nnoremap <LocalLeader>f :<C-u>Unite file -auto-preview<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <LocalLeader>y :<C-u>Unite history/yank<CR>

function! s:Unite_buffer()
call unite#custom#source("buffer","ignore_pattern",substitute(expand("%:."),"\\.\\|\\/","\\\\\\0","g")) 
:Unite bookmark buffer
endfunction

function! s:VIMRC_toggleWrap()
  if !exists("b:toggleWrap") 
    let b:toggleWrap = &wrap
  endif
  if (b:toggleWrap)
    setlocal nowrap
  else
    setlocal wrap
  endif
  let b:toggleWrap = !b:toggleWrap
endfunction

function! s:VIMRC_toggleFolded()
  if !exists("s:toggleFolded") 
    let s:toggleFolded = 0
    if (has('gui_running')) 
      let s:mode = "gui"
    else
      let s:mode = "cterm"
    endif
  endif
  if (s:toggleFolded)
    exe "hi Folded" s:mode."fg=".s:fgFolded s:mode."bg=".s:bgFolded
    exe "hi FoldColumn" s:mode."fg=".s:fgFoldColumn s:mode."bg=".s:bgFoldColumn
    exe "set foldcolumn =".s:save_FoldColumn
  else
    let s:fgFolded       = synIDattr(hlID("Folded")     , "fg" , s:mode)
    let s:bgFolded       = synIDattr(hlID("Folded")     , "bg" , s:mode)
    let s:fgFoldColumn   = synIDattr(hlID("FoldColumn") , "fg" , s:mode)
    let s:bgFoldColumn   = synIDattr(hlID("FoldColumn") , "bg" , s:mode)
    let s:save_FoldColumn = &foldcolumn
    let l:Normal       = synIDattr(hlID("Normal")     , "bg" , s:mode)
    exe "hi Folded" s:mode."fg=".l:Normal s:mode."bg=".l:Normal
    exe "hi FoldColumn" s:mode."fg=".l:Normal s:mode."bg=".l:Normal
    set foldcolumn =0
  endif
  let s:toggleFolded = !s:toggleFolded
endfunction
