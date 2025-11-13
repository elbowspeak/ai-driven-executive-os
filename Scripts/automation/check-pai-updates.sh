#!/bin/bash
# Check PAI Repository for Updates
# Monitors Daniel Miessler's Personal_AI_Infrastructure for new features/patterns

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VAULT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
PAI_REPO="https://github.com/danielmiessler/Personal_AI_Infrastructure"
CACHE_DIR="$VAULT_DIR/.cache"
LAST_CHECK_FILE="$CACHE_DIR/pai-last-check.txt"
REPORT_FILE="$VAULT_DIR/Daily/PAI-Updates-$(date +%Y-%m-%d).md"

# Create cache directory
mkdir -p "$CACHE_DIR"

echo "================================================"
echo "Checking PAI Repository for Updates"
echo "================================================"
echo ""
echo "Repository: $PAI_REPO"
echo "Last check: $([ -f "$LAST_CHECK_FILE" ] && cat "$LAST_CHECK_FILE" || echo 'Never')"
echo ""

# Get latest commit info from GitHub API
echo "Fetching latest updates..."
LATEST_COMMITS=$(curl -s "https://api.github.com/repos/danielmiessler/Personal_AI_Infrastructure/commits?per_page=10")

# Extract commit messages and dates
COMMIT_COUNT=$(echo "$LATEST_COMMITS" | grep -c '"sha"' || echo "0")

if [ "$COMMIT_COUNT" -eq 0 ]; then
    echo "⚠️  Could not fetch updates (API limit or network issue)"
    exit 1
fi

echo "✓ Found $COMMIT_COUNT recent commits"
echo ""

# Get last checked date
if [ -f "$LAST_CHECK_FILE" ]; then
    LAST_CHECK_DATE=$(cat "$LAST_CHECK_FILE")
    LAST_CHECK_EPOCH=$(date -j -f "%Y-%m-%d" "$LAST_CHECK_DATE" "+%s" 2>/dev/null || echo "0")
else
    LAST_CHECK_EPOCH=0
fi

# Parse commits and check for new ones
NEW_COMMITS=0

# Build report content
cat > "$REPORT_FILE" << 'REPORT_EOF'
# PAI Repository Updates - $(date +%Y-%m-%d)

**Repository:** [Personal_AI_Infrastructure](https://github.com/danielmiessler/Personal_AI_Infrastructure)
**Last checked:** $([ -f "$LAST_CHECK_FILE" ] && cat "$LAST_CHECK_FILE" || echo 'Never')

---

## Recent Commits

Recent activity detected in PAI repository.

### What to Check:

1. **New Skills/Workflows**
   - Visit: https://github.com/danielmiessler/Personal_AI_Infrastructure/tree/main/.claude/skills
   - Look for new patterns that match your workflow

2. **Fabric Updates**
   - Check: https://github.com/danielmiessler/fabric
   - New patterns released weekly

3. **Hooks Examples**
   - Check: https://github.com/danielmiessler/Personal_AI_Infrastructure/tree/main/.claude/hooks
   - Copy useful automation patterns

4. **Agent Improvements**
   - Review agent orchestration updates
   - Parallel execution optimizations

---

## Action Items

- [ ] Review recent commits: https://github.com/danielmiessler/Personal_AI_Infrastructure/commits
- [ ] Check for new Fabric patterns
- [ ] Identify 1-2 features to integrate this week
- [ ] Update your automation accordingly

---

## Integration Tracking

**Currently Integrated:**
- LaunchAgent automation
- Daily/Weekly workflows
- LinkedIn contact import

**Planned Integrations:**
- Hooks for notifications
- Fabric patterns for research
- Multi-agent portfolio updates

---

*Run this check weekly via /weekly command or manually with:*
```bash
bash Scripts/automation/check-pai-updates.sh
```
REPORT_EOF

# Replace date placeholder
sed -i '' "s/\$(date +%Y-%m-%d)/$(date +%Y-%m-%d)/g" "$REPORT_FILE"
sed -i '' "s/\$(\\[ -f \"\$LAST_CHECK_FILE\" \\] && cat \"\$LAST_CHECK_FILE\" || echo 'Never')/$([ -f "$LAST_CHECK_FILE" ] && cat "$LAST_CHECK_FILE" || echo 'Never')/g" "$REPORT_FILE"

echo "✓ Generated update report: $REPORT_FILE"

# Update last check date
date +%Y-%m-%d > "$LAST_CHECK_FILE"

echo ""
echo "================================================"
echo "✅ PAI Update Check Complete"
echo "================================================"
echo ""
echo "Report saved to: $REPORT_FILE"
echo "Open in Obsidian to review"
echo ""
echo "Next check: $(date -v+7d +%Y-%m-%d)"
