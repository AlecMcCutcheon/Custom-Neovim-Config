# Custom NeoVim Config

A modded fork of LunarVim/Neovim-from-scratch wfor better windows compatibility

## Config Install Notes:

- Install git
- Scoop install ripgrep
- Scoop install nvim

- Git clone Rep into your ~/AppData/Local/nvim

- Make a nvim_profile.ps1 File, and a Settings.ps1 File in ~/.config/powershell/ Make the dir if it does not exist.

- I made the .ps1 files so that my normal Windows Terminal Pwsh can have a config, The Nvim Pwsh can have a config, and the settings.ps1 is where I have all my aliases for both.

## My Config Changes:

- Changed Nav Keymaps from: Ctrl-h,j,k,l to Alt-Left,Down,Up,Right

- Tweaked Alpha Menu, Added: Pwsh Terminal, File Explorer, Plugin Config ,Open WhichKey Menu (Space Menu), Changed Config Menu Binding to ~/appdata/local/nvim/init.lua

- Replaced Keymap of Crtl-\ to Open Pwsh instead of CMD (Hacky Method WIP)  

## Try out this config

Make sure to remove or move your current `nvim` directory

**IMPORTANT** Requires [Neovim v0.6.0](https://github.com/neovim/neovim/releases/tag/v0.6.0) or [Nightly](https://github.com/neovim/neovim/releases/tag/nightly). 
```
git clone https://github.com/AlecMcCutcheon/Custom-Neovim-Config.git $env:USERPROFILE/AppData/Local/nvim
```

Run `nvim` and wait for the plugins to be installed 

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) 

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```
  sudo apt install xsel
  ```

- On Arch Linux

  ```
  sudo pacman -S xsel
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```
  pip install pynvim
  ```

- Neovim node support

  ```
  npm i -g neovim
  ```
---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

> The computing scientist's main challenge is not to get confused by the complexities of his own making. 

\- Edsger W. Dijkstra
