export ZSH=$HOME/.oh-my-zsh

plugins=(
    git
    macos
    zsh-syntax-highlighting
    zsh-autosuggestions
)

zstyle ':omz:update' mode auto

ZSH_THEME="robbyrussell"

# alias
alias vi=nvim
alias vim=nvim

source $ZSH/oh-my-zsh.sh
