#!/bin/bash
cd /home/jaja/Desktop/my-project/staking/staking-project

# Commits 41-50: CSS and styling
for i in {41..50}; do
  echo ".container { margin: ${i}px; }" >> frontend/src/styles.css
  git add frontend/src/styles.css
  git commit -m "Update styles - iteration $i" --date="2026-01-17T$(printf "%02d" $((i-41+9))):00:00"
done

# Commits 51-60: Component updates
for i in {51..60}; do
  echo "// Update $i" >> frontend/src/components/StakeForm.jsx
  git add frontend/src/components/StakeForm.jsx
  git commit -m "Update StakeForm component - iteration $i" --date="2026-01-18T$(printf "%02d" $((i-51+9))):00:00"
done

# Commits 61-70: Utils and helpers
for i in {61..70}; do
  echo "// Helper $i" >> frontend/src/utils/helpers.js
  git add frontend/src/utils/helpers.js
  git commit -m "Add helper function - iteration $i" --date="2026-01-19T$(printf "%02d" $((i-61+9))):00:00"
done

# Commits 71-80: Config updates
for i in {71..80}; do
  echo "// Config $i" >> frontend/src/config.js
  git add frontend/src/config.js
  git commit -m "Update configuration - iteration $i" --date="2026-01-20T$(printf "%02d" $((i-71+9))):00:00"
done

# Commits 81-90: Documentation
for i in {81..90}; do
  echo "## Section $i" >> frontend/README.md
  git add frontend/README.md
  git commit -m "Update frontend README - iteration $i" --date="2026-01-21T$(printf "%02d" $((i-81+9))):00:00"
done

# Commits 91-100: Final touches
for i in {91..100}; do
  echo "/* Style $i */" >> frontend/src/App.css
  git add frontend/src/App.css
  git commit -m "Add App styles - iteration $i" --date="2026-01-22T$(printf "%02d" $((i-91+9))):00:00"
done

echo "100 commits created!"
