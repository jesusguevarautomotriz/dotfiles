# dotfiles
.dotfiles are user configuration files for Linux distributions, are saved at home folder

Tested and working on Linux and Cygwin.


<!-- vim-markdown-toc GFM -->

* [Requeriments:](#requeriments)
* [Quick Start](#quick-start)
* [Installed plugins and config details](#installed-plugins-and-config-details)
    * [Tmux (#tmux)](#tmux-tmux)
        * [Installed plugins, Config details, enabled options, tweaked settings](#installed-plugins-config-details-enabled-options-tweaked-settings)
* [Who has that versions](#who-has-that-versions)

<!-- vim-markdown-toc -->

### Requeriments:
For install on Lubuntu 16.04 (has tmux 2.1) and above.
- bash
- git
-tmux 1.9 (or highger).

For Lubuntu 14.04  (has tmux 1.8)
Use branch lubuntu1404 wich uses Tundle as tmux plugin manager due tmux 1.9 requeriment

### Quick Start

1.- Introduction
2.- Setup
3.- Configure
4.- Install
5.- Optional

### Installed plugins and config details
Aditional and detailled info about requermiments and configuration (TL;DR)    

#### Tmux (#tmux)
##### Installed plugins, Config details, enabled options, tweaked settings      
* [Increased scrollback buffer size](https://stackoverflow.com/questions/18760281/how-to-increase-scrollback-buffer-size-in-tmux)

* Tmux Plugin Manger (TPM)
    * Requeriments
        * Tmux version 1.9 (or higher)
        * git
        * bash

    * Tmux resurrect - Restore tmux environment after system restart.
        * Requeriments
            *  bash
            *  tmux 1.9 or higher

    * Tmux resurrect - Restore tmux environment after system restart.
        * Requirements
            * bash
            * tmux 1.9 or higher

        * Config details
            * [Restoring vim and neovim sessions](https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_vim_and_neovim_sessions.md)
            * [restoring pane contents](https://github.com/tmux-plugins/tmux-resurrect/blob/master/docs/restoring_pane_contents.md) (experimental)

    * tmux-continuum - automatic restoring and continuous saving of tmux env
        * Requirements
            * bash
            * tmux 1.9 or higher,
            * tmux-resurrect plugin

        * Config details
            * [continuum status in tmux status line](https://github.com/tmux-plugins/tmux-continuum/blob/master/docs/continuum_status.md)
            * [Save interval](https://github.com/tmux-plugins/tmux-continuum/issues/24)

    * tmux-copycat: A plugin that enhances tmux search 
        * Config details, enabled options, tweaked settings
            * `tmux.conf` file has been configured for manual installation of tmux-copycat plugin as required for tmux 2.3 and earlier versions (https://github.com/tmux-plugins/tmux-copycat/blob/master/docs/installation_for_tmux_2.3.md) for Lubuntu 16.04 (which has tmux 2.1.
            * [Increased scrollback buffer size](#tmux)

### Who has that versions
Lubuntu 14.04
- tmux 1.9

Lubuntu 16.04
- tmux 2.1

Futher reading

We follow this approach:

[How To Use Git to Manage your User Configuration Files on a Linux VPS | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-use-git-to-manage-your-user-configuration-files-on-a-linux-vps)

Additional sources:

[The best way to store your dotfiles: A bare Git repository - Atlassian Developers](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

[Using Git and Github to Manage Your Dotfiles – the smalley creative blog](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

[Getting started with dotfiles – Lars Kappert – Medium](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789)

More extensive compilation:

[GitHub does dotfiles - dotfiles.github.io, Your unofficial guide to dotfiles on GitHub](https://dotfiles.github.io/)
