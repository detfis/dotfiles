if [ -f "$HOME/.shell_fish_aliases" ]
        source "$HOME/.shell_fish_aliases"
else
        echo "shell aliases file not found!"
end

if [ -f "$HOME/.shell_custom" ]
        source "$HOME/.shell_custom"
else
        echo "shell custom file not found!"
end

set -U VISUAL vim
set -U EDITOR "$VISUAL"

set -U ERL_AFLAGS "-kernel shell_history enabled"

set -U AWS_PROFILE default
set -U AWS_DEFAULT_PROFILE default

source (brew --prefix asdf)/asdf.fish

source /usr/local/opt/asdf/asdf.fish

set GOV (asdf where golang)
export GOROOT=$GOV/go

alias config='/usr/bin/git --git-dir=/Users/kamil/.cfg/ --work-tree=/Users/kamil'

#PATH
set -x PATH $HOME/bin /opt/confluent/bin /usr/local/opt/libarchive/bin $PATH

# set starship as a shell. Keep at at the end of the file
starship init fish | source
