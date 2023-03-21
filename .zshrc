export ZSH=$HOME/.oh-my-zsh

plugins=(
    git
    macos
    zsh-syntax-highlighting
    zsh-autosuggestions
)

zstyle ':omz:update' mode auto

export NVIM_TUI_ENABLE_TRUE_COLOR=1
ZSH_THEME="Lukerandall"

alias lg=lazygit
alias vi=nvim
alias vim=nvim

alias mount_vm="sshfs -o default_permissions bwo239@bwo239.cs.uky.edu:/home/bwo239/CS441G ./"

source $ZSH/oh-my-zsh.sh

# If you need to have llvm first in your PATH, run:
#  echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc

export PATH="$HOME/.ampl/bin:$PATH"
export PATH=$PATH:/Applications/MATLAB_R2022b.app/bin
# export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3


export PATH="$PATH:$HOME/.local/bin"
