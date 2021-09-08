"Author: Frank Ren
"Date: 2014 April 09
"Usage: leading brakets [ ] marks a todo, [.] means low priority, [x] means done.

"case sensitive for keywords: continuous CAPITAL characters(or digits) will be trait a keyword
"syntax case match
"syn match     TxtKeyword /\<\u\{3,}[\u\d]*\>/

"not case sensitive for normal defines
setlocal shiftwidth=3
setlocal sts=3
setlocal tabstop=3

syntax case ignore

syn match  TxtBrac        "[ {} () \[\] ]"
syn match  TxtSpecial     "[ ^ ~ ' ? \- \. = \+ % * \/ ]"
syn match  TxtSpecial     "[ £¬¡£¡®¡¯£¨£©¡¾¡¿¡ª£«£½¡°¡±]"

syn match  TxtNumber      "\<\d\+\>"
syn match  TxtNumber      "\<\d\+\.\d*\>"
syn match  TxtNumber      "\.\d\+\>"
syn match  TxtNumber      "-\d\+" contains=Number
syn match  TxtNumber      "-\.\d\+" contains=Number

syn region TxtString      start=+L\="+ skip=+\\\\\|\\"+ end=+"+

syn match  TxtUrl         "https\=://\S*\>"
syn match  TxtUrl         "mms\=://\S*\>"
syn match  TxtUrl         "ftp\=://\S*\>"
syn match  TxtUrl         "file\=://\S*\>"
syn match  TxtUrl         "[0-9a-zA-Z_\-+\.]\+@[0-9a-zA-Z_\-+]\+\(\.[0-9a-zA-Z_\-+]\+\)\+"

syn match  TxtLComment    "^#.*$" contains=TxtUrl,TxtMail,TxtFile,TxtFtp,TxtMms,TxtString
syn region TxtBComment    start="\[" end="\]"
syn match  TxtSepLine     "^\s*___.*$" contains=TxtUrl,TxtMail,TxtFile,TxtFtp,Txtmms,TxtString
syn match  TxtDashLine    "^\s*---.*$" contains=TxtUrl,TxtMail,TxtFile,TxtFtp,Txtmms,TxtString
syn match  TxtHL          /^\*\S\+\*/
syn match  TxtTodo        /@@.*/
syn match  TxtTodo        /TODO:.*/

"syn match  TxtTitle1       /^\*.*/
"syn match  TxtTitle2       /^%.*/
syn match  TxtTitle3       /^!.*/

syn match  TxtSymBullet   "^\s*[\*\-\+\=\.] "
syn match  TxtNumBullet   "^\s*\d\+)\.\="

syn match ztxt1 "`1"
syn match ztxt2 "`2"
syn match ztxt3 "`3"
syn match ztxt4 "`4"

syn match uncheck "^\s*\[ \].*"
syn match checked "^\s*\[x\].*"
syn match recheck "^\s*\[\.\].*"

hi link    TxtKeyword     Special
hi link    TxtBrac        Identifier
hi link    TxtSpecial     Constant

hi link    TxtNumber      Number
hi link    TxtString      String

hi TxtUrl         gui=underline,italic                term=underline,italic

hi ztxt1          guifg=Red         guibg=Red         ctermfg=Red         ctermbg=Red
hi ztxt2          guifg=Orange      guibg=Orange      ctermfg=Yellow      ctermbg=Yellow
hi ztxt3          guifg=Green       guibg=Green       ctermfg=Green       ctermbg=Green
hi ztxt4          guifg=Gray        guibg=Gray        ctermfg=Gray        ctermbg=Gray

hi checked        guifg=Gray                          ctermfg=Gray
hi recheck        guifg=Darkgreen                     ctermfg=DarkGreen
hi uncheck        guifg=Green                         ctermfg=Green

hi TxtNumBullet   guifg=LightGreen                    ctermfg=LightGreen
hi TxtSymBullet   guifg=LightBlue                     ctermfg=LightBlue
hi TxtTitle1      guifg=Black       guibg=White       ctermfg=Black       ctermbg=White
hi TxtTitle2      guifg=Black       guibg=LightGray   ctermfg=Black       ctermbg=LightGray
hi TxtTitle3      guifg=White       guibg=#555555     ctermfg=White       ctermbg=Gray

hi link    TxtLComment    Comment
hi link    TxtBComment    Comment
hi link    TxtDashLine    Comment
hi link    TxtHL          Comment
hi link    TxtTodo        Todo

let b:current_syntax = "txt"

" vim: ts=8 sw=2
"""""""""""""""""""""""""""""""""""

"add in vimrc
"au BufWinLeave *.txt mkview
"au BufWinEnter *.txt silent loadview

