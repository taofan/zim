#
# zim installation
#

# Get dirname of this script
ZIM_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "linking zim dir"
ln -s ${ZIM_DIR} ${HOME}/.zim

echo "Cleaning up dotfiles in home dir"
rm ${HOME}/.zshrc
rm ${HOME}/.zlogin
rm ${HOME}/.zprofile
rm ${HOME}/.zcomdump*
rm ${HOME}/.*.zwc

echo 'linking dotfiles'
stow -d ${ZIM_DIR} -t ${HOME} -S templates

cat <<EOF
Open a new terminal and finish optimization (this is only needed once, hereafter it will happen upon desktop/tty login):
source ${ZDOTDIR:-${HOME}}/.zlogin
EOF
