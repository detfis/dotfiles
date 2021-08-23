if [ -f "$HOME/.shell_aliases" ];
then
        source "$HOME/.shell_aliases"
else
        echo "shell aliases file not found!"
fi

if [ -f "$HOME/.shell_custom" ];
then
        source "$HOME/.shell_custom"
else
        echo "shell custom file not found!"
fi

export VISUAL=vim
export EDITOR="$VISUAL"

# works form OTP 20 - saves console history
export ERL_AFLAGS="-kernel shell_history enabled"

export AWS_PROFILE=default
export AWS_DEFAULT_PROFILE=default

alias config='/usr/bin/git --git-dir=/Users/kamil/.cfg/ --work-tree=/Users/kamil'
alias config='/usr/bin/git --git-dir=/Users/kamil/.cfg/ --work-tree=/Users/kamil'

export PATH=$HOME/.asdf/shims:$PATH

eval "$(starship init zsh)"
