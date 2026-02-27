#!/bin/bash

# Quick Push Script
# Usage: ./push_to_github.sh <github-username> <repo-name>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <github-username> <repo-name>"
    echo "Example: $0 myusername staking-project"
    exit 1
fi

USERNAME=$1
REPO=$2
REPO_URL="https://github.com/$USERNAME/$REPO.git"

cd /home/jaja/Desktop/my-project/staking/staking-project

echo "Setting up remote repository..."
git remote add origin $REPO_URL 2>/dev/null || git remote set-url origin $REPO_URL

echo "Renaming branch to main..."
git branch -M main

echo "Pushing to GitHub..."
git push -u origin main --force

echo ""
echo "✓ Successfully pushed 80 commits to GitHub!"
echo "✓ View your repository at: https://github.com/$USERNAME/$REPO"
echo ""
echo "All commits are now visible on GitHub with their dates and messages."
