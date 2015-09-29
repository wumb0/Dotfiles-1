# @Author: Nicholas Piazza
# Nick Piazza's .zshrc
# I love my custom environment
# It' a little bit of things from around the Interwebz
#
#

# Source Prezto, thanks Sorin :)
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


#aliases
alias la='ls -lah'	#my 'la'
#alias vim='/opt/local/bin/vim'	#macports vim
alias psd='pushd'	#easier pushd
alias pd='popd'		#easier popd
#alias trash='rmtrash'
unalias sl

#training wheels
function rm() {
    cat ~/.lol.txt
    echo "I think you meant trash"
}

#Adding tmuxinator support
source ~/.bin/tmuxinator.zsh
