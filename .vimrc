" Vundle start-up configuration
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
" ===============
" Bundle 'Align'
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
nmap <silent> <D-2> :Voomtoggle<CR>
if (has('gui_running'))
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_detect_iminsert = 1
  let g:airline_powerline_fonts = 1                                            " Enables utf-8 glyphs
  Bundle 'bling/vim-airline'
endif
" Bundle 'farseer90718/vim-taskwarrior'
" Bundle 'file:///Users/harciga/.vim/dev/taskwarrior'
Bundle 'file:///Users/harciga/.vim/dev/vimwiki'
let g:task_gui_term = 1
" Bundle 'kshenoy/vim-signature'
" Bundle 'EasyMotion'
Bundle 'justinmk/vim-sneak'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
let                 g:tex_flavor = 'latex'                                      " Empty *.tex defaults to ft=tex
let            g:LatexBox_viewer = '/Applications/Skim.app/Contents/MacOS/Skim' " Opens the PDFs in Skim
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
Bundle 'Shougo/neocomplete.vim'
" Bundle 'Shougo/neocomplcache.vim'
Bundle 'Shougo/unite.vim'
" Bundle 'Shougo/vimfiler.vim'
let g:unite_force_overwrite_statusline = 0
" Execute help.
nnoremap <C-h>  :<C-u>Unite -start-insert help<CR>
" Execute help by cursor keyword.
nnoremap <silent> g<C-h>  :<C-u>UniteWithCursorWord help<CR>
Bundle 'snipMate'
Bundle 'SyntaxAttr.vim'
map -a :call SyntaxAttr()<CR>
Bundle 'taglist.vim'
let        g:Tlist_WinWidth         = 40                                           " Window's width to 40 chars
let      g:tlist_make_settings      = 'make;m:makros;t:targets'                    " Latex customization
let      g:tlist_tex_settings       = 'latex;d:definitions;s:outline;g:graphics;l:labels'        " Latex customization
let      g:tlist_tex_settings       = 'latex;g:graphics;l:labels'        " Latex customization
let     g:Tlist_Close_On_Select     = 1
let     g:Tlist_Compact_Format      = 1
let     g:Tlist_Exit_OnlyWindow     = 1
let   g:Tlist_Enable_Fold_Column    = 0
let g:Tlist_GainFocus_On_ToggleOpen = 1
nnoremap <silent> <D-1> :TlistToggle<CR>
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
let g:surround_34 = "«\r»"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
Bundle 'mhinz/vim-startify'
let g:startify_list_order = ['bookmarks', 'files']
let g:startify_bookmarks = [ '~/Latex/Tesis.tex' ]
" Bundle 'The-NERD-tree'
let NERDTreeShowBookmarks = 1
Bundle 'ZoomWin'

" Back to my .vimrc
filetype plugin indent on
syntax on

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

set  wildmenu  
set  showcmd   
set       breakat-=.
set       grepprg =grep\ -nH\ $*
set       guifont =DejaVu\ Sans\ Mono\ for\ Powerline:h19
set       history =100
set     listchars =tab:·\ ,eol:¶,trail:·,nbsp:·,extends:»,precedes:«
" set     showbreak =↪
" set    foldcolumn =5
set    guioptions-=rL
set    laststatus =2
set concealcursor =cv
set  conceallevel =2
set scrolloff =5

if (has('gui_running'))
  set background=light
  colorscheme Solarized
  call togglebg#map("<F2>")
  set lines =60
  set columns =180
else
  colorscheme molokai
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
  autocmd InsertEnter *.tex VimProcBang textinputsource -s Spanish
  autocmd InsertLeave *.tex VimProcBang textinputsource -s U.S.
augroup END

" Source my .vimrc immediately
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " } 

" Global mappings
let maplocalleader = ","
nmap <silent><LocalLeader>ev :e $MYVIMRC<cr>
noremap <silent><LocalLeader>/ :nohls<CR>
" nnoremap <silent><LocalLeader>f :<C-U>call <SID>VIMRC_toggleFolded()<CR>
map <silent> <LocalLeader>ls :silent
      \ !/Applications/Skim.app/Contents/SharedSupport/displayline
      \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
      \ "%:p" <CR>
inoremap <C-u> <C-g>u<C-u>
" nnoremap <LocalLeader>b :<C-u>Unite buffer<CR>
nnoremap <LocalLeader>b :<C-u>call <SID>Unite_buffer()<CR>
nnoremap <LocalLeader>f :<C-u>Unite file<CR>
"nnoremap <LocalLeader>b :<C-u>Unite bookmark<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <LocalLeader>y :<C-u>Unite history/yank<CR>

function! s:Unite_buffer()
call unite#custom#source("buffer","ignore_pattern",substitute(expand("%:."),"\\.\\|\\/","\\\\\\0","g")) 
:Unite buffer
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
