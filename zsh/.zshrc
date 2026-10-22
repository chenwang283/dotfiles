export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/Users/chenwang/.bun/_bun" ] && source "/Users/chenwang/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

PROMPT='%n %1~ %% '

alias reload='source ~/.zshrc'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
