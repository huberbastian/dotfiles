if status is-interactive

  set fish_greeting
  fish_add_path -aP $HOME/bin
  fish_add_path -aP $HOME/.local/bin
  fish_add_path -aP $HOME/Applications/flutter/bin
  fish_add_path -aP $HOME/.ghcup/bin
  fish_add_path -aP $HOME/.nvm/versions/node/v18.18.0/bin
  fish_add_path -aP /opt/idea-IU-232.10072.27/bin/
  fish_add_path -aP $HOME/.npm-global/bin

  set -gx EDITOR vim
  export AAI_API_KEY=dd3e478664334c4cb4f0c2f5b49019eb
  export CHROME_EXECUTABLE=google-chrome-stable

  export NPM_CONFIG_PREFIX=~/.npm-global

  set theme_color_scheme gruvbox

  set fish_color_command ebdbb2
  set fish_color_param ebdbb2
  set fish_color_error cc241d
  set fish_color_autosuggestion 928374

end
