if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
      exec Hyprland
#  exec startx -- -keeptty
    end
end
alias n=nvim
alias lg=lazygit
alias ra=ranger
set -gx EDITOR nvim
set -x JAVA_HOME "/opt/java/"
fish_add_path "$JAVA_HOME/bin"
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.ja
alias dps=docker-compose
set -g __fish_git_prompt_char_stagedstate ""
set -g __fish_git_prompt_char_dirtystate "+"
set -g __fish_git_prompt_char_untrackedfiles ""
set -g __fish_git_prompt_char_conflictedstate ""
set -g __fish_git_prompt_char_cleanstate "✓"



export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
export GTK_THEME=Catppuccin-blue:dark
export LIBVA_DRIVER_NAME=nvidia
export XDG_SESSION_TYPE=wayland
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1
