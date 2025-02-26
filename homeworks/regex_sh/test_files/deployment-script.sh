#!/bin/bash
# Test file for script testing purposes only. Do not use in production.

echo 

# Pull latest changes
echo "Pulling latest changes"
git pull origin main || { echo "ERROR: Failed to pull changes"; exit 1; }

# Build the application
echo "Building the application"
./build.sh || { echo "ERROR: Build failed"; exit 1; }

# Deploy the application
echo "Deploying the application"
./deploy.sh || { echo "ERROR: Deployment failed"; exit 1; }

echo
echo "Deployment completed successfully."
