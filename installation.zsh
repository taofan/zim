$!/bin/sh

# if execute inside the dir, the following would work just fine.
#ZIM_DIR=`pwd`

# assume the repo is cloned in $HOME/git/tao/.
ZIM_DIR="$HOME/git/tao/zim"

ln -s $ZIM_DIR $HOME/.zim
rm $HOME/.zshrc
rm $HOME/.*.zwc

#stow -d $ZIM_DIR -t $HOME -s templates
# manual link
setopt EXTENDED_GLOB
for rcfile in "${ZIM_DIR}"/templates/; do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

source $ZIM_DIR/templates/zlogin
