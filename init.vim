set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

call plug#begin('~/.vim/plugged')
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extentions to built-in LSP, for example, providing type inlay hints
Plug 'tjdevries/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

" Some color scheme other then default
Plug 'arcticicestudio/nord-vim'

" Emmet for neovim
Plug 'mattn/emmet-vim'

" Syntax highlighting for a bunch of files
Plug 'sheerun/vim-polyglot'

" ALE
Plug 'dense-analysis/ale'

" Git Wrapper for Vim
Plug 'tpope/vim-fugitive'


" Markdown prevview
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

" Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

syntax enable
filetype plugin indent on

colorscheme nord

let mapleader = " "

" Avoid showing extra messages when using completion
set shortmess+=c

" Emmet
source $HOME/.config/nvim/plug-config/emmetrc.vim

" ALE
source $HOME/.config/nvim/plug-config/alerc.vim

" lsp_config
source $HOME/.config/nvim/plug-config/lspconfigrc.vim 