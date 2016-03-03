Vim-phpfmt
==========

***[This project follows a Code of Conduct.](https://github.com/phpfmt/code-of-conduct)***

Inspired by vim-php-cs-fixer. This plugin integrates [phpfmt](https://github.com/phpfmt/fmt).

This plugin will execute the `fmt.phar` command on the directory or file (depends on which command you call). See options to know how to customize that.

The plugin comes with `phpfmt fmt.phar` embedded, it should suffice.

If you see any improvement or question, please, contribute or create an issue.

**Keeping up-to-date**:

This plugin updates `fmt.phar` during VIM opening. If this fails, please open an issue stating what happens and possible logs.

**Options available**:

```viml
let g:phpfmt_on_save = get(g:, 'phpfmt_on_save', 1) " format on save (autocmd)
let g:phpfmt_php_path = "php"               " Path to PHP
"let g:phpfmt_prepasses_list = "AutoPreincrement,JointToImplode"
"let g:phpfmt_passes_list = "ReturnNull"
let g:phpfmt_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
```

Default mapping is `<leader>pcf` (formats a file) and `<leader>pcd` (formats the whole directory of the file).

If you want to change it, update `plugin/phpfmt.vim` file, editing these lines:

```viml
nnoremap <silent><leader>pcd :call PhpFmtFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpFmtFixFile()<CR>
```

# Installation

Via **[Vundle](https://github.com/gmarik/vundle)**, add:

```viml
Bundle 'dericofilho/vim-phpfmt'
```

Open VIM and execute:
`:PluginInstall`

Via **[Pathogen](https://github.com/tpope/vim-pathogen)**, do:

```bash
cd ~/.vim/bundle
git clone git@github.com:dericofilho/vim-phpfmt.git
```

Via **[vim-plug](https://github.com/junegunn/vim-plug)**, add:
```
Plug 'phpfmt/vim-phpfmt'
```
Open VIM and execute: 
`:PlugInstall`
