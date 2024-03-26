if status is-interactive

    set fish_greeting
    fish_add_path -aP $HOME/bin
    fish_add_path -aP $HOME/.local/bin
    fish_add_path -aP $HOME/Applications/flutter/bin
    fish_add_path -aP $HOME/.ghcup/bin
    set -gx EDITOR nvim
    export AAI_API_KEY=dd3e478664334c4cb4f0c2f5b49019eb
    export CHROME_EXECUTABLE=google-chrome-stable
    export QT_QPA_PLATFORM="wayland;xcb"
    export QT_QPA_PLATFORMTHEME=qt5ct
    export GDK_BACKEND=wayland

    set theme_color_scheme nord
end
