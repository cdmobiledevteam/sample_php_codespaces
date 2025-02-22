#!/bin/bash

# Define variables

CPANEL_USER="gobelin"
CPANEL_HOST="demo.globleinfotech.com/"
REMOTE_PATH="public_html"  # Adjust this based on your cPanel directory

# Sync files from GitHub Codespaces to cPanel
echo "Starting deployment..."
rsync -avz --exclude '.git' --exclude 'node_modules' --delete -e "ssh -o StrictHostKeyChecking=no" ./ $CPANEL_USER@$CPANEL_HOST:~/$REMOTE_PATH

echo "Deployment complete!"
