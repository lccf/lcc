" --------------------------------------------------
"   FileName: set.vim
"       Desc: 选项设置文件
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 05/30/2012 00:28
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [基础配置选项开启] {{{
" --------------------------------------------------
" 检查文件类型 载入对应的ftplugin vim脚本
:filetype plugin on
" 开启自动缩进
:filetype indent on
" 高亮源代码 syntax
syn on
" 显示信息 rule
set ru
" 显示行号 number
set nu
" 自动缩进 autoindent
set ai
" 智能对齐 smartindent
set si
" 键入搜索内容时如果有匹配则转到 incsearch
set is
" 搜索高亮 hlsearch
set hls
" 行高亮 cursorline
set cul
" 色彩高亮 colorscheme
" colo desert
colo desert
set bg=dark
" colo molokai
" colo calmbreeze_gary
" 命令行调试
se ch=1
" 错误提示列
se scl=yes
" 更新时间
set ut=300

"set ic " 搜索不区分大小写
"set cursorcolumn " 列高亮，与函数列表有冲突
"set cmdheight=3 " 设置命令行高度
" }}}
" --------------------------------------------------
" [缩进、删除] {{{
" --------------------------------------------------
" 缩进宽
set sw=2
" 设置制表符宽度
set ts=2
" 设置软缩进
set sts=2
" 显示tab和空格
set list
" 设置tab和空格样式
set lcs=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /^\t\+/
" 允许删除退格
set bs=2
" 展开空格
set et
" }}}
" --------------------------------------------------
" [自动完成] {{{
" --------------------------------------------------
set cpt+=k "add dictionary complete
" 加载默认词典文件
set dict+=$VIMFILES/dict/main.dict
" 当编辑PHP文件时，会加载PHP词典文件
au FileType php setl dict+=$VIMFILES/dict/ide-funclist.dict
au FileType vue setl dict+=$VIMFILES/dict/vue.dict
" }}}
" --------------------------------------------------
" [文件编码] {{{
" --------------------------------------------------
" 设置文件尝试编码
set fencs=ucs-bom,utf-8,cp936,latin1
" 设置非utf-8编码环境为utf-8
if has("gui_running") && &enc != 'utf-8'
	" 设置Vim内部使用编码
	set enc=utf-8
	" 重新设置菜单语言
	let $LANG = 'zh_CN.UTF-8'
	" 重新加载菜单避免出现乱码
	so $VIMRUNTIME/delmenu.vim
	so $VIMRUNTIME/menu.vim
en
" }}}
" --------------------------------------------------
" [文件目录、历史记录] {{{
" --------------------------------------------------
" 设置命令行历史记录 history
set hi=50
" 不备份 nobackup
set nobk
" 设定临时文件目录
set dir=$VIMFILES/temp
" }}}
" --------------------------------------------------
" [GUI配置] {{{
" *如果设置中文名字体，需要此配置文件编码改为gbk
" *如果需要使用微软黑显示中文，需要重新编译Vim
" --------------------------------------------------
if has('gui_running')
	" 不显示菜单栏 guioptions
	set go=
	" 菜单栏其它选项
	"set go=r "set go-=m "set go-=T "set go+=b
	" 设置alt键与系统菜单的关系 winaltkeys
	set wak=no
	if has('win32')
		" 最大化窗体
		au GUIEnter * simalt ~x
		" 设置英文字体
		" set gfn=Microsoft_Yahei:h10:cGB2312
		set gfn=DejaVu_Sans_Mono_for_Powerline:h10.5:cANSI
		"set gfn=DejaVu_Sans_Mono_for_Powerline:h40:cANSI
		" set gfn=Consolas_for_Powerline:h11:cANSI
		"set gfn=Consolas_for_Powerline:h10:cANSI
		"set gfn=Consolas:h11:cANSI "set guifont=NSimSun:h11:cANSI "set guifont=MonospaceTypewriter:h10:cANSI
		" 设置中文字体
		" set gfw=Microsoft_Yahei:h10:cGB2312 "set gfw=NSimSun:h10:cGB2312
		set gfw=youyuan:h10:cGB2312 "set guifontwide=Yahei_Mono:h11:cGB2312
	"elsei has('unix')
		"set guifont=Monospace\ 10 "set guifont=Monospace\ Italic \9
	elsei has('mac')
		set macmeta
		set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
	en
en
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
