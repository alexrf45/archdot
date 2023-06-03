#zshrc config
# Author: Sean Fontaine
# Email: alex_r0land@pm.me

#history config
HISTFILE=~/.history
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob

#turn off beep 
unsetopt beep
#vi key bindings
bindkey -v

#source aliases and env
source "$HOME/.zprofile"
source "$HOME/.zsh/aliases.zsh"

fpath=(/tmp/zsh-completions/src $fpath)

#displays saying in every new prompt
#cowsay $(fortune)

figlet -f slant "f0_nzy" | lolcat

#persistant ssh agent
eval $(ssh-agent) > /dev/null

ssh-add ~/.ssh/$USER &> /dev/null
ssh-add ~/.ssh/jump &> /dev/null
ssh-add ~/.ssh/bounty &> /dev/null

#history log function
    precmd() { eval 'if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history -f)" >> ~/.logs/zsh-history-$(date "+%Y-%m-%d").log; fi' }


#miniplug zsh
source "$HOME/.zsh/plugins/miniplug.zsh"

# Define a plugin
miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'jameshgrn/zshnotes'
# Define a theme
miniplug theme 'dracula/zsh'
# Source plugins
miniplug load

#bash-completion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

#aws autocompletion
complete -C '/usr/local/bin/aws_completer' aws

#source kali function
source "$HOME/.zsh/kali.sh"



