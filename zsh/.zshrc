#pfetch | lolcat
echo "✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗"
#fortune | cowsay  | lolcat
echo "✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗✗"
figlet -f ANSI\ Shadow Arch
autoload -U colors && colors
# Lines configured by zsh-newuser-install
HISTFILE=~/.config/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/root99/.config/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /home/root99/.config/FZF/.fzf/shell/key-bindings.zsh
source /home/root99/.config/FZF/.fzf/shell/completion.zsh
#Custom Prompt
NEWLINE=$'\n'
#PROMPT='$NEWLINE  %F{blue}%B%~%f $NEWLINE  %F{blue} %B %F{magenta}➜ %b'
#PROMPT='$NEWLINE  %F{blue}%B%~%f $NEWLINE  %F{blue} %B %(?.%F{magenta}➜.%F{red}➜) %b'
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_' $(git_super_status) %(?.%F{green}√.%F{red}%?)'
PROMPT='$NEWLINE  %F{blue}%B%~%f $vcs_info_msg_0_ $NEWLINE  %F{blue} %B   %(?.%F{magenta}->.%F{red}->) %b'
#RPROMPT=%B\$vcs_info_msg_0_'%(?.%F{green}✓.%F{red}%?)'
RPROMPT=%B'%(?.%F{green}✓.%F{red}%?)'
zstyle ':vcs_info:git:*' formats '%F{208}  (%b) %r %f %u %c '
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#>>>>Aliesas
#alias ls="colorls"
alias ls="ls --color=auto"
alias gs="git status"
alias gp="git push"
alias gc="git commit"
alias gd="git diff"
alias gch="git checkout"
alias yu='youtube-dl -x --audio-format mp3'
#alias top='bpytop'
#alias rm='echo "Please Dont use rm instead use trash-put or tp"'
alias tp='trash-put'
alias tls='trash-list'
# alias tr='trash-restore'
alias ggg='cd $HOME/Downloads/prbhat07'
alias dot='cd $HOME/.config/'
#export JAVA_HOME='/usr/lib/jvm/java-8-openjdk/jre'
#export JAVA_HOME='/usr/lib/jvm/java-11-openjdk'
#export PATH=$JAVA_HOME/bin:$PATH
#export PATH=$HOME/.config/rofi/bin:$PATH
# bindkey -v
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -le 4 ]; then
  #exec startx
#fi
#source /usr/share/nvm/init-nvm.sh
# export PATH=$HOME/.config/npm-global/bin:$PATH
#export PATH=~/bin:$PATH
#export PATH=~/bin/CustomScripts:$PATH
#export JDTLS_HOME=/home/root99/Downloads/jdtls
