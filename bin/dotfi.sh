DIR=$1
ORIGIN=$2

git init --bare $HOME/$DIR

function dotf () {
	git --git-dir=$HOME/$DIR --work-tree=$HOME "$@"
}

dotf config --local status.showUntrackedFiles no

dotf remote add origin $ORIGIN
