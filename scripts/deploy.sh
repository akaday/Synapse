#!/bin/bash

# Check if environment variables are set
if [ -z "$DEPLOY_ENV" ]; then
  echo "Error: DEPLOY_ENV is not set."
  exit 1
fi

if [ -z "$DEPLOY_TARGET" ]; then
  echo "Error: DEPLOY_TARGET is not set."
  exit 1
fi

# Build the project
echo "Building the project..."
npm run build

# Deploy the project
echo "Deploying the project to $DEPLOY_TARGET..."
# Add your deployment commands here, e.g., scp, rsync, etc.
# Example:
# scp -r dist/* user@$DEPLOY_TARGET:/path/to/deploy

echo "Deployment completed successfully."
