# My Dotfiles

This repository contains my personal dotfiles for various applications, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Managed Applications

-   **[Alacritty](https://github.com/alacritty/alacritty)** - A cross-platform, GPU-accelerated terminal emulator.
-   **[Dunst](https://github.com/dunst-project/dunst)** - A lightweight and customizable notification-daemon.
-   **[mpv](https://mpv.io/)** - A free, open source, and cross-platform media player.
-   **[Neovim](https://neovim.io/)** - A hyper-extensible Vim-based text editor.
-   **[Rofi](https://github.com/davatorium/rofi)** - A window switcher, application launcher and dmenu replacement.
-   **[Starship](https://starship.rs)** - The minimal, blazing-fast, and infinitely customizable prompt for any shell!
-   **[Sway](https://swaywm.org/)** - An i3-compatible Wayland compositor.
-   **[Tmux](https://github.com/tmux/tmux/wiki)** - A terminal multiplexer.
-   **[Waybar](https://github.com/Alexays/Waybar)** - Highly customizable Wayland bar for Sway and Wlroots based compositors.
-   **[yt-dlp](https://github.com/yt-dlp/yt-dlp)** - A feature-rich command-line audio/video downloader.
-   **[Zsh](https://www.zsh.org/)** - A shell designed for interactive use, although it is also a powerful scripting language.

## Credits

A big thanks to the following projects for the themes and inspiration:

-   **[adi1090x/rofi](https://github.com/adi1090x/rofi)**
-   **[nyoom-engineering/oxocarbon](https://github.com/nyoom-engineering/oxocarbon)**

## Usage

To install these dotfiles, clone the repository and use GNU Stow to create the symlinks for the desired applications:

```bash
git clone https://github.com/your-username/your-repo-name.git ~/dotfiles
cd ~/dotfiles
stow alacritty dunst mpv nvim rofi starship sway tmux waybar yt-dlp zsh
```
