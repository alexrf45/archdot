export MINIPLUG_HOME="$HOME/.zsh/plugins"


if [[ -z $TMUX ]]; then
  PATH="$PATH:/home/r0land/.local/bin:/home/r0land/go/bin:/usr/local/go/bin:/home/r0land/.local/share/gem/ruby/3.0.0/bin"
fi

export EDITOR=nvim


export GOPATH=$HOME/.local/bin/go

export DRACULA_DISPLAY_TIME=1
export DRACULA_TIME_FORMAT="%-H:%M"
export DRACULA_DISPLAY_NEW_LINE=1
export DRACULA_DISPLAY_CONTEXT=1
export DRACULA_DISPLAY_FULL_CWD=1
export DRACULA_CUSTOM_VARIABLE=$AWS_VAULT

#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=($tty)
