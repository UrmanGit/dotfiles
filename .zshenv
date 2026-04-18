# Niech samo .zshrc sobie lepsze miejsce znajdzie
export ZDOTDIR="$HOME/.config/zsh"

# NEOVIM!!!!1!!!
export MANPAGER='/usr/bin/nvim +Man!'
export VISUAL='/usr/bin/nvim'
export EDITOR='/usr/bin/nvim'

# XDG, żeby był ład i porządek
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Nie wiem co to ale buja
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# Lepsze miejsce dla NPM
export npm_config_cache="$XDG_CACHE_HOME/npm"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node/repl_history"
export npm_config_prefix="$XDG_DATA_HOME/npm"

# Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Zoxide
_ZO_DATA_DIR="$XDG_CONFIG_HOME/zoxide"

# Ollama
export OLLAMA_HOME="$XDG_STATE_HOME/ollama"

# Nvidia
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"

# Bat
export BAT_THEME="Catppuccin Mocha"

# Pulse
export PULSE_COOKIE="$XDG_STATE_HOME/pulse/cookie"

# $PATH of pain
export PATH="$XDG_DATA_HOME/npm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$CARGO_HOME/bin:$PATH"
