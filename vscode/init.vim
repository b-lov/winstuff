set incsearch
set ignorecase
set smartcase
let mapleader = "\<Space>"
nmap <leader>w :Write<cr>
nmap <leader>q :Quit<cr>
nnoremap j :call VSCodeCall('cursorDown')<cr>
nnoremap k :call VSCodeCall('cursorUp')<cr>