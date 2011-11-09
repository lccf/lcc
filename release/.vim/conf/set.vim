" --------------------------------------------------
"    FileName: set.vim
"        Desc: 选项设置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 0.1
"  LastChange: 09/12/2011 22:27
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [基础配置选项开启] {{{1
" --------------------------------------------------
" 检查文件类型 载入对应的ftplugin vim脚本
:filetype plugin on
" 开启自动缩进
:filetype indent on
" 高亮源代码
syntax on
" 显示信息
set ru
" 显示行号
set nu
" 自动缩进
set ai
" 智能对齐
set si
" 搜索高亮
set is
" 搜索高亮
set hls
" 行高亮
set cursorline
" 色彩高亮
"colorscheme molokai 
colorscheme desert
"set bs=2 " 设置是否可使用删除键
"set ic " 搜索不区分大小写
"set cursorcolumn " 列高亮，与函数列表有冲突
"set cmdheight=3 " 设置命令行高度
"1}}}
" --------------------------------------------------
" [缩进、换行] {{{1
" --------------------------------------------------
" 设置制表符宽度
set tabstop=4
" 缩进宽
set shiftwidth=4
" 设置软缩进
set softtabstop=4
" 显示tab和空格
set list
" 设置tab和空格样式
set listchars=tab:\|\ ,nbsp:%,trail:-
" 设定行首tab为灰色
highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /\t/
" 设置换行模式
if has('win32')
	set ffs=dos,unix
else
	set ffs=unix,dos
endif
set backspace=indent,eol,start
" 1}}}
" --------------------------------------------------
" [自动完成] {{{1
" --------------------------------------------------
set complete+=k "add dictionary complete
set dictionary=$VIMFILES/dict/main.dict
" 1}}}
" --------------------------------------------------
" [文件编码] {{{1
" --------------------------------------------------
" 设置文件尝试编码
set fileencodings=utf-8,ucs-bom,gbk,cp936,cp950,latin1
" 设置默认文件编码
set fileencoding=utf-8
if has("gui_running")
	" 加载菜单避免出现乱码
	source $VIMRUNTIME/delmenu.vim
	" 设置终端编码
	set encoding=utf-8
	let $LANG = 'zh_CN.UTF-8'
endif
"set termencoding=utf-8
"set langmenu=zh_CN
"source $VIMRUNTIME/menu.vim
" 1}}}
" --------------------------------------------------
" [文件目录、历史记录] {{{1
" --------------------------------------------------
" 设置命令行历史记录
set history=50
" 不备份
set nobackup " 无写入备份 "set nowritebackup
" 设定临时文件目录
set directory=$VIMFILES/temp
" 1}}}
" --------------------------------------------------
" [GUI配置] {{{1
" *如果设置中文名字体，需要此配置文件编码改为gbk
" --------------------------------------------------
if has('gui_running')
	" 不显示菜单栏
	"set go=r "set go-=m "set go-=T "set go+=b
	set go=
	set winaltkeys=no
	if has('win32')
		" 最大化窗体
		au GUIEnter * simalt ~x
		" 设置英文字体
		set guifont=Consolas:h11:cANSI "set guifont=NSimSun:h11:cANSI "set guifont=MonospaceTypewriter:h10:cANSI
		" 设置中文字体
		set guifontwide=NSimSun:h11:cGB2312 "set gfw=youyuan:h10.5:cGB2312 set guifontwide=Yahei_Mono:h11:cGB2312
	"elseif has('unix')
		"set guifont=Monospace\ 10 "set guifont=Monospace\ Italic \9
	endif
endif
" vim:fdm=marker:fdc=1
