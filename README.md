# Winstuff

*scripts and infos to make a windows machine ready for development after a clean install*

**first run Windows Update as often as needed**

## [Scoop](https://github.com/lukesampson/scoop)

install *(run in powershell)*

``` 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
```

add buckets

``` 
scoop bucket add nonportable
scoop bucket add extras
scoop bucket add nerd-fonts
```

install apps

``` 
scoop install vcredist2015
scoop install neovim
scoop install firacode (run as admin)
scoop install git
scoop install microsoft-edge-beta-np
scoop install microsoft-terminal
```

## Main Config

clone winstuff folder into home directory

``` 
git clone https://github.com/maxpiano/winstuff.git
```

import AHK scripts into Task Scheduler

enable systemwide dark theme

enable small taskbar

remove taskbar items / cortana / search field

File Explorer: show hidden files and extensions

set desktop background to solid color #282c34

make keyboard repeat faster

create hard link for .ideavimrc *(run in cmd)*

``` 
mklink /h C:\Users\{USER}\.ideavimrc C:\Users\{USER}\winstuff\phpstorm\.ideavimrc
```

## App Config

### VSCode

#### Plugins

##### Neovim

* path to executable:

``` 
C:\Users\{USER}\scoop\apps\neovim\current\bin\nvim.exe 
```

* path to init.vim:

``` 
C:\Users\{USER}\winstuff\vscode\init.vim
```

##### One Dark

#### Settings

* set cursor to non blinking block
* set git post commit command to sync
* set autosave to onFocusChange
* set font to "Fira Code" and enable ligatures

### Edge

#### Extensions

* Bitwarden
* Ublock Origin
* Surfingkeys
* Reddit Enhancement Suite

## Links

* [EN International Keyboard without dead keys](https://github.com/thomasfaingnaert/win-us-intl-altgr/releases/download/v1.0/us-inter.zip)
* [Scoop Package Manager](https://github.com/lukesampson/scoop)
* [Shortcut to User Folder in Taskbar](https://www.howtogeek.com/howto/17415/set-the-windows-explorer-startup-folder-in-windows-7/)
