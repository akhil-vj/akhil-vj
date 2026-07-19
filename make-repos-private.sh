#!/bin/bash

# Script to make all repositories private
# Usage: bash make-repos-private.sh

echo "Making all repositories private..."

# List of all 27 repositories
repos=(
  "akhil-vj/akhil-vj"
  "akhil-vj/bill-n-shine"
  "akhil-vj/BudgetTracker"
  "akhil-vj/Credit-Card-Tracnsactions"
  "akhil-vj/Dating_App_Frontend"
  "akhil-vj/EM-data-app"
  "akhil-vj/email-automation"
  "akhil-vj/Gym-app"
  "akhil-vj/insightful-money"
  "akhil-vj/InvoiceFlow"
  "akhil-vj/Kerala-Match"
  "akhil-vj/Library-Management-Odoo-v17"
  "akhil-vj/local-lead-magic"
  "akhil-vj/Logistics"
  "akhil-vj/Malayali-Match-Frontend"
  "akhil-vj/qc-backend"
  "akhil-vj/qccreations"
  "akhil-vj/quickcart-marketplace"
  "akhil-vj/sellzy-showcase"
  "akhil-vj/Social-Media"
  "akhil-vj/swargachitra"
  "akhil-vj/swargachitra1"
  "akhil-vj/tic-holidays-malaysia"
  "akhil-vj/TIC-Software-Frontend"
  "akhil-vj/wanderlust-planner"
  "akhil-vj/WanderVista-Tour-Project"
  "nikhildotwibe/tic-laravel"
  "tictours/tictours-frontend"
)

# Counter for success/failure tracking
success=0
failed=0

# Make each repo private
for repo in "${repos[@]}"; do
  echo "Processing: $repo"
  if gh repo edit "$repo" --visibility private; then
    echo "✓ $repo is now private"
    ((success++))
  else
    echo "✗ Failed to make $repo private"
    ((failed++))
  fi
done

echo ""
echo "=========================================="
echo "Summary:"
echo "✓ Successfully made private: $success"
echo "✗ Failed: $failed"
echo "=========================================="
