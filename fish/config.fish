if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
			exec env WLR_NO_HARDWARE_CURSORS=1 Hyprland 
			#  exec startx -- -keeptty
    end
end
alias n=nvim
alias lg=lazygit
alias ra=ranger
#alias ssh="kitty +kitten ssh"
set -gx EDITOR nvim
#set -gx OPENAI_API_KEY (pass openai)
set -x JAVA_HOME "/opt/java/"
fish_add_path "$JAVA_HOME/bin"
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.ja
alias dps=docker-compose
set -g __fish_git_prompt_char_stagedstate ""
set -g __fish_git_prompt_char_dirtystate "+"
set -g __fish_git_prompt_char_untrackedfiles ""
set -g __fish_git_prompt_char_conflictedstate ""
set -g __fish_git_prompt_char_cleanstate "✓"
export _JAVA_AWT_WM_NONREPARENTING=1

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
