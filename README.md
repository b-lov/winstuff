<h1 align="center">Winstuff</h1>

*scripts and infos to make a windows machine ready for development after a clean install*

**after installation run windows update as often as needed**

## [Scoop](https://github.com/lukesampson/scoop)

* install *(powershell)*:
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
iwr -useb get.scoop.sh | iex
```
* add buckets:
```
scoop bucket add nonportable
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add jetbrains
scoop bucket add yuanying https://github.com/yuanying1199/scoopbucket
scoop bucket add wsl https://git.irs.sh/KNOXDEV/wsl
```
<!-- scoop bucket add Ash258 'https://github.com/Ash258/Scoop-Ash258.git' -->
* install apps:
```
scoop install vcredist2015
scoop install vcredist2017
scoop install neovim
scoop install firacode (run as admin)
scoop install git
scoop install microsoft-edge-beta-np
scoop install microsoft-terminal
scoop install phpstorm
scoop install phonerlite
scoop install wsl-ubuntu1804
scoop install php
scoop install composer
```
<!-- scoop install Ash258/docker -->

## Windows Config

* clone winstuff folder into home directory: `git clone https://github.com/maxpiano/winstuff.git`
* import AHK scripts into task Scheduler
* enable systemwide dark theme
* enable small taskbar
* remove taskbar items / cortana / search field
* file explorer: show hidden files and extensions
* set desktop background to solid color #282c34
* make keyboard repeat faster
* set time and date formats
* [shortcut to user folder in taskbar](https://www.howtogeek.com/howto/17415/set-the-windows-explorer-startup-folder-in-windows-7/)

## App Config

### Windows Terminal
* TODO: hardlink settings.json

### VSCode
* #### Plugins
    * Neovim
        * path to executable: `C:\Users\{USER}\scoop\apps\neovim\current\bin\nvim.exe`
        * path to init.vim: `C:\Users\{USER}\winstuff\vscode\init.vim`
    * One Dark
* #### Settings
    * TODO: (version control settings.json, and keybindings.json)
    * set cursor to non blinking block
    * set git post commit command to sync
    * set autosave to onFocusChange
    * set font to "Fira Code" and enable ligatures

### Edge
* #### Extensions
    * Bitwarden
    * Ublock Origin
    * Surfingkeys
    * Reddit Enhancement Suite
* #### Settings
    * on startup > continue where you left off
    * search engine > google

### PhpStorm
* [make exception in windows firewall](https://intellij-support.jetbrains.com/hc/en-us/articles/360005028939)
* create hard link for .ideavimrc *(run in cmd)*: ` mklink /h C:\Users\{USER}\.ideavimrc C:\Users\{USER}\winstuff\phpstorm\.ideavimrc `

## WSL 2
* install *(admin powershell)*:
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
* restart machine
* (optional) [install wsl2 kernel](https://aka.ms/wsl2kernel)
```
wsl --set-default-version 2
```
* install ubuntu from windows store (or scoop)
* run from ubuntu:
```
sudo bash -c 'for i in update {,dist-}upgrade auto{remove,clean}; do apt-get $i -y; done'
```

## TODO
* debloat
* tronscript
* composer
* php
* docker
* xampp???
* [EN International Keyboard without dead keys](https://github.com/thomasfaingnaert/win-us-intl-altgr/releases/download/v1.0/us-inter.zip)