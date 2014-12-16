ZSH=$HOME/.oh-my-zsh
ZSH_THEME="clean"

plugins=(git rails ruby terminalapp common-aliases git-extras)

source $ZSH/oh-my-zsh.sh

# export PATH source
# source ~/.zshrc_export_path
#
eval "$(rbenv init -)"
#
#Alias
alias dfm=".dotfiles/bin/dfm"
alias tmux="tmux -2"
#alias sublime="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
#
# #. $HOME/.shellrc.load

#NVM
source ~/.nvm/nvm.sh

#Clean anoying warning when using git push
unset GNOME_KEYRING_CONTROL
alias slack="/usr/bin/chromium --app=https://simplon2.slack.com/messages/general/"
alias phantomjs="/home/n3b/Downloads/phantomjs-1.9.8-linux-i686/bin/phantomjs"
