export MINIPLUG_HOME="$HOME/.zsh/plugins"


if [[ -z $TMUX ]]; then
  PATH="$PATH:/home/r0land/.local/bin:/home/r0land/go/bin:/usr/local/go/bin:/home/r0land/.local/share/gem/ruby/3.0.0/bin"
fi

export EDITOR=nvim


export GOPATH=/usr/local/bin/go


#aws-cli ENV
export AWS_REGION=us-east-1
export AWS_VAULT_BACKEND=pass
export AWS_PAGER=
export AWS_CLI_AUTO_PROMPT=on-partial
export GPG_TTY=($tty)
export DISPLAY=:0
export VAULT_ADDR='https://127.0.0.1:8200'
export VAULT_CACERT=''
export VAULT_TOKEN=''
export NGROK_AUTH='2CSu6D70BIlgbrqkwYwuqDelrdV_3k6PZCxHMGEnjbLc5g5NA'
