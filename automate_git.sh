#!/bin/bash

# Navigate to the repository directory
cd E:\PSC-LOGSEQ NOTES || exit

# Check for changes
if [[ $(git status --porcelain) ]]; then
    echo "Changes detected. Committing and pushing..."

    # Add all changes
    git add .

    # Commit changes with a timestamp
    git commit -m "Automated commit at $(date '+%Y-%m-%d %H:%M:%S')"

    # Push changes to the remote repository
    git push origin main
else
    echo "No changes detected. Skipping..."
fi
