#vim-integration

A vim one-click installation kits for `PHP`, with the least amount of steps to configure a full vim working environment.

<br>

###Installation

*According to the following steps to install the installation package to the system*

```bash
rm ~/.vim -rf

mkdir ~/.vim

cd ~/.vim

git clone https://github.com/chawuciren/vim-integration.git ./

ln -s ~/.vim/vimrc ~/.vimrc

git submodule init

git submodule update

```

<br><br>

###Documentation

*Hotkeys*:

| Key | Desc |
| -- | -- |
| Ctrl+j j | The current line moves to the next line |
| Ctrl+j k | The current line moves to the previous line |
| Ctrl+j y | Copy current line and paste it to the next line |
| Ctrl+j d | Delete the current line |
| Ctrl+j n | At the tail completion `;` symbols and line breaks |
| Ctrl+j m | At the tail completion `{` symbols and line breaks |
| Ctrl+j l | Add a blank line |
| -- | -- |
| Ctrl+m y | Turn on/off the `NERDTree` plugin |
| Ctrl+m u | Turn on/off the `TagBar` plugin |
| Ctrl+m n | Open the next `buffer` in buffer list |
| Ctrl+m b | Open the previous `buffer` in buffer list |
| Ctrl+m s | Remove the `.swp` and `.swo` files in the directory |

