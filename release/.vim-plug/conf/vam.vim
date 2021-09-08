fu! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = $VIMFILES
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    exe '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  en
  cal vam#ActivateAddons([], {'auto_install' : 0})
endf
cal SetupVAM()

" active plugin
VAMActivate Emmet The_NERD_Tree Tagbar taglist actionscript%1061 matrix%1189
" color
VAMActivate Lucius Color_Scheme_Explorer
" indent match
VAMActivate JavaScript_Indent matchit.zip Tabular
" syntax
VAMActivate vim-coffee-script jade github:gkz/vim-ls github:thinkjs/vimdoc-cn-1.9 github:thinkjs/autocommand github:thinkjs/vim-coloresque github:lambdatoast/elm.vim github:slim-template/vim-slim github:digitaltoad/vim-pug.git "github:posva/vim-vue

" comment
VAMActivate The_NERD_Commenter " other
VAMActivate vim-airline fugitive tComment "Syntastic

VAMActivate fugitive ctrlp Simple_TODO rails "github:thinkjs/TFSCheckout Command-T 
"JavaScript_Libraries_Syntax
