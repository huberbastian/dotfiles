if status is-interactive

  set fish_greeting
  fish_add_path -aP $HOME/bin
  fish_add_path -aP $HOME/.local/bin
  fish_add_path -aP $HOME/Applications/flutter/bin
  fish_add_path -aP $HOME/.ghcup/bin
  fish_add_path -aP $HOME/.nvm/versions/node/v18.18.0/bin
  fish_add_path -aP /opt/idea-IU-232.10072.27/bin/
  fish_add_path -aP $HOME/.npm-global/bin

  set -gx EDITOR nvim
  set theme_color_scheme nord
end
