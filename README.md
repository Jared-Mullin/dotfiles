# My Dotfiles

This repository contains my personal dotfiles for various applications, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Managed Applications

-   **[Alacritty](https://github.com/alacritty/alacritty)** - A cross-platform, GPU-accelerated terminal emulator.
-   **[Dunst](https://github.com/dunst-project/dunst)** - A lightweight and customizable notification-daemon.
-   **[i3](https://i3wm.org/)** - A tiling window manager for X11.
-   **[Neovim](https://neovim.io/)** - A hyper-extensible Vim-based text editor.
-   **[Polybar](https://github.com/polybar/polybar)** - A fast and easy-to-use status bar.
-   **[Rofi](https://github.com/davatorium/rofi)** - A window switcher, application launcher and dmenu replacement.
-   **[Starship](https://starship.rs/)** - The minimal, blazing-fast, and infinitely customizable prompt for any shell!
-   **[Tmux](https://github.com/tmux/tmux/wiki)** - A terminal multiplexer.
-   **[Zsh](https://www.zsh.org/)** - A shell designed for interactive use, although it is also a powerful scripting language.

## Credits

A big thanks to the following projects for the themes and inspiration:

-   **[adi1090x/polybar-themes](https://github.com/adi1090x/polybar-themes)**
-   **[adi1090x/rofi](https://github.com/adi1090x/rofi)**

## Usage

To install these dotfiles, clone the repository and use GNU Stow to create the symlinks for the desired applications:

```bash
git clone https://github.com/your-username/your-repo-name.git ~/dotfiles
cd ~/dotfiles
stow alacritty dunst i3 nvim polybar rofi starship tmux zsh
```
