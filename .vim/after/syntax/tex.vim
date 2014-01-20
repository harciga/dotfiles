if &fdm == "manual"
  setl fdm=syntax
endif

syn cluster texMatchGroup add=texItalStyle,texBoldStyle,texItalBoldStyle,texBoldItalStyle
" syn match texRefZone '\\cite\%(text\|\%(\%([tp]\|author\)\*\=\)\|\%(year\%(par\)\=\)\|alt\|alp\)\=' nextgroup=texRefOption,texCite
" syn match texStatement // conceal cchar=※ " ※ REFERENCE MARK Unicode: U+203B, UTF-8: E2 80 BB
syn match texStatement /\\index{[^}]*}\+/ conceal cchar=⚓
syn match texStatement /\\ref/ nextgroup=texCite conceal cchar=☸ " ☸ WHEEL OF DHARMA Unicode: U+2638, UTF-8: E2 98 B8
syn match texStatement /\\item/ conceal cchar=– " ☸ WHEEL OF DHARMA Unicode: U+2638, UTF-8: E2 98 B8
syn match texStatement /\\marginnote{[^}]*}\+/ conceal cchar=ⁿ
"syn match texBeginEnd /\\begin\>/  nextgroup=texBeginEndName conceal cchar=˹ " MODIFIER LETTER BEGIN HIGH TONE Unicode: U+02F9, UTF-8: CB B9
"syn match texBeginEnd /\\end\>/  nextgroup=texBeginEndName conceal cchar=˼ " MODIFIER LETTER END LOW TONE Unicode: U+02FC, UTF-8: CB BC
" highlight Conceal guibg=NONE guifg=purple ctermbg=NONE ctermfg=Magenta
" highlight NonText guifg=foreground ctermfg=fg

syn cluster texFoldGroup add=texIfFalse
syn cluster texPreambleMatchGroup add=texIfFalse

syn region texIfFalse start='\\iffalse' end='\\fi' keepend contains=texIfFalseTags fold
syn match texIfFalseTags '\\iffalse' conceal cchar=§
syn match texIfFalseTags '\\fi' conceal
highlight link texIfFalseTags texStatement
highlight link texIfFalse Comment 

" hi Special guifg=#799d6a " Moved to ~/.vim/after/colors
" highlight! link texRefZone Comment
