#!/usr/bin/env bash

# Dotfiles installation script
# This script creates symlinks from the home directory to dotfiles in ~/.dotfiles

set -e

DOTFILES_DIR="$HOME/.dotfiles"
BACKUP_DIR="$HOME/.dotfiles_backup"

echo "Installing dotfiles..."

# Create backup directory
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Creating backup directory at $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
fi

# Function to create symlink
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Backup existing file if it exists and is not a symlink
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Backing up existing $target"
        mv "$target" "$BACKUP_DIR/$(basename "$target").backup"
    fi
    
    # Remove existing symlink if it exists
    if [ -L "$target" ]; then
        rm "$target"
    fi
    
    # Create symlink
    echo "Creating symlink: $target -> $source"
    ln -sf "$source" "$target"
}

# Install bash config
if [ -f "$DOTFILES_DIR/bash/.bashrc" ]; then
    create_symlink "$DOTFILES_DIR/bash/.bashrc" "$HOME/.bashrc"
fi

# Install zsh config
if [ -f "$DOTFILES_DIR/zsh/.zshrc" ]; then
    create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
fi

# Install git config
if [ -f "$DOTFILES_DIR/git/.gitconfig" ]; then
    create_symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
fi

# Install vim config
if [ -f "$DOTFILES_DIR/vim/.vimrc" ]; then
    create_symlink "$DOTFILES_DIR/vim/.vimrc" "$HOME/.vimrc"
fi

# Install tmux config
if [ -f "$DOTFILES_DIR/tmux/.tmux.conf" ]; then
    create_symlink "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
fi

echo ""
echo "✓ Dotfiles installation complete!"
echo "Backups of your original files (if any) are in $BACKUP_DIR"
