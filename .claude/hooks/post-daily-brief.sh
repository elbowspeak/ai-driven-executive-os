#!/bin/bash
# Post-Daily-Brief Hook
# Runs after daily brief generation to send notifications

# Configuration
VAULT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
BRIEF_FILE="$VAULT_DIR/Daily/$(date +%Y-%m-%d).md"
NOTIFICATION_METHOD="${NOTIFICATION_METHOD:-log}"  # log, osascript, email, slack

# Check if brief was generated successfully
if [ ! -f "$BRIEF_FILE" ]; then
    echo "[$(date)] ❌ Daily brief not found: $BRIEF_FILE" >> "$VAULT_DIR/.cache/hooks.log"
    exit 1
fi

# Get brief summary (first few lines)
BRIEF_SUMMARY=$(head -20 "$BRIEF_FILE" | grep -A 3 "## 🎯 Top 3 Priorities" || echo "Brief generated")

# Send notification based on method
case "$NOTIFICATION_METHOD" in
    log)
        # Log to file (default)
        echo "[$(date)] ✅ Daily brief generated: $BRIEF_FILE" >> "$VAULT_DIR/.cache/hooks.log"
        ;;

    osascript)
        # macOS notification
        osascript -e "display notification \"Daily brief ready for $(date +%Y-%m-%d)\" with title \"Doikayt\" sound name \"Glass\""
        ;;

    email)
        # Email notification (requires mail command configured)
        if command -v mail &> /dev/null; then
            echo "Your daily brief is ready: $BRIEF_FILE

$BRIEF_SUMMARY

Open in Obsidian to review." | mail -s "Daily Brief - $(date +%Y-%m-%d)" "$EMAIL_RECIPIENT"
        fi
        ;;

    slack)
        # Slack webhook (requires SLACK_WEBHOOK_URL)
        if [ -n "$SLACK_WEBHOOK_URL" ]; then
            curl -X POST "$SLACK_WEBHOOK_URL" \
                -H 'Content-Type: application/json' \
                -d "{\"text\":\"📊 Daily brief ready for $(date +%Y-%m-%d)\\n\\nOpen in Obsidian to review.\"}" \
                &> /dev/null
        fi
        ;;

    *)
        echo "[$(date)] ❓ Unknown notification method: $NOTIFICATION_METHOD" >> "$VAULT_DIR/.cache/hooks.log"
        ;;
esac

# Log success
echo "[$(date)] ✅ Daily brief hook completed ($NOTIFICATION_METHOD)" >> "$VAULT_DIR/.cache/hooks.log"
