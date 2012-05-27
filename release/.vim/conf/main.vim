" --------------------------------------------------
"   FileName: main.vim
"       Desc: 主配置文件
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 05/27/2012 21:46
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [分配置文件加载] {{{1
" --------------------------------------------------
" 加载设置选项 访问命令 \es
so <sfile>:p:h/set.vim
" 加载插件配置,插件对应热键定义在内 访问命令 \ed
so <sfile>:p:h/plugin.vim
" 加载自定义函数 访问命令 \ef
so <sfile>:p:h/function.vim
" 加载按热键配置 访问命令 \eg
so <sfile>:p:h/keyboard.vim
" 加载自定义命令 访问命令 \ec
so <sfile>:p:h/command.vim
" 1}}}
" --------------------------------------------------
" [autocmd自执行区域] {{{1
" --------------------------------------------------
" 自动设置vim高亮as
au BufNewFile,BufRead *.as set filetype=actionscript
" 自动打开 NERDTreeShowHidden "au VimEnter * NERDTree
" vim配置文件设置换行为unix "au BufNewFile,BufRead *.vim set ff=unix
" 编辑文件时，打开NERDTree "au BufNewFile,BufRead * :NERDTree
"1}}}
" --------------------------------------------------
" [labs 试验区域存放试验配置] {{{1
" --------------------------------------------------
" au FileType php setlocal dict+=~/.vim/dict/php_funclist.txt
if(has('win32') && match(getcwd(),'system32$')>1) | cd ~/ | en
set dict+=$VIMFILES/dict/main.dict
" 1}}}
" --------------------------------------------------
" [已加载插件说明] {{{1
" --------------------------------------------------
" 1、VE 目录浏览工具
" 2、NERDTree 树浏览工具
" 3、ZenCoding 快速编写html、css代码
" 4、Gtrans 翻译 *需python，进行修改
" 5、Conque 打开终端 *需python
" 6、CssColor 高亮css中颜色
" 7、actionscript 添加actionscript语法高亮支持
" 8、vimdoc vim中文文档
" 9、NERDCommenter 自动注释
" 10、Taglist 文档中标签提示
" 11、Tabular 用来缩排列表
" 1}}}
" --------------------------------------------------
" [更多信息] {{{1
" --------------------------------------------------
" 更新vim帮助 :helptags $VIMFILES/doc
" vim:fdm=marker:fdc=1
