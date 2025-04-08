# variables
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi
export CHROME_EXECUTABLE=google-chrome-stable
export QT_QPA_PLATFORM="wayland;xcb"
export QT_QPA_PLATFORMTHEME=qt5ct
export GDK_BACKEND=wayland
export AUTO_NOTIFY_WHITELIST=("pacman" "yay")

# path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# personal aliases
alias vi="nvim"
alias pacman="sudo pacman"
alias svi="sudo nvim"

# use arrow keys for history-substring-search
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
