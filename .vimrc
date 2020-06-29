" basics
set visualbell
set noerrorbells
set number relativenumber
set incsearch
set ignorecase
set smartcase
set showmode
set scrolloff=5

" mappings
let mapleader = " "
nnoremap H gT
nnoremap L gt
nnoremap <leader>w :w <CR>
nnoremap <leader>q :q <CR>
map <leader>d :action Debug<CR>
map <leader>r :action RenameElement<CR>
map <leader>c :action Stop<CR>
map <leader>z :action ToggleDistractionFreeMode<CR>
map <leader>s :action SelectInProjectView<CR>
map <leader>a :action Annotate<CR>
map <leader>h :action Vcs.ShowTabbedFileHistory<CR>
map <S-Space> :action GotoNextError<CR>
map <leader>b :action ToggleLineBreakpoint<CR>
map <leader>o :action FileStructurePopup<CR>

" plugins
set surround
set multiple-cursors
set commentary
set argtextobj
set easymotion
set textobj-entire
set ReplaceWithRegister

" plugin settings
map <leader>f <Plug>(easymotion-s)
map <leader>e <Plug>(easymotion-f)

" idea settings
set ideajoin
set ideastatusicon=gray
set iderefactormode=keep