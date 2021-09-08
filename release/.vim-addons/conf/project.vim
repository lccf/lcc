" --------------------------------------------------
"   FileName: project.vim
"       Desc: 项目配置文件
"     Author: lcc
"      Email: leftcold@gmail.com
"    Version: 1.0.0(beta)
" LastChange: 06/07/2012 15:25
"    History: 参见$VIMFILES/log/update.log \ez
" --------------------------------------------------
" au BufRead,BufNewFile Z:/www/market2/* setl ts=2 sw=2 sts=2 ff=unix et
" au BufRead,BufNewFile Z:/www/platform/* setl ff=unix et
" au BufRead,BufNewFile Z:/www/common_platform/* setl ff=unix et
" au BufRead,BufNewFile Z:/www/common_platform/docs/html/_source/* setl ff=unix ts=2 sw=2 sts=2 et
" au BufRead,BufNewFile Y:/www/tpcms/* setl ff=unix ts=2 sw=2 sts=2 et
" au BufRead,BufNewFile Y:/www/lib/ThinkPHP*/* setl ff=unix ts=4 sw=4 sts=4 et
" au BufRead,BufNewFile Z:/www/ltrip/* setl ts=2 sw=2 sts=2 ff=unix et
" au BufRead,BufNewFile Z:/Project/* setl ts=2 sw=2 sts=2 ff=unix et
" au BufRead,BufNewFile Y:/Project/* setl ts=2 sw=2 sts=2 ff=unix et
au BufRead,BufNewFile /Users/leaf/Documents/workspace/jia/* setl ts=4 sw=4 sts=4 ff=unix et
" au BufRead,BufNewFile /Users/leaf/Documents/workspace/wmall-vue/* setl ts=4 sw=4 sts=4 ff=unix et
au FileType haml,sass let b:acmd_auto_encode=0
let g:load_project = 1

" ruby path
if 0
	let g:ruby_path = '.,,'
	fu! GetRubyPath()
python << EOF
# -*- coding:utf-8 -*-
import vim, subprocess
ret = subprocess.Popen("ruby -e 'print ($: + begin; require %q{rubygems}; Gem.all_load_paths.sort.uniq; rescue LoadError; []; end).join(%q{,})'", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE);
vim.command("let l:ruby_path='"+ret.stdout.read()+"'");
EOF
		retu l:ruby_path
	endf
	if has('python') | let g:ruby_path=GetRubyPath() | en
en
