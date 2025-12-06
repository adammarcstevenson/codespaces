#!/bin/zsh

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

# Create symlinks to key config files
print_info "Symlinking config files"
ln -svf .zshrc ~/.zshrc
mkdir -p ~/.config
ln -svf starship.toml ~/.config/starship.toml
print_success "Symlinked config files"