export MINIPLUG_HOME="$HOME/.zsh/plugins"


if [[ -z $TMUX ]]; then
  PATH="$PATH:/home/r0land/.local/bin:/home/r0land/go/bin:/usr/local/go/bin:/home/r0land/.local/share/gem/ruby/3.0.0/bin"
fi

export EDITOR=nvim
 
#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=($tty)
export DISPLAY=:0

