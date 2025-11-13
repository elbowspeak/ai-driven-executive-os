#!/bin/bash

# Daily Brief Auto-Generator
# Runs at 5am PT on weekdays via LaunchAgent
# Generates daily brief and saves to Daily/ folder

VAULT_PATH="/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt"
DAILY_FOLDER="$VAULT_PATH/Daily"
DATE=$(date +"%Y-%m-%d")
DAY_NAME=$(date +"%A")
DAILY_FILE="$DAILY_FOLDER/$DATE.md"

# Log file for debugging
LOG_FILE="$VAULT_PATH/Scripts/daily-brief.log"

echo "$(date): Starting daily brief generation" >> "$LOG_FILE"

# Check if it's a weekday (Monday-Friday)
DAY_NUM=$(date +%u)
if [ $DAY_NUM -gt 5 ]; then
    echo "$(date): Weekend detected, skipping" >> "$LOG_FILE"
    exit 0
fi

# Check if daily brief already exists
if [ -f "$DAILY_FILE" ]; then
    echo "$(date): Daily brief already exists for $DATE" >> "$LOG_FILE"
    exit 0
fi

# Method 1: Use Python standalone generator (most reliable)
echo "$(date): Attempting to generate daily brief via Python" >> "$LOG_FILE"

python3 "$VAULT_PATH/Scripts/generate_daily_brief.py" >> "$LOG_FILE" 2>&1

# Check if Python succeeded
if [ $? -eq 0 ] && [ -f "$DAILY_FILE" ]; then
    echo "$(date): Python generator succeeded" >> "$LOG_FILE"
else
    # Method 2: Fallback to Claude Code CLI
    echo "$(date): Python failed, trying Claude Code CLI" >> "$LOG_FILE"
    cd "$VAULT_PATH"

    claude <<EOF
/daily
EOF
fi

# Check if file was created
if [ -f "$DAILY_FILE" ]; then
    echo "$(date): Successfully generated $DAILY_FILE" >> "$LOG_FILE"

    # Run post-daily-brief hook for notifications
    HOOK_SCRIPT="$VAULT_PATH/.claude/hooks/post-daily-brief.sh"
    if [ -x "$HOOK_SCRIPT" ]; then
        "$HOOK_SCRIPT" >> "$LOG_FILE" 2>&1
    fi
else
    echo "$(date): ERROR - Failed to generate daily brief" >> "$LOG_FILE"

    # Create a placeholder note indicating automation issue
    cat > "$DAILY_FILE" <<PLACEHOLDER
# Daily Brief - $DAY_NAME, $DATE

⚠️ **Automated generation failed. Please run \`/daily\` manually.**

---

## 🎯 Quick Start

Run the following command to generate your full daily brief:
\`\`\`
/daily
\`\`\`

Or manually review:
- [ ] Portfolio companies needing attention
- [ ] Relationship follow-ups
- [ ] Consulting projects
- [ ] Today's meetings

---

*Automation log: $LOG_FILE*
PLACEHOLDER

    echo "$(date): Created placeholder file" >> "$LOG_FILE"
fi

echo "$(date): Daily brief generation complete" >> "$LOG_FILE"
