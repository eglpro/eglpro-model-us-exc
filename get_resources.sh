#!/bin/sh

RESOURCE_LIST=resource.properties
RESOURCE_URIS="$(awk 'BEGIN { FS="="} {print $2}' "$RESOURCE_LIST")"
RESOURCE_DEST=src/main/resources/xml

echo $0: Saving to $RESOURCE_DEST
echo $0: URIs: $RESOURCE_URIS

cd "$RESOURCE_DEST" && wget $RESOURCE_URIS
