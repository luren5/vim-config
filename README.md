#### vim-config
- 1、按[此教程](http://tonybai.com/2014/11/07/golang-development-environment-for-vim/)里面的步骤配置go开发环境
- 2、添加部分其它插件，都可以通过`PluginInstall`安装。另外定义些命令别名，具体查看`.vimrc`
- 3、将`.bash_profile` 文件里的内容追回到`$HOME/.bash_profile`,然后执行`source $HOME/.bash_profile`
- 4、`bin` 目录下的内容为`go`相关的可执行文件,通过`:GoInstallBinaries`安装的过程中可能会由于墙的原因导致失败，可将此项目`bin`目录下的内容直接复制到`$GOBIN`目录下（如有相同的直接跳过）
