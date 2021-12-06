FILE=backup.tar.gz

LOCATION=./storage/downloads

echo "Restoring private files from $LOCATION/$FILE"

tar xzvf ${LOCATION}/${FILE}
