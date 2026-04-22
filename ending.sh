#!/bin/bash
echo "--- Ending Development Cycle ---"

# Step 1: Check git status
git status

# Step 2: Prompt for handover notes
echo ""
echo "Writing handover document... (Enter your notes, then press Enter and Ctrl+D to save)"
cat > handover.md

# Step 3: Git operations
echo "Syncing with GitHub..."
git add .
git commit -m "Dev session wrapup: update handover and tasks"
git push origin main

echo ""
echo "--- Cycle Complete. Code pushed to GitHub. ---"
