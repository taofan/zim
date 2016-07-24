$!/bin/sh

# if execute inside the dir, the following would work just fine.
#ZIM_DIR=`pwd`

# assume the repo is cloned in $HOME/git/tao/.
ZIM_DIR="$HOME/git/tao/zim"

ln -s $ZIM_DIR $HOME/.zim
stow -d $ZIM_DIR -t $HOME -s templates

source $ZIM_DIR/templates/zlogin
