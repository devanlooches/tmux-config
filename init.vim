set relativenumber
set number
set spell
set spelllang=en_us
set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

call plug#begin('~/.vim/plugged')

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Auto completion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Some color scheme other then default
Plug 'arcticicestudio/nord-vim'

" Emmet for Neovim
Plug 'mattn/emmet-vim'

" Syntax highlighting for a bunch of files
Plug 'sheerun/vim-polyglot'

" Git Wrapper for Vim
Plug 'tpope/vim-fugitive'

" Neovim Rich Presence For Discord
Plug 'andweeb/presence.nvim'

" Markdown preview
 function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release --locked
    else
      !cargo build --release --locked --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

call plug#end()

syntax enable
filetype plugin indent on

 colorscheme nord

let mapleader = " "

" Avoid showing extra messages when using completion
set shortmess+=c

" Emmet
source $HOME/.config/nvim/plug-config/emmetrc.vim

" lsp_config
source $HOME/.config/nvim/plug-config/lspconfigrc.vim

" Rich Presence Config
source $HOME/.config/nvim/plug-config/presencerc.vim
