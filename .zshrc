# Add some color to my life
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Custom command aliases
alias ll='ls -lah'
alias reload='source ~/.zshrc'

# Set CotEditor as the default editor
export EDITOR="code --wait"

# Load Starship prompt
eval "$(starship init zsh)"