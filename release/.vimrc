set nocp
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
be mswin

" --------------------------------------------------
"    FileName: .vimrc
"        Desc: 主设置文件修改部份
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 0.1
"  LastChange: 09/12/2011 22:49
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------
" 如果你不想加载lcc,请取消下面这一行的注释
" let g:lcc_loaded = 1
fu! LoadLCC()
	let g:lcc_loaded=1
	if !exists('$VIMFILES') | let $VIMFILES=$HOME.'/.vim' | en
	if has('win32') | set rtp+=$VIMFILES | en
	so $VIMFILES/conf/main.vim
endf
if !exists('g:lcc_loaded') | cal LoadLCC() | en

if(match(getcwd(),'system32$')>1) | cd ~/ | en
