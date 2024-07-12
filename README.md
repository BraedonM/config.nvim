# Configuration for Neovim
Originally a fork of [**kickstart.nvim**](https://github.com/nvim-lua/kickstart.nvim) modified by Braedon McRae

## Installation

### Install Neovim

I run this configuration using WSL Ubuntu, so other platforms may have differences.
This is for the latest stable Neovim installation, since `apt` does not get latest:

1. Install `homebrew` (if it is not already installed) and follow the given instructions:
	`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. `brew install neovim`
	- Neovim should be installed in `~/.config/nvim/`

### Install External Dependencies

- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- ripgrep (also available [here](https://github.com/BurntSushi/ripgrep#installation))
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
```
sudo apt install make gcc ripgrep unzip git xclip
```
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - If you have it set `vim.g.have_nerd_font` in `init.lua` to true
  - I use [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip)
- Node.js is required for the GitHub Copilot plugin
```bash
# Install nvm
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# Install node
$ nvm install node
```

### Clone This Repo

```
git clone https://github.com/BraedonM/config.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Everything should auto-install upon first run:
```
$ nvim
```

### Plugin Config

- To view plugin information, use `:Lazy`
- For GitHub Copilot, use `:Copilot auth` to connect your GitHub account to begin using Copilot.
