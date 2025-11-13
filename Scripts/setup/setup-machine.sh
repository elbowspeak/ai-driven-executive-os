#!/bin/bash
# Master Setup Script - AI-driven Executive Operating System
# Run this on any machine (laptop or desktop) to set up the complete system

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VAULT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

clear

cat << "EOF"
╔══════════════════════════════════════════════════════════╗
║                                                          ║
║       AI-driven Executive Operating System Setup         ║
║                                                          ║
║  Portfolio Management • Network Intelligence • Research  ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝

EOF

echo "This script will set up your AI operating system on this machine."
echo "Location: $VAULT_DIR"
echo ""
echo "What will be configured:"
echo "  • Install required dependencies and tools"
echo "  • Set up daily automation (LaunchAgents)"
echo "  • Configure environment"
echo "  • Validate installation"
echo ""

# Detect machine info
OS_TYPE=$(uname -s)
MACHINE_NAME=$(hostname)
CURRENT_USER=$(whoami)

echo "Machine Info:"
echo "  OS: $OS_TYPE"
echo "  Hostname: $MACHINE_NAME"
echo "  User: $CURRENT_USER"
echo ""

# Confirm before proceeding
read -p "Continue with setup? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "================================================"
echo "Step 1: Installing Dependencies"
echo "================================================"
echo ""

bash "$SCRIPT_DIR/install-dependencies.sh"

echo ""
echo "================================================"
echo "Step 2: Setting Up Security & Logging"
echo "================================================"
echo ""

# Create log directory for audit logs
LOG_DIR="$VAULT_DIR/.cache/logs"
mkdir -p "$LOG_DIR"
echo "✓ Created log directory: $LOG_DIR"

# Ensure wrapper script is executable
WRAPPER_SCRIPT="$VAULT_DIR/Scripts/automation/daily-brief-runner.sh"
if [ -f "$WRAPPER_SCRIPT" ]; then
    chmod +x "$WRAPPER_SCRIPT"
    echo "✓ Security wrapper script is executable"
else
    echo "⚠️  Warning: Wrapper script not found at $WRAPPER_SCRIPT"
fi

echo ""
echo "================================================"
echo "Step 3: Installing LaunchAgents"
echo "================================================"
echo ""

bash "$SCRIPT_DIR/install-launchagents.sh"

echo ""
echo "================================================"
echo "Step 4: Validating Setup"
echo "================================================"
echo ""

# Check for required directories
REQUIRED_DIRS=(
    ".claude/commands"
    "Scripts/automation"
    "Scripts/launchagents"
    "Config"
    "Contacts/LinkedIn"
    "Daily"
    ".cache/logs"
)

echo "Checking directory structure..."
for dir in "${REQUIRED_DIRS[@]}"; do
    if [ -d "$VAULT_DIR/$dir" ]; then
        echo "  ✓ $dir"
    else
        echo "  ⚠️  Missing: $dir"
    fi
done
echo ""

# Check for required files
REQUIRED_FILES=(
    "Scripts/automation/daily-brief-runner.sh"
    "Scripts/automation/generate_daily_brief.py"
    "Scripts/launchagents/com.obsidian.dailybrief.plist"
    "Docs/SECURITY.md"
)

echo "Checking required files..."
for file in "${REQUIRED_FILES[@]}"; do
    if [ -f "$VAULT_DIR/$file" ]; then
        echo "  ✓ $file"
    else
        echo "  ⚠️  Missing: $file"
    fi
done
echo ""

# Check LaunchAgent status
echo "Checking LaunchAgent status..."
if launchctl list | grep -q "com.obsidian.dailybrief"; then
    echo "  ✓ Daily brief automation is loaded"
else
    echo "  ⚠️  Daily brief automation not found"
fi
echo ""

# Check for Claude Code CLI
echo "Checking Claude Code CLI..."
if command -v claude &> /dev/null; then
    CLAUDE_VERSION=$(claude --version 2>/dev/null || echo "unknown")
    echo "  ✓ Claude Code installed ($CLAUDE_VERSION)"
else
    echo "  ⚠️  Claude Code CLI not found"
    echo "     Install from: https://docs.claude.com/claude-code"
fi
echo ""

echo "================================================"
echo "Step 5: Security & Permissions"
echo "================================================"
echo ""

echo "✅ Security Features Enabled:"
echo "   • Input sanitization (prompt injection protection)"
echo "   • Path validation (vault-only access)"
echo "   • Audit logging (comprehensive tracking)"
echo "   • Restricted execution environment"
echo ""

echo "📋 Permissions Options:"
echo ""
echo "RECOMMENDED: Vault-Only Access (No Full Disk Access needed)"
echo "   The wrapper script restricts all operations to the vault directory."
echo "   This is the most secure option."
echo ""
echo "ALTERNATIVE: Full Disk Access (if automation doesn't work)"
echo "   System Settings → Privacy & Security → Full Disk Access"
echo "   Add: /bin/bash"
echo ""
echo "See Docs/SECURITY.md for detailed security information"
echo ""

read -p "Continue with vault-only access (recommended)? (y/n) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo ""
    echo "ℹ️  If you experience issues, see Docs/SECURITY.md for alternative setups"
fi

echo ""
echo "================================================"
echo "✅ Setup Complete!"
echo "================================================"
echo ""

cat << EOF
Your AI-driven Executive Operating System is ready!

Next Steps:

1. Open Obsidian and navigate to your vault
2. Test daily brief generation:
   launchctl start com.obsidian.dailybrief

3. Check the generated brief:
   Daily/$(date +%Y-%m-%d).md

4. Available commands (run 'claude' in your vault directory):
   /daily                    - Generate daily prioritization brief
   /weekly                   - Weekly review and planning
   /portfolio-update         - Portfolio company health report
   /find-connections [query] - Network intelligence search
   /research [topic]         - AI-powered research
   ... and 19 more commands!

5. Weekly PAI update check (run every Friday):
   bash Scripts/automation/check-pai-updates.sh

Documentation:
  • Security guide: Docs/SECURITY.md
  • Full setup guide: Scripts/AUTOMATION-SETUP.md
  • Portability guide: Docs/PORTABILITY.md
  • Command reference: .claude/commands/

Security:
  • Audit logs: .cache/logs/security-audit.log
  • Daily logs: .cache/logs/daily-brief-*.log
  • See Docs/SECURITY.md for security features

Your automation will run at 5:00 AM PT every weekday.
First automated brief: Tomorrow morning!

EOF

echo "Machine setup complete: $MACHINE_NAME"
echo "User: $CURRENT_USER"
echo "Date: $(date)"
echo ""
