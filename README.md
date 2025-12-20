<h1 align="center">
  <img src="https://img.icons8.com/?size=128&id=6M7Il2xpbLYM&format=png&color=458588" width="128" height="128" alt="Dotfiles-Arch" />
  <br>
  Dotfiles
  <br>
</h1>

<h3 align="center">My personal Arch Linux/CachyOS + Hyprland configuration and dotfiles</h3>

<p align="center">
  <img alt="Version 0.2.6" src="https://img.shields.io/badge/Version-0.2.6-green") />
  <img alt="Hyprland 0.52.2" src="https://img.shields.io/badge/Hyprland-0.52.2-%2300BFE6">
  <img alt="" src="https://img.shields.io/badge/License-MIT-blue") />
</p>

<p align="center">
  <a href="#components">Components</a> •
  <a href="#installation">Installation</a> •
  <a href="#license">License</a>
</p>

![Desktop demo](/desktop.png)
<p align="center">Desktop 0.2.5</p>

## Components

### To be added

## Installation

#### 1. Download the dotfiles using git
```bash
$ git clone https://github.com/LucasTF/dotfiles ~/.dotfiles
```
#### 2. Activate the configurations using GNU stow
```bash
$ stow -d ~/.dotfiles/configs -t ~/ <config_name>
```
Replace _<config_name>_ with the dotfiles you want to import

## License

MIT
