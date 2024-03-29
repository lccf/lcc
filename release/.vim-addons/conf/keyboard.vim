" --------------------------------------------------
"    FileName: keyboard.vim
"        Desc: 按键配置文件
"      Author: lcc
"       Email: leftcold@gmail.com
"     Version: 1.0.0(beta)
"  LastChange: 05/30/2012 00:28
"     History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------

" --------------------------------------------------
" [文件切换快捷键] {{{
" --------------------------------------------------
nn <A-1> :tabn 1<CR>
nn <A-2> :tabn 2<CR>
nn <A-3> :tabn 3<CR>
nn <A-4> :tabn 4<CR>
nn <A-c> :tabnew<CR>
nn <A-n> :tabp<CR>
nn <A-m> :tabn<CR>
nn <leader>t1 :tabm 0<CR>
nn <leader>t2 :tabm 1<CR>
nn <leader>t3 :tabm 2<CR>
nn <leader>t4 :tabm 3<CR>
nn <leader>tt :tabm 
" }}}
" --------------------------------------------------
" [窗口间移动操作] {{{
" --------------------------------------------------
nn <A-h> <C-w>h
nn <A-l> <C-w>l
nn <A-j> <C-w>j
nn <A-k> <C-W>k
" }}}
" --------------------------------------------------
" [快捷按鍵] {{{
" --------------------------------------------------
ino <A-;> <ESC>
ino <A-o> <ESC>o
ino <A-l> <Right>
ino <A-h> <Left>
ino <A-k> <ESC>O
ino <A-j> <CR>
ino <A-n> <Down>
ino <A-m> <Up>
ino <A-f> <C-o>$
vno <A-f> $
vno <Tab> >
vno <S-Tab> <
no <A-b> <C-o>^
vno <A-b> ^
ino <A-3> ######<C-o>2<Left>
ino <A-9> ()<Left>
ino <A-0> (  )<Left><Left>
ino <A-'> ""<Left>
ino <A-[> {}<Left>
ino <A-]> {}<Left><CR><Esc>O
ino <A-=> ++<Left>
ino <F5> <C-R>=strftime('%m/%d/%Y %H:%M')<CR>
nn <silent><F2> :exec("NERDTree ".expand('%:p:h'))<CR>
nn <A-r> :noh<CR>
nn <A-b> :CtrlPBuffer<CR>
" 选中后删除
vno <BS> d
" 复制
vno <A-y> "+y
" 剪切
vno <A-i> "+x
" 粘贴
map <A-p> "+gP
" 命令行下粘贴
cmap <A-p> <C-R>+
exe 'inoremap <script> <A-p>' paste#paste_cmd['i']
exe 'vnoremap <script> <A-p>' paste#paste_cmd['v']
" CTRL-A is Select all(CTRL-A实现全选)
"noremap <C-A> gggH<C-O>G
"inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
"onoremap <C-A> <C-C>gggH<C-O>G
"snoremap <C-A> <C-C>gggH<C-O>G
"xnoremap <C-A> <C-C>ggVG
ino <F1> <Esc>
" }}}
" --------------------------------------------------
" [宏执行热键] {{{
" --------------------------------------------------
nn <F9> @1
nn <F10> @2
nn <F11> @3
nn <F12> @4
" }}}
" --------------------------------------------------
" [快捷文件操作] {{{
" --------------------------------------------------
" 快捷退出
nn <A-q> :q!<CR>
" Ctrl+s保存
no <C-s> :up<CR>
vno <C-s> <C-C>:up<CR>
ino <C-s> <C-O>:up<CR>
" 关闭一个标签页
nn <leader>tc :tabc!<CR>
" 快捷设置文档类型
nn <A-t>h :set ft=html<CR>
nn <A-t>c :set ft=css<CR>
nn <A-t>p :set ft=php<CR>
nn <A-t>j :set ft=javascript<CR>
" }}}
" --------------------------------------------------
" [快捷编辑配置文件] {{{
" --------------------------------------------------
nn <leader>ea :tabnew $VIMFILES/conf/main.vim<CR>
nn <leader>es :tabnew $VIMFILES/conf/set.vim<CR>
nn <leader>ed :tabnew $VIMFILES/conf/plugin.vim<CR>
nn <leader>ef :tabnew $VIMFILES/conf/function.vim<CR>
nn <leader>eg :tabnew $VIMFILES/conf/keyboard.vim<CR>
nn <leader>ec :tabnew $VIMFILES/conf/command.vim<CR>
nn <leader>ev :tabnew $VIMFILES/conf/vam.vim<CR>
nn <leader>ep :tabnew $VIMFILES/conf/project.vim<CR>
nn <leader>ez :tabnew $VIMFILES/log/update.log<CR>
" vim:sw=4:ts=4:sts=4:noet:fdm=marker:fdc=1
ino <A-b> <C-o>^
