"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
se nocp
" be mswin
" set default shell
se shell=/bin/bash

" --------------------------------------------------
"   FileName: .vimrc
"       Desc: 主设置文件修改部份
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 05/06/2014 23:19
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------
" load lcc {{{
" 如果你不想加载lcc,请取消下面这一行的注释
" let g:lcc_loaded = 1
" 设置配置文件加载方式
let g:lcc_runtime=5
if g:lcc_runtime == 4 | let s:lcc_path=expand('<sfile>:h').'/.lcc' | en
if g:lcc_runtime == 5 | let s:lcc_path=expand('<sfile>:h').'/.vim-addons' | en

fu! LoadLCC()
	let g:lcc_loaded=1
	if !exists('$VIMFILES')
		" 根据配置文件判断加载目录
		if g:lcc_runtime == 0
			let $VIMFILES=filereadable(split(&rtp, ',')[0].'/conf/main.vim') ? split(&rtp, ',')[0] :
						\ filereadable(split(&rtp, ',')[1].'/conf/main.vim') ? split(&rtp, ',')[1] :
						\ ''
		" 设置配置文件加载路径相对于系统用户目录 推荐!
		"elsei g:lcc_runtime == 1
			"let $VIMFILES=split(&rtp, ',')[0]

		" 设置配置文件为vim安装目录，制作U盘便携版本时可使用此配置。
		"elsei g:lcc_runtime == 2
			"let $VIMFILES=split(&rtp, ',')[1]

		" 加入更多判断的路径设置，如果上面两个在极个别情况下出现问题，那么请考
		" 虑使用下面这个设置。
		"elsei g:lcc_runtime == 3
			"let $VIMFILES=has('unix') ? $HOME.'/.vim' :
						"\ has('win32') ? $HOME.'/vimfiles' :
						"\ split(&rtp, ',')[0]
		" 针对自定义目录
		elsei g:lcc_runtime == 4
			let $VIMFILES=s:lcc_path
			exe 'se rtp+='.escape(s:lcc_path.','.s:lcc_path.'/after', ' ')
		" 针对vim-addons-manager
		elsei g:lcc_runtime == 5
			let $VIMFILES=s:lcc_path
			exe 'se rtp+='.s:lcc_path
			" exe 'se rtp+='.escape(s:lcc_path)
			so $VIMFILES/conf/vam.vim
		en
	en
	" 加载主配置文件
	" filereadable
	so $VIMFILES/conf/main.vim
endf
" start lcc happy viming!
if !exists('g:lcc_loaded') && has('gui_running') && has('mac') | cal LoadLCC() | en
" }}}
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
