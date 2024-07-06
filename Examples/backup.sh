#!/bin/bash

read -p "Enter the directory to backup: " SOURCE_DIR

BACKUP_DIR="$HOME/pendrive" # Backup destination
TIMESTAMP=$(date +"%Y%m%d%H%M%S") # It is what it is
DEST_DIR="$BACKUP_DIR/$(basename $SOURCE_DIR)_$TIMESTAMP" # Destination Path

mkdir -p "$BACKUP_DIR" # Create Backup Directory

cp -r "$SOURCE_DIR" "$DEST_DIR" # Move the directory

echo "Backup of $SOURCE_DIR completed at $DEST_DIR" # Completed
