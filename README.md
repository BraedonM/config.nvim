# Configuration for Neovim
Originally a fork of [**kickstart.nvim**](https://github.com/nvim-lua/kickstart.nvim) modified by Braedon McRae

## Installation

### Install Neovim

I run this configuration using WSL Ubuntu, so other platforms may have differences.
This is for the latest stable Neovim installation, since `sudo` does not get latest:

1. Install `homebrew` (if it is not already installed) and follow the given instructions:
	`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew install neovim`
	Neovim should be installed in `~/.config/nvim/`
3. Clone this repo into `~/.config/nvim/`

### Install External Dependencies

- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- ripgrep (also available [here](https://github.com/BurntSushi/ripgrep#installation))
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
```
sudo apt install make gcc ripgrep unzip git xclip
```
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true

#### Clone This Repo

```
git clone https://github.com/BraedonM/config.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Everything should auto-install upon first run (`:Lazy` for more plugin info):
```
$ nvim
```
