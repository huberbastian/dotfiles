# variables
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi
export JAVA_HOME="/opt/homebrew/opt/openjdk"

# path
export PATH="$HOME/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"

# personal aliases
alias vi="nvim"
alias svi="sudo nvim"

# docker desktop
fpath=(/Users/basti/.docker/completions $fpath)
autoload -Uz compinit
compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
