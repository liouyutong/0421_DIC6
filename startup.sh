#!/bin/bash
echo "--- Starting Development Cycle ---"
# Fetch and pull
git pull origin main

# Display handover if exists
if [ -f "handover.md" ]; then
    echo ""
    echo "--- Handover Document ---"
    cat handover.md
    echo "-------------------------"
    echo ""
else
    echo "No handover document found."
fi

# Suggestion
echo "Suggested Next Action: Check OpenSpec change status or run /opsx:continue."
