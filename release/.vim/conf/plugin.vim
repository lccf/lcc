" --------------------------------------------------
"    FileName: plugin.vim
"        Desc: 插件配置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 1.0.0(beta)
"  LastChange: 06/04/2012 21:09
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [Emmet相关配置] {{{
" --------------------------------------------------
" 自定义缩写 {{{
let g:user_emmet_settings = {
			\ 'lang':'zh-cn',
			\ 'html':{
			\   'snippets':{
			\     'nocache':'<!--[if lte IE 6]><script type="text/javascript"> try{ document.execCommand("BackgroundImageCache", false, true); } catch(e){}; </script><![endif]-->',
			\   }
			\ },
			\ 'css':{
			\   'snippets':{
			\     'bg2':'background:url(|) 0 0;',
			\     'bg3':'background:url(|) 0 0 no-repeat;',
			\     'zo':'_zoom:1;',
			\     'img':'image:|;',
			\     'rep':'repeat:|;',
			\     'rep:n':'repeat:no-repeat;',
			\     'rep:x':'repeat:repeat-x;',
			\     'rep:y':'repeat:repeat-y;',
			\     '@c':'@charset "|";',
			\     '@c:u':'@charset "utf-8";',
			\     'ie6':'*html |',
			\     'ie7':'*+html |',
			\     'bgc:t':'background-color:transparent;',
			\   }
			\ },
			\ 'php':{
			\   'snippets':{
			\     'fn':'function |(){}',
			\     'cs':'class |{}',
			\     'pu':'public |',
			\     'pr':'private |',
			\     'pt':'protected |',
			\   }
			\ }
			\ }
" }}}
" ZenCoding展开快键
" let g:user_zen_expandabbr_key='<C-e>'
let g:user_emmet_expandabbr_key='<C-e>'
" 映射Alt+e到Ctrl+e
imap <A-e> <C-e>
" }}}
" --------------------------------------------------
" [NERDTree相关配置] {{{
" --------------------------------------------------
" 映射切换按键
map <F3> :NERDTree<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
let g:NERDSpaceDelims=1
" }}}
" --------------------------------------------------
" [Conque相关配置] {{{
" --------------------------------------------------
" Conque指定Python版本
let g:ConqueTerm_PyVersion=2
" }}}
" --------------------------------------------------
" [Taglist相关配置] {{{
" --------------------------------------------------
nn <silent> <F4> :TlistToggle<CR>
let g:Tlist_Show_One_File=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Use_Right_Window=1
" }}}
" --------------------------------------------------
" [autocommand相关配置] {{{
" --------------------------------------------------
" 设置加载模式
" let g:acmd_loaded=0
" 设置调试模式
" let g:acmd_debug=1
" 调用快捷键
let g:acmd_call_key='<A-s>'
" 针对文件类型
let g:acmd_filetype_list=['haml', 'sass', 'less', 'coffee', 'jade', 'ls', 'scss']
" 执行前置函数默认为保存
fu! Autocommand_before(fullFileName)
	let shortFileName=expand('%:t')
	let isUnderLine=match(shortFileName,'_')
	if isUnderLine==0
		sil up
		retu 0
	el
		retu 1
	en
endf
" 自定义命令
fu! Autocommand_usercmd(fileType)
	if a:fileType=="jade"
		let ret="jade #{$fileName}.jade -Po ./"
	elsei a:fileType=="ls"
		let ret="lsc -bc #{$fileName}"
	elsei a:fileType=="scss"
		let ret="sass --sourcemap=none --style compact #{$fileName}.scss #{$fileName}.css"
	el
		let ret=""
	en
	retu l:ret
endf
" }}}
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
