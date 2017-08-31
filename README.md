VimBox
===

一个定位于 PHP 开发的轻量 Vim 配置包，只包含开发中必要的部分插件，并定义开发中高频使用的一些操作的快捷键。

安装方便开箱即用。适合用于快速部署服务器等环境所需的 Vim 或刚接触 Vim 想要快速上手的朋友尝试。

<br>

![vim box logo](https://raw.githubusercontent.com/chawuciren/vim-box/master/doc/images/logo.png)



<br>

依赖
---

*安装前请先确认你的环境中已经安装了下面列表中所需的依赖*

1. PHP7
2. Node.js
3. ack
4. js-beautify

<br>

安装
---

1. 进入用户的 home 目录，执行下面命令：

```bash
$ cd ~

$ rm ~/.vim -rf

$ mkdir ~/.vim

$ cd ~/.vim

$ git clone https://github.com/chawuciren/vim-box.git ./

$ ln -s ~/.vim/vimrc ~/.vimrc

$ git submodule init

$ git submodule update

```

2. 完成上述步骤后，打开 Vim：

```bash
$ vim
```

3. 使用 Vundle 安装所有插件，在 Vim 中执行下面命令：

```bash
:VundleInstall
```

<br><br>

文档
---

*快捷键*:

| 快捷键| 说明 |
| --- | --- |
| Ctrl+j j | 将当前行移动到下一行 |
| Ctrl+j k | 将当前行移动到上一行 |
| Ctrl+j y | 复制当前行，并在后面一行粘贴 |
| Ctrl+j d | 删除当前行 |
| Ctrl+j n | 在行尾添加 `;` 符号并换行 |
| Ctrl+j m | 在行尾添加 `{` 符号并换行 |
| Ctrl+j l | 直接换行 |
| Ctrl+m y | 打开/关闭 `NERDTree` 插件 |
| Ctrl+m u | 打开/关闭 `TagBar` 插件|
| Ctrl+m n | 切换到 `buffer 列表` 中的下一个 `buffer` |
| Ctrl+m b | 切换到 `buffer 列表` 中的上一个 `buffer` |
| Ctrl+m s | 清空当前项目目录下的 `.swp` and `.swo` 文件 |
| Ctrl+n | 重复执行上一步的快捷键 |

<br>

*命令*：

| 命令 | 说明 |
| --- | --- |
| :Bdo | 关闭除当前 `buffer` 外的所有 `buffer` |
| :Bdc | 关闭当前 `buffer` |
| :Bp | 切换到上一个 `buffer` |
| :Bp | 切换到下一个 `buffer` |

