FILE=private.tar.gz

LOCATION=./storage/downloads

PRIVATE=(
	.ssh
	.todo.txt
	.tmate.conf
)

echo "Backing up private files to $LOCATION/$FILE"

tar czvf ${LOCATION}/${FILE} ${PRIVATE[*]}
