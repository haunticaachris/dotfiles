DIR=$1
ORIGIN=$2

git clone --bare $ORIGIN $HOME/$DIR

function dotf () {
	git --git-dir=$HOME/$DIR --work-tree=$HOME "$@"
}

dotf config --local status.showUntrackedFiles no

dotf checkout

. .bashrc

if [ -d $HOME/.install ]; then
  for file in $HOME/.install/*.sh; do
    source $file
  done
fi
