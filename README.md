# Dotfiles

My personal configuration files for various tools and applications.

## Structure

```
.
├── bash/          # Bash configuration
├── zsh/           # Zsh configuration
├── git/           # Git configuration
├── vim/           # Vim configuration
├── tmux/          # Tmux configuration
├── install.sh     # Installation script
└── README.md      # This file
```

## Installation

Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Run the installation script:

```bash
chmod +x install.sh
./install.sh
```

The script will create symlinks from your home directory to the dotfiles in this repository.

## Manual Installation

If you prefer to install specific configurations manually:

```bash
# Example: Link zsh config
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Example: Link git config
ln -sf ~/.dotfiles/git/.gitconfig ~/.gitconfig
```

## Updating

Pull the latest changes:

```bash
cd ~/.dotfiles
git pull
```

## Customization

Feel free to modify these configurations to suit your needs. Add your own custom settings and tools.

## License

MIT
