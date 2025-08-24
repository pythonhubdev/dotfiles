export LANG=en_US.UTF-8

# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/vetrichelvan/.zsh/completions:"* ]]; then export FPATH="/Users/vetrichelvan/.zsh/completions:$FPATH"; fi
fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

export PATH=/Users/vetrichelvan/.tiup/bin:$PATH

# bun completions
[ -s "/Users/vetrichelvan/.bun/_bun" ] && source "/Users/vetrichelvan/.bun/_bun"
. "/Users/vetrichelvan/.deno/env"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/vetrichelvan/.lmstudio/bin"
# End of LM Studio CLI section


# opencode
export PATH=/Users/vetrichelvan/.opencode/bin:$PATH

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/vetrichelvan/.config/.dart-cli-completion/zsh-config.zsh ]] && . /Users/vetrichelvan/.config/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Task Master aliases added on 6/30/2025
alias tm='task-master'
alias taskmaster='task-master'
# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export PATH="/opt/homebrew/bin:$PATH"

# Set the path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set the theme
ZSH_THEME="af-magic"

# Enable plugins
plugins=(git autoenv zsh-syntax-highlighting zsh-autosuggestions)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Set PATH
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"

# Init starship
eval "$(starship init zsh)"

# Init pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Flutter and Dart
export PATH=$HOME/flutter/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(zoxide init zsh)"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vetrichelvan/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vetrichelvan/Documents/google-cloud-sdk/path.zsh.inc'; fi

# Yazi setup
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# History settings
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ---- Zoxide (better cd) -----
alias cd="z"


# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"


# Flutter aliases
alias fpg="flutter pub get"
alias fpa="flutter pub add"
alias fpr="flutter pub remove"
alias fpu="flutter pub upgrade"
alias fpum="flutter pub upgrade --major-versions"
alias fpo="flutter pub outdated"
alias fpc="flutter pub clean"
alias drb="dart run build_runner watch --delete-conflicting-outputs"
alias python="python3"

export PATH="/Users/vetrichelvan/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
export PATH=/Users/vetrichelvan/.tiup/bin:$PATH
export PATH=/Users/vetrichelvan/go/bin:$PATH

. "/Users/vetrichelvan/.deno/env"

export XDG_CONFIG_HOME="$HOME/.config"

eval "$(task --completion zsh)"

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export OPENAI_API_KEY="ollama"
export OLLAMA_BASE_URL="http://localhost:11434/v1"
