# home brew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

# znap
zstyle ':znap:*' repos-dir ~/.config/znap
source ~/zsh-snap/znap.zsh


export ZSH=$HOME/.oh-my-zsh

# alias
alias ls=lsd
alias ofd="open ./"
alias vi=nvim
alias vim=nvim

# plugins
znap prompt sindresorhus/pure
# `znap source` automatically downloads and starts your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

source $ZSH/oh-my-zsh.sh
