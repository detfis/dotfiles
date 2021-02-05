if [ -f "$HOME/.shell_aliases" ];
then
        source "$HOME/.shell_aliases"
else
        echo "shell aliases file not found!"
end

if [ -f "$HOME/.shell_custom" ];
then
        source "$HOME/.shell_custom"
else
        echo "shell custom file not found!"
end



export EDITOR="subl -n -w"
export ALTERNATE_EDITOR="subl -n -w"

# works form OTP 20 - saves console history
export ERL_AFLAGS="-kernel shell_history enabled"

# exports


export PATH="$HOME/bin:$PATH"

export AWS_PROFILE=default
export AWS_DEFAULT_PROFILE=default
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"


# add confluent platform to path
export PATH="$PATH:/opt/confluent/bin"

. /usr/local/opt/asdf/asdf.sh


set GOV (asdf where golang)
export GOROOT=$GOV/go

export PATH="/usr/local/opt/libarchive/bin:$PATH"
