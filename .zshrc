# Add deno completions to search path
export PATH=$HOME/.cargo/bin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

#
# dotfiles management script
#
DOTFILES="$HOME/.config/dotfiles"

source "$DOTFILES/dotfiles.sh"

declare -A DOT_SUBTREES
DOT_SUBTREES[.config/nvim]="git@github.com:red4mber/nvim-config.git"


# 
# Loading plugins using Antigen
#
ANTIGEN_PATH="$DOTFILES/antigen"
ADOTDIR="$HOME/.config/antigen"
ANTIGEN_LOG="$ADOTDIR/antigen.log"
source "$DOTFILES/antigen/antigen.zsh"

# Load OMZ Core library
antigen use oh-my-zsh
# - Bundles from OMZ Repos
antigen bundle git
# - Command line syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
# - Fish-like auto suggestions 
antigen bundle zsh-users/zsh-autosuggestions
# - History fuzzy finder 
antigen bundle joshskidmore/zsh-fzf-history-search
# - Auto-loads .env files on entering a folder 
antigen bundle Tarrasch/zsh-autoenv
# - fzf-like tab autocompletion
 antigen bundle Aloxaf/fzf-tab

antigen theme powerline10k 

antigen apply


#
## fzf-tab 
#

zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup


zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0

zstyle ':fzf-tab:*' fzf-bindings 'space:accept'
zstyle ':fzf-tab:*' accept-line enter

zstyle ':fzf-tab:*' switch-group '<' '>'

#

eval "$(starship init zsh)"


setopt completealiases

# Fix ctrl+arrow in some terminals
# use `showkey -a` to see keycodes
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-delete-word
bindkey "^[[3;5~" kill-word


#
## General Aliases 
#

# 
eza_opts="--icons always --color always --git --ignore-glob='git|.git' --git-ignore "
alias  ls="eza $eza_opts"
alias  ll="eza --long $eza_opts" 
alias  la="eza --long --all $eza_opts"
alias lar="eza --long --all --recurse $eza_opts"
alias  lt="eza --tree $eza_opts"
alias lta="eza --tree --all $eza_opts" 

# Mildly better cd
eval "$(zoxide init zsh)"
alias cd=z

# Pretty Colors
alias man='batman'
alias cat='bat'

# Override default help messages 
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'


# Git aliases 
alias gcam='f() { git commit -am \"$*\" };f'
alias gcamp='f() { git commit -am \"$*\"; git push };f'

# Brainrot  
alias cargo='cargo-mommy'


# 
## Custom dotfiles management script
#
source "$DOTFILES/dotfiles.sh"

declare -A DOT_SUBTREES
DOT_SUBTREES[.config/nvim]="git@github.com:red4mber/nvim-config.git"
 

#
## Run fastfetch on every new shell for extra style points
#
fastfetch --config $HOME/.config/fastfetch/compact.jsonc


. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
