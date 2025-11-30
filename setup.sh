#!/bin/sh

# Print functions
function print_error {
    print -P "%B%F{red}% ✘ $1%f%b"
}
function print_info {
    print -P "%B%F{cyan}% ℹ $1%f%b"
}
function print_success {
    print -P "%B%F{green}% ✔ $1%f%b"
}

# Update apt packages
print_info "Updating apt packages"
apt update
print_success "Packages updated"

# Install Starship
print_info "Installing Starship"
apt install starship
print_success "Starship installed"

# Create symlinks to key config files
print_info "Symlinking config files"
ln -svf .zshrc ~/.zshrc
ln -svf starship.toml ~/.config/starship.toml
print_success "Symlinked config files"