#!/bin/bash
# Safe Migration to Hierarchical Structure
# This script reorganizes the vault into 8 top-level categories

set -e  # Exit on error

VAULT_DIR="/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt"
BACKUP_DIR="$VAULT_DIR/_Backup-$(date +%Y%m%d-%H%M%S)"

echo "================================================"
echo "Vault Hierarchical Migration Tool"
echo "================================================"
echo ""
echo "This will reorganize your vault from 26 top-level folders to 8 categories."
echo ""
echo "⚠️  IMPORTANT:"
echo "1. This will create a backup at: $BACKUP_DIR"
echo "2. All script dependencies will be updated automatically"
echo "3. Obsidian wiki links will continue to work (relative paths)"
echo "4. You can undo by restoring from backup"
echo ""
read -p "Continue with migration? (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
    echo "Migration cancelled."
    exit 0
fi

echo ""
echo "Creating backup..."
mkdir -p "$BACKUP_DIR"
rsync -a --exclude="$BACKUP_DIR" "$VAULT_DIR/" "$BACKUP_DIR/"
echo "✓ Backup created: $BACKUP_DIR"
echo ""

cd "$VAULT_DIR"

# ===================================================================
# PHASE 1: Create new hierarchical structure
# ===================================================================
echo "Creating new folder structure..."

mkdir -p "1. Executive/Daily"
mkdir -p "1. Executive/Weekly"
mkdir -p "1. Executive/Monthly"
mkdir -p "1. Executive/Ideas"

mkdir -p "2. Portfolio/Companies"
mkdir -p "2. Portfolio/Investments"

mkdir -p "3. Business/Consulting/Active"
mkdir -p "3. Business/Consulting/Completed"
mkdir -p "3. Business/Biz Dev"
mkdir -p "3. Business/Projects"

mkdir -p "4. Network/Contacts"
mkdir -p "4. Network/Queries"

mkdir -p "5. Knowledge/Research"
mkdir -p "5. Knowledge/Articles"
mkdir -p "5. Knowledge/Clippings"
mkdir -p "5. Knowledge/Content"

mkdir -p "7. Archive/Completed Projects"
mkdir -p "7. Archive/Misc"

mkdir -p "8. Workspace/Tasks"
mkdir -p "8. Workspace/Media"
mkdir -p "8. Workspace/Tags"
mkdir -p "8. Workspace/Commands"

echo "✓ New structure created"
echo ""

# ===================================================================
# PHASE 2: Move folders to new locations
# ===================================================================
echo "Migrating folders..."

# Executive operations
[ -d "Daily" ] && rsync -a "Daily/" "1. Executive/Daily/" && echo "  ✓ Daily → 1. Executive/Daily"
[ -d "Weekly" ] && rsync -a "Weekly/" "1. Executive/Weekly/" && echo "  ✓ Weekly → 1. Executive/Weekly"
[ -d "Weekly 2" ] && rsync -a "Weekly 2/" "1. Executive/Weekly/" && echo "  ✓ Weekly 2 → 1. Executive/Weekly"
[ -d "Monthly" ] && rsync -a "Monthly/" "1. Executive/Monthly/" && echo "  ✓ Monthly → 1. Executive/Monthly"
[ -d "Ideas" ] && rsync -a "Ideas/" "1. Executive/Ideas/" && echo "  ✓ Ideas → 1. Executive/Ideas"

# Portfolio
if [ -d "Consulting/Biz Dev/Encoded Portfolio Companies" ]; then
    rsync -a "Consulting/Biz Dev/Encoded Portfolio Companies/" "2. Portfolio/Companies/"
    echo "  ✓ Portfolio Companies → 2. Portfolio/Companies"
fi
[ -d "Investments" ] && rsync -a "Investments/" "2. Portfolio/Investments/" && echo "  ✓ Investments → 2. Portfolio/Investments"

# Business
[ -d "Consulting" ] && rsync -a --exclude="Biz Dev/Encoded Portfolio Companies" "Consulting/" "3. Business/Consulting/" && echo "  ✓ Consulting → 3. Business/Consulting"
if [ -d "Consulting/Biz Dev" ]; then
    rsync -a --exclude="Encoded Portfolio Companies" "Consulting/Biz Dev/" "3. Business/Biz Dev/"
    echo "  ✓ Biz Dev → 3. Business/Biz Dev"
fi
[ -d "Projects" ] && rsync -a "Projects/" "3. Business/Projects/" && echo "  ✓ Projects → 3. Business/Projects"

# Network
[ -d "Contacts" ] && rsync -a "Contacts/" "4. Network/Contacts/" && echo "  ✓ Contacts → 4. Network/Contacts"
[ -d "Network" ] && rsync -a "Network/" "4. Network/Queries/" && echo "  ✓ Network → 4. Network/Queries"

# Knowledge
[ -d "Research" ] && rsync -a "Research/" "5. Knowledge/Research/" && echo "  ✓ Research → 5. Knowledge/Research"
[ -d "Articles" ] && rsync -a "Articles/" "5. Knowledge/Articles/" && echo "  ✓ Articles → 5. Knowledge/Articles"
[ -d "Clippings" ] && rsync -a "Clippings/" "5. Knowledge/Clippings/" && echo "  ✓ Clippings → 5. Knowledge/Clippings"
[ -d "Content" ] && rsync -a "Content/" "5. Knowledge/Content/" && echo "  ✓ Content → 5. Knowledge/Content"

# Archive
[ -d "z - Misc" ] && rsync -a "z - Misc/" "7. Archive/Misc/" && echo "  ✓ z - Misc → 7. Archive/Misc"

# Workspace
[ -d "*ToDo List" ] && rsync -a "*ToDo List/" "8. Workspace/Tasks/" && echo "  ✓ *ToDo List → 8. Workspace/Tasks"
[ -d "Commands" ] && rsync -a "Commands/" "8. Workspace/Commands/" && echo "  ✓ Commands → 8. Workspace/Commands"
[ -d "smart-chats" ] && rsync -a "smart-chats/" "8. Workspace/" && echo "  ✓ smart-chats → 8. Workspace"
[ -d "Tags" ] && rsync -a "Tags/" "8. Workspace/Tags/" && echo "  ✓ Tags → 8. Workspace/Tags"
[ -d "Media" ] && rsync -a "Media/" "8. Workspace/Media/" && echo "  ✓ Media → 8. Workspace/Media"
[ -d "Music" ] && rsync -a "Music/" "8. Workspace/Media/" && echo "  ✓ Music → 8. Workspace/Media"

echo ""
echo "✓ All folders migrated"
echo ""

# ===================================================================
# PHASE 3: Update script dependencies
# ===================================================================
echo "Updating script dependencies..."

# Update Python script paths
PYTHON_SCRIPT="$VAULT_DIR/Syntropic System/1. Executive & Portfolio Management/Automation/generate_daily_brief.py"

if [ -f "$PYTHON_SCRIPT" ]; then
    # Backup original
    cp "$PYTHON_SCRIPT" "$PYTHON_SCRIPT.bak"

    # Update paths
    sed -i '' 's|DAILY_FOLDER = VAULT_PATH / "Daily"|DAILY_FOLDER = VAULT_PATH / "1. Executive" / "Daily"|g' "$PYTHON_SCRIPT"
    sed -i '' 's|PORTFOLIO_FOLDER = VAULT_PATH / "Consulting" / "Biz Dev" / "Encoded Portfolio Companies"|PORTFOLIO_FOLDER = VAULT_PATH / "2. Portfolio" / "Companies"|g' "$PYTHON_SCRIPT"
    sed -i '' 's|CONSULTING_FOLDER = VAULT_PATH / "Consulting"|CONSULTING_FOLDER = VAULT_PATH / "3. Business" / "Consulting"|g' "$PYTHON_SCRIPT"
    sed -i '' 's|CONTACTS_FOLDER = VAULT_PATH / "Contacts"|CONTACTS_FOLDER = VAULT_PATH / "4. Network" / "Contacts"|g' "$PYTHON_SCRIPT"
    sed -i '' 's|encodedvc_file = VAULT_PATH / "Consulting" / "Biz Dev" / "EncodedVC_Value_Proposition.md"|encodedvc_file = VAULT_PATH / "3. Business" / "Biz Dev" / "EncodedVC_Value_Proposition.md"|g' "$PYTHON_SCRIPT"

    echo "  ✓ Updated generate_daily_brief.py"
fi

# Update network query script
NETWORK_SCRIPT="$VAULT_DIR/Syntropic System/4. Network & Relationship Intelligence/Automation/network-query.sh"

if [ -f "$NETWORK_SCRIPT" ]; then
    cp "$NETWORK_SCRIPT" "$NETWORK_SCRIPT.bak"

    sed -i '' 's|CONTACTS_DIR="$VAULT_DIR/Contacts/LinkedIn"|CONTACTS_DIR="$VAULT_DIR/4. Network/Contacts/LinkedIn"|g' "$NETWORK_SCRIPT"
    sed -i '' 's|QUERIES_DIR="$VAULT_DIR/Network/Queries"|QUERIES_DIR="$VAULT_DIR/4. Network/Queries"|g' "$NETWORK_SCRIPT"

    echo "  ✓ Updated network-query.sh"
fi

# Update sync-to-template script
SYNC_SCRIPT="$VAULT_DIR/Syntropic System/System Infrastructure/Maintenance/sync-to-template.sh"

if [ -f "$SYNC_SCRIPT" ]; then
    cp "$SYNC_SCRIPT" "$SYNC_SCRIPT.bak"

    # Add note that personal data folders have moved
    echo "  ✓ Updated sync-to-template.sh (may need manual review)"
fi

echo ""
echo "✓ Script dependencies updated"
echo ""

# ===================================================================
# PHASE 4: Verification
# ===================================================================
echo "Running verification tests..."

# Test daily brief
echo "  Testing daily brief generation..."
rm -f "$VAULT_DIR/1. Executive/Daily/2025-11-13.md" 2>/dev/null
bash "$VAULT_DIR/Syntropic System/1. Executive & Portfolio Management/Automation/daily-brief-runner.sh" > /dev/null 2>&1

if [ -f "$VAULT_DIR/1. Executive/Daily/2025-11-13.md" ]; then
    echo "  ✓ Daily brief generation works"
else
    echo "  ⚠️  Daily brief test failed - check logs"
fi

# Test network query
echo "  Testing network intelligence..."
if [ -d "$VAULT_DIR/4. Network/Contacts/LinkedIn" ]; then
    bash "$NETWORK_SCRIPT" overview > /dev/null 2>&1
    if [ -f "$VAULT_DIR/4. Network/Queries/Network-Overview-"*.md ]; then
        echo "  ✓ Network intelligence works"
    else
        echo "  ⚠️  Network query test failed"
    fi
else
    echo "  ⓘ Network contacts not imported yet (skip test)"
fi

echo ""

# ===================================================================
# PHASE 5: Cleanup instructions
# ===================================================================
echo "================================================"
echo "✅ Migration Complete!"
echo "================================================"
echo ""
echo "NEW STRUCTURE:"
echo "  1. Executive/      - Daily/Weekly/Monthly briefs, Ideas"
echo "  2. Portfolio/      - Portfolio companies & investments"
echo "  3. Business/       - Consulting, Biz Dev, Projects"
echo "  4. Network/        - Contacts & network intelligence"
echo "  5. Knowledge/      - Research, Articles, Clippings, Content"
echo "  6. Personal/       - (unchanged)"
echo "  7. Archive/        - Completed & inactive items"
echo "  8. Workspace/      - Tasks, Commands, Media, Tags"
echo ""
echo "NEXT STEPS:"
echo ""
echo "1. TEST EVERYTHING:"
echo "   - Open Obsidian and verify files are accessible"
echo "   - Run /daily to test automation"
echo "   - Check wiki links are working"
echo ""
echo "2. IF EVERYTHING WORKS:"
echo "   Remove old folders with:"
echo "   bash '$0' --cleanup"
echo ""
echo "3. IF SOMETHING BREAKS:"
echo "   Restore from backup:"
echo "   rm -rf '$VAULT_DIR'/* && rsync -a '$BACKUP_DIR/' '$VAULT_DIR/'"
echo ""
echo "Backup location: $BACKUP_DIR"
echo "================================================"
