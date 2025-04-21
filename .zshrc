# Add deno completions to search path
export PATH=$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
# source $ZSH/oh-my-zsh.sh
# plugins=(zsh-completions git)

eval "$(starship init zsh)"


setopt completealiases

# Fix ctrl+arrow in some terminals
# use `showkey -a` to see keycodes
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-delete-word
bindkey "^[[3;5~" kill-word



# Na Nananana Na Nananana
alias man='batman' #!!!
alias cat='bat'

# listing filViewer window closed.es
alias ls='exa --icons --color always'
alias ll='exa --long --icons --header --color always --git'
alias la='exa --long --icons --header --color always --git --group  --all --git-ignore --ignore-glob="git|.git"'
alias lla='exa --long --icons --header --color always --git --group  --all'
alias lt='exa --icons --header --color always --git --git-ignore --tree --ignore-glob="git|.git"'
alias lta='exa --icons --header --color always --all --git --git-ignore --tree --ignore-glob="git|.git"'

# Override default help messages to use pretty colors
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# Git aliases 
alias gcam='f() { git commit -am \"$*\" };f'
alias gcamp='f() { git commit -am \"$*\"; git push };f'

# Brainrot 🥰
alias cargo='cargo-mommy'

# zoxide 
eval "$(zoxide init zsh)"
alias cd=z

# dotfiles management
source "${HOME}/.config/dotfiles/dotfiles.sh"

# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit



declare -A DOT_SUBTREES
DOT_SUBTREES[.config/nvim]="git@github.com:red4mber/nvim-config.git"
 



