" --------------------------------------------------
"    FileName: plugin.vim
"        Desc: 插件配置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 1.0.0(beta)
"  LastChange: 05/30/2012 00:41
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [ZenCoding相关配置] {{{
" --------------------------------------------------
" 自定义缩写
let g:user_zen_settings = {
\	'lang':'zh-cn',
\	'html':{
\		'snippets':{
\			'nocache':'<!--[if lte IE 6]><script type="text/javascript"> try{ document.execCommand("BackgroundImageCache", false, true); } catch(e){}; </script><![endif]-->',
\		}
\	},
\	'css':{
\		'snippets':{
\			'bg2':'background:url(|) 0 0;',
\			'bg3':'background:url(|) 0 0 no-repeat;',
\			'zo':'_zoom:1;',
\			'@c':'@charset "|";',
\			'@c:u':'@charset "utf-8";',
\			'ie6':'*html |',
\			'ie7':'*+html |',
\			'bgc:t':'background-color:transparent;',
\		}
\	},
\	'php':{
\		'snippets':{
\			'php':"<?php\n|\n?>",
\			'fn':'function |(){}',
\			'cs':'class |{}',
\			'pu':'public |',
\			'pr':'private |',
\			'pt':'protected |',
\			'head:json':'header("Content-Type:application/json; charset=utf-8");',
\			'head:utf8':'header("Content-Type:text/html; charset=utf-8");',
\		}
\	}
\}
" ZenCoding展开快键
let g:user_zen_expandabbr_key='<C-e>'
" 映射Alt+e到Ctrl+e
imap <A-e> <C-e>
" }}}
" --------------------------------------------------
" [NERDTree相关配置] {{{
" --------------------------------------------------
" 映射切换按键
map <F3> :NERDTree<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
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
" 调用快捷键
let g:acmd_call_key='<c-s>'
" 针对文件类型
"let g:acmd_filetype_list=['haml', 'sass', 'less', 'coffee']
" 命令名称
"let g:acmd_cmd='Acmd'
" 执行前置函数默认为保存
"fu! Autocommand_before(fullFileName)
	"echo a:fullFileName
	"echo 'before function'
	"sil up
"endf
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
