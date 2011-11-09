LCC
    --我的VIM配置文件

一、安装需求
    1、系统windows或linux

    2、vim版本7.2或者更高版本
        *热键映射需要GUI版本

    3、Python需求2.x
        linux发行版本一般自带

        windows版本可以从以下地址下载
        32位： http://www.python.org/ftp/python/2.7.2/python-2.7.2.msi
        64位： http://www.python.org/ftp/python/2.7.2/python-2.7.2.amd64.msi

    4、ctags
        linux版本通过包管理器安装 sudo apt-get install ctags
        *以ubuntu发行版本为示例

        windows版本的ctags位于 release/.vim/bin 目录中，将ctags.exe
        复制到C:/windows目录即可

二、安装方式
    1、复制文件安装
        将 release/ 文件夹中的 .vimrc 文件和 .vim 文件夹复制到用户目录 ~/ 下
        windows 系统用户目录为 %USERPROFILE% 环境变量所指目录
        win7/2008 对应目录为 C:/User/Administrator
        xp/2003 对应目录为 C:/Documents and Settings/Administrator

    2、脚本安装
        后续会推出自动安装脚本，请关注

" vim:ts=4
