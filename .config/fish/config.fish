# XDG
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x XDG_CACHE_HOME "$HOME/.cache"

# Edytor i man
set -x MANPAGER '/usr/bin/nvim +Man!'
set -x VISUAL /usr/bin/nvim
set -x EDITOR /usr/bin/nvim

# Cały inny syf
set -x GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -x npm_config_prefix "$XDG_DATA_HOME/npm"
set -x RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x _ZO_DATA_DIR "$XDG_CONFIG_HOME/zoxide"
set -x OLLAMA_HOME "$XDG_STATE_HOME/ollama"
set -x __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME/nv"
set -x BAT_THEME "Catppuccin Mocha"
set -x PULSE_COOKIE "$XDG_STATE_HOME/pulse/cookie"
set -x STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"
set -x STARSHIP_CACHE "$XDG_CACHE_HOME/starship/"
set -x BAT_PAGING 'never'

if status is-login
    uwsm start hyprland-uwsm.desktop
end

if status is-interactive
    # Starship
    starship init fish | source
    enable_transience

    # Aliasy
    alias ls eza
    alias se sudoedit
    alias dots 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    alias ff 'clear && fastfetch'

    # $PATH of pain
    fish_add_path "$XDG_DATA_HOME/npm/bin"
    fish_add_path "$HOME/.local/bin"
    fish_add_path "$CARGO_HOME/bin"
    fish_add_path "$HOME/.lmstudio/bin"
end
