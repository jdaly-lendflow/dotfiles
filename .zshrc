fpath=($fpath /home/linuxbrew/.linuxbrew/share/zsh/site-functions)
fpath=($fpath $DOT_ROOT/.zsh/functions)

typeset -U fpath

setopt interactivecomments

source $DOT_ROOT/.zsh/config


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# use .zshrc.local for settings specific to one system
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

eval "$(zoxide init zsh)"

# fzf
[[ -f ~/.fzf.zsh ]] || $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# add the .bin directory to the path
export PATH="$PATH:$DOT_ROOT/.bin"
