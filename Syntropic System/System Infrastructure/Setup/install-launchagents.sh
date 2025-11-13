#!/bin/bash
# Install LaunchAgents Script
# Copies LaunchAgent plists to ~/Library/LaunchAgents/ and updates paths for current user

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VAULT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
LAUNCHAGENT_DIR="$VAULT_DIR/Syntropic System/System Infrastructure/LaunchAgents"
TARGET_DIR="$HOME/Library/LaunchAgents"

echo "================================================"
echo "Installing LaunchAgents"
echo "================================================"
echo ""

# Detect current user and home directory
CURRENT_USER=$(whoami)
CURRENT_HOME="$HOME"

echo "✓ Current user: $CURRENT_USER"
echo "✓ Home directory: $CURRENT_HOME"
echo "✓ Vault location: $VAULT_DIR"
echo ""

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Process each plist file
if [ ! -d "$LAUNCHAGENT_DIR" ]; then
    echo "❌ LaunchAgent directory not found: $LAUNCHAGENT_DIR"
    exit 1
fi

INSTALLED=0
UPDATED=0

for plist in "$LAUNCHAGENT_DIR"/*.plist; do
    if [ ! -f "$plist" ]; then
        echo "⚠️  No plist files found in $LAUNCHAGENT_DIR"
        exit 0
    fi

    PLIST_NAME=$(basename "$plist")
    TARGET_PLIST="$TARGET_DIR/$PLIST_NAME"

    echo "Processing: $PLIST_NAME"

    # Create a temporary file with updated paths
    TEMP_PLIST=$(mktemp)

    # Replace any hardcoded usernames with current user
    # This handles both /Users/elbowspeak and /Users/elbowspeak1
    sed "s|/Users/[^/]*/|$CURRENT_HOME/|g" "$plist" > "$TEMP_PLIST"

    # Copy to target location
    cp "$TEMP_PLIST" "$TARGET_PLIST"
    rm "$TEMP_PLIST"

    echo "  ✓ Installed to $TARGET_PLIST"

    # Load the LaunchAgent
    if launchctl list | grep -q "$(basename "$PLIST_NAME" .plist)"; then
        echo "  → Reloading existing LaunchAgent..."
        launchctl unload "$TARGET_PLIST" 2>/dev/null || true
        ((UPDATED++)) || true
    fi

    launchctl load "$TARGET_PLIST" 2>/dev/null || echo "  ℹ️  LaunchAgent already loaded"
    echo "  ✓ Loaded LaunchAgent"

    ((INSTALLED++)) || true
    echo ""
done

echo "================================================"
echo "✅ LaunchAgent installation complete"
echo "================================================"
echo ""
echo "Installed: $INSTALLED LaunchAgents"
if [ $UPDATED -gt 0 ]; then
    echo "Updated: $UPDATED existing LaunchAgents"
fi
echo ""

# Verify installation
echo "Verifying installation..."
for plist in "$LAUNCHAGENT_DIR"/*.plist; do
    LABEL=$(basename "$plist" .plist)
    if launchctl list | grep -q "$LABEL"; then
        echo "  ✓ $LABEL is running"
    else
        echo "  ⚠️  $LABEL is not running"
    fi
done
echo ""

echo "Next steps:"
echo "1. Check logs: cat \"$VAULT_DIR/.cache/logs/launchagent-error.log\""
echo "2. Check audit log: cat \"$VAULT_DIR/.cache/logs/security-audit.log\""
echo "3. Test automation: launchctl start com.obsidian.dailybrief"
echo "4. First automatic run: Tomorrow at 5:00 AM"
