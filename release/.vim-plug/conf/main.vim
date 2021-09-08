" --------------------------------------------------
"   FileName: main.vim
"       Desc: 主配置文件
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 05/27/2012 21:46
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------
" let g:PHP_default_indenting = 1
" let g:PHP_BracesAtCodeLevel = 1
" let g:PHP_outdentphpescape = 0
let g:PHP_vintage_case_default_indent = 1
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
"so <sfile>:p:h/command.vim
" 加载项目配置文件 访问命令 \ep
"ru conf/project.vim
" 1}}}
" --------------------------------------------------
" [autocmd自执行区域] {{{1
" --------------------------------------------------
" 自动设置vim高亮as
" au BufNewFile,BufRead *.as,*.ts set filetype=actionscript
" 设置haml coffee的缩进
au BufNewFile,BufRead *.haml,*.sass,*.coffee,*.jade setl sw=2 ts=2 sts=2 et
au BufNewFile,BufRead *.sass,*.scss,*.css setl isk+=-
" 自动设置vim高亮vue
"au BufNewFile,BufRead *.vue set filetype=html
" 自动打开 NERDTreeShowHidden "au VimEnter * NERDTree
" vim配置文件设置换行为unix "au BufNewFile,BufRead *.vim set ff=unix
" 编辑文件时，打开NERDTree "au BufNewFile,BufRead * :NERDTree
"1}}}
" --------------------------------------------------
" [labs 试验区域存放试验配置] {{{1
" --------------------------------------------------
" 修复从windows7任务栏启动时，当前目录为system32。因为system32目录文件过多，在
" 此目录开启NERDTree时较卡
if(has('win32') && match(getcwd(),'system32$')>1) | cd $HOME | en
" set completeopt=longest,menuone
" let g:neocomplcache_enable_at_startup = 1
" let g:loaded_neocomplcache = 1
if(has('win32') && match($PATH,'SlikSvn')<0)
  let $PATH=$PATH.';'.$VIMFILES.'/bin;C:\Program Files\SlikSvn\bin;C:\Program Files\Mercurial;D:\Program Files\PortableGit-1.9.0\bin'
en

" let g:session_file=$VIMFILES.'/conf/session.vim'
"
" fu! LoadSessionFile()
"     if filereadable(g:session_file)
"         exec 'so '.g:session_file
"     en
" endf
"
" au VimEnter * cal LoadSessionFile()
" au VimLeave * exec 'mkvie! '.g:session_file

" {{{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
" Vim启动的时候自动使用当前颜色的背景色以去除Vim的白色边框
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        call libcall(g:MyVimLib, 'ToggleFullScreen', 1)
    endfunction

    let g:VimAlpha = 245
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    map <A-enter> <esc>:call ToggleFullScreen()<cr>
    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
    "增加Vim窗体的不透明度
    nmap <s-t> <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>
    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
" }}}
" 1}}}
" --------------------------------------------------
" [已加载插件说明] {{{1
" --------------------------------------------------
"  1. VIM中文文档
"  2. 自带配色文件
"  3. actionScript脚本高亮
"  4. css背景高亮
"  5. NERDTree 树浏览工具
"  6. ZenCoding 快速编写html、css代码
"  7. Gtrans 翻译 *需python，进行修改
"  8. NERDCommenter 自动注释
"  9. Tabular 用来缩排列表
" 10. Taglist 文档中标签提示
" 11. csExplorer 顔色选择器
" 12. php.vim php缩进文件
" 13. web-indent web缩进文件
" 14. coffee-script coffee高亮等
" 15. autocommand 自执行命令
" 16. matchit html标签匹配跳转
" 17. 自定义配置文件 $VIMFILES/conf
" 18. 日志文件 $VIMFILES/log/
" 1}}}
" --------------------------------------------------
" [更多信息] {{{1
" --------------------------------------------------
" 更新vim帮助 :helptags $VIMFILES/doc
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
