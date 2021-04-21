# [My](#about) configuration for Neovim and Tmux
  My configurations for Tmux and Neovim.

  # Contents:

  * [Tmux](#tmux)
    * [Demo](#demo)
    * [Requirements](#requirements-tmux)
    * [Tmux Status Bar Features](#tmux-status-bar-features)
    * [Tmux Shortcuts in this package](#tmux-shortcuts-in-this-package)
      * [Vim-like navigation](#vim-like-navigation)
    * [Other goodies](#other-goodies)
    * [Installation](#tmux-installation)
  * [Credit](#credit)
  * [Todo](#todo)
  * [About Me](#about)

  ## <a name="tmux">Tmux</a>
  ### <a name="demo">Demo:</a>
  ![Tmux Status Bar image](images/tmux-status-bar-demo.png)
  ### <a name="requirements-tmux"></a> Requirements:
  * MacOSX
  * Mail - Mail application
  * Apple Music - Apple Music Application
  * Battery - <a href="https://github.com/tmux-plugins/tpm" target="_blank">Tmux Plugin Manager</a>

  #### <a name="tmux-status-bar-features">Tmux Status Bar Features:</a>
  * Shows battery status:
    * background color changes depending on the battery percentage
    * Shows battery percentage
    * Shows '🔋' when on battery power, '⚡' when charging, or '👍' when charged
    * shows different stages of shaded '🌕's for different percentages
      * Like this: '🌕', '🌖', '🌖', '🌗', '🌗', '🌘', '🌘', '🌑'
    * shows time remaining in battery

  ![Tmux Status Bar with drained battery power](images/tmux-status-bar-drained.png)
  * Shows Apple Music song currently playing:
    * Shows track name and artist name
  * Shows number of unread mails you have
  * All Mail and Apple music sections disappear when those applications are not in use:
  ![Tmux Status Bar with no sections](images/tmux-status-bar-no-sections.png)
  * Date and time (24-hour format)
  * Computer name

  ## <a name="other-goodies"></a> Other Goodies
  * I recommend installing <a href="https://github.com/tmuxinator/tmuxinator" target="_blank">Tmuxinator</a> as it is a great tool.

  ## <a name="tmux-shortcuts-in-this-package">Tmux Shortcuts in this package:</a>
**By default the prefix key ``Ctrl + b``**
  * Switch panes with arrow keys
  * ``<prefix>`` and then ``Ctrl + c`` to create a new session
  * ``<prefix>`` and then ``Ctrl + f`` to find a session
  * ``<prefix>`` and then ``>`` to swap current pane with the next one
  * ``<prefix>`` and then ``<`` to swap current pane with the previous one
  * ``<prefix>`` and then ``Ctrl + h`` to go to the previous window
  * ``<prefix>`` and then ``Ctrl + l`` to go to the next window
  * ``<prefix>`` and then ``tab`` to go to the last active window
  * ``<prefix>`` and then ``enter`` to enter copy mode
  * ``<prefix>`` and then ``U`` (uppercase) to show url view
  * ``<prefix>`` and then ``r`` to source the .tmux.conf

  ### <a name="vim-like-navigation">Vim-like navigation:</a>
  * ``<prefix>`` and then ``l, h, k, or j`` to move to the next pane to the right, left, up, or down, respectively.
  * ``<prefix>`` and then ``L, H, K, or J`` (uppercase) to resize a pane to the right, left, up, or down, respectively

  ## <a name="tmux-installation">Installation:</a>
  1. Make sure you have all of the [Requirements](#requirements-tmux).
  1. Download the .tmux.conf file and put it in you home directory.
  2. Download the ``segments`` directory and put it in in ``~/.tmux/``.

  # <a name="credit">Credit</a>
  * Inspired by <a href="https://github.com/erikw/tmux-powerline" target="_blank">Tmux-Powerline</a>
  * Some Keyboard shortcuts inspired by <a href="https://github.com/gpakosz/.tmux" target="_blank">https://github.com/gpakosz/.tmux</a>

  # <a name="todo">Todo</a>
  - [ ] Remake mail checker using Gmail api instead of applescript
  # <a name="about">About the creator</a>
  I am a fourteen-year-old budding programmer. This is my first public Github repo. Any feedback would be much appreciated! Please post your comments under the Discussions tab. 
