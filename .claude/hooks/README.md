# Hooks System

Hooks are scripts that run before or after certain automation events, allowing you to extend functionality with notifications, logging, or custom processing.

## Available Hooks

### `post-daily-brief.sh`

Runs after daily brief generation to send notifications.

**Supported Notification Methods:**

1. **log** (default) - Logs to `.cache/hooks.log`
   ```bash
   # Already configured, no setup needed
   ```

2. **osascript** - macOS system notifications
   ```bash
   # Add to ~/.zshrc or ~/.bash_profile:
   export NOTIFICATION_METHOD="osascript"
   ```

3. **email** - Email notifications
   ```bash
   # Configure email (requires mail command):
   export NOTIFICATION_METHOD="email"
   export EMAIL_RECIPIENT="your-email@example.com"

   # macOS mail setup:
   # System Settings → Internet Accounts → Add Mail Account
   ```

4. **slack** - Slack webhook notifications
   ```bash
   # Get webhook URL from: https://api.slack.com/messaging/webhooks
   export NOTIFICATION_METHOD="slack"
   export SLACK_WEBHOOK_URL="https://hooks.slack.com/services/YOUR/WEBHOOK/URL"
   ```

## Configuration

Set environment variables in your LaunchAgent plist or shell profile:

### Option A: LaunchAgent (recommended)

Edit `Scripts/launchagents/com.obsidian.dailybrief.plist`:

```xml
<key>EnvironmentVariables</key>
<dict>
    <key>NOTIFICATION_METHOD</key>
    <string>osascript</string>
</dict>
```

Then reload:
```bash
launchctl unload ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
launchctl load ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
```

### Option B: Shell Profile

Add to `~/.zshrc`:
```bash
export NOTIFICATION_METHOD="osascript"
```

## Hook Logs

View hook execution history:
```bash
cat "$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)/.cache/hooks.log"
```

Or from vault root:
```bash
cat .cache/hooks.log
```

## Creating Custom Hooks

Create new hooks in `.claude/hooks/`:

```bash
#!/bin/bash
# .claude/hooks/my-custom-hook.sh

# Your hook logic here
echo "Hook executed at $(date)"
```

Make it executable:
```bash
chmod +x .claude/hooks/my-custom-hook.sh
```

Call from automation scripts:
```bash
if [ -x ".claude/hooks/my-custom-hook.sh" ]; then
    .claude/hooks/my-custom-hook.sh
fi
```

## Future Hooks

Planned hooks:
- `pre-weekly-review.sh` - Prepare data before weekly review
- `post-portfolio-update.sh` - Notify after portfolio analysis
- `on-error.sh` - Alert when automation fails
- `daily-reminder.sh` - Send reminder if daily brief not reviewed by noon

## Integration with PAI

This hooks system is inspired by Daniel Miessler's Personal AI Infrastructure:
- https://github.com/danielmiessler/Personal_AI_Infrastructure

For advanced TypeScript hooks that integrate with Claude Code's event system, see the PAI repo.
