if status is-interactive

    set fish_greeting
    fish_add_path -aP $HOME/bin
    fish_add_path -aP $HOME/.local/bin
    fish_add_path -aP $HOME/Applications/flutter/bin
    fish_add_path -aP $HOME/.ghcup/bin
    set -gx EDITOR vim

    set theme_color_scheme gruvbox

    set fish_color_command ebdbb2
    set fish_color_param ebdbb2
    set fish_color_error cc241d
    set fish_color_autosuggestion 928374

end
