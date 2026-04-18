# Starship
eval "$(starship init zsh)"

# Kursor wraca jako migające _
precmd() { echo -ne '\e[3 q'; }

# Aliasy
alias ls='eza'
alias se='sudoedit'
alias dots='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Yazi z cwd
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
