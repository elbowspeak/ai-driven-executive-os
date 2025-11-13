#!/bin/bash
# Sync changes from personal vault to public template repository
# This script safely copies generic files while excluding personal data

set -e

# Configuration
PERSONAL_VAULT="$HOME/Documents/Obsidian Vault/Doikayt"
TEMPLATE_REPO="$HOME/Documents/ai-executive-os-template"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo "================================================"
echo "Sync Personal Vault → Template Repository"
echo "================================================"
echo ""

# Verify directories exist
if [ ! -d "$PERSONAL_VAULT" ]; then
    echo -e "${RED}Error: Personal vault not found at $PERSONAL_VAULT${NC}"
    exit 1
fi

if [ ! -d "$TEMPLATE_REPO" ]; then
    echo -e "${YELLOW}Template repository not found. Creating...${NC}"
    mkdir -p "$TEMPLATE_REPO"
    cd "$TEMPLATE_REPO"
    git init
    echo "# AI-Driven Executive Operating System Template" > README.md
    git add README.md
    git commit -m "Initial commit"
    echo -e "${GREEN}✓ Template repository created${NC}"
fi

echo -e "${BLUE}Personal Vault:${NC} $PERSONAL_VAULT"
echo -e "${BLUE}Template Repo:${NC} $TEMPLATE_REPO"
echo ""

# Function to copy directory
copy_dir() {
    local src="$1"
    local dst="$2"
    local description="$3"

    echo -e "${YELLOW}→${NC} Copying $description..."

    if [ -d "$src" ]; then
        mkdir -p "$dst"
        rsync -av --delete --exclude='.DS_Store' "$src/" "$dst/"
        echo -e "${GREEN}  ✓ $description copied${NC}"
    else
        echo -e "${RED}  ✗ Source not found: $src${NC}"
    fi
}

# Function to copy file
copy_file() {
    local src="$1"
    local dst="$2"
    local description="$3"

    echo -e "${YELLOW}→${NC} Copying $description..."

    if [ -f "$src" ]; then
        mkdir -p "$(dirname "$dst")"
        cp "$src" "$dst"
        echo -e "${GREEN}  ✓ $description copied${NC}"
    else
        echo -e "${RED}  ✗ Source not found: $src${NC}"
    fi
}

# Copy the entire Syntropic System (the new organized structure)
echo -e "${BLUE}Copying Syntropic System (organized structure)...${NC}"
echo ""

copy_dir "$PERSONAL_VAULT/Syntropic System" "$TEMPLATE_REPO/Syntropic System" "Syntropic System"

# Copy .claude directory (contains symlinks to Syntropic System)
# Note: rsync will copy symlinks as symlinks with -l flag, or follow them with -L
# We want to copy actual files for the template, so we'll use -L to follow symlinks
echo ""
echo -e "${BLUE}Copying .claude directory (following symlinks)...${NC}"
echo ""

if [ -d "$PERSONAL_VAULT/.claude" ]; then
    mkdir -p "$TEMPLATE_REPO/.claude"
    # Copy and follow symlinks to get actual command files
    rsync -avL --delete --exclude='.DS_Store' "$PERSONAL_VAULT/.claude/" "$TEMPLATE_REPO/.claude/"
    echo -e "${GREEN}  ✓ .claude directory copied${NC}"
fi

# Copy root files
echo ""
echo -e "${BLUE}Copying root files...${NC}"
echo ""

copy_file "$PERSONAL_VAULT/README.md" "$TEMPLATE_REPO/README.md" "README"
copy_file "$PERSONAL_VAULT/.gitignore" "$TEMPLATE_REPO/.gitignore" ".gitignore"

echo ""
echo -e "${BLUE}Creating placeholder directories...${NC}"
echo ""

# Create placeholder directories with README files
create_placeholder() {
    local dir="$1"
    local description="$2"

    mkdir -p "$TEMPLATE_REPO/$dir"

    cat > "$TEMPLATE_REPO/$dir/README.md" << EOF
# $dir

$description

This directory will be populated as you use the system:
- Add your own data here
- Files in this directory are excluded from git (see .gitignore)
- This is where your personal content lives

## Getting Started

After running setup, this directory will contain your personal data.
Refer to the main README.md for usage instructions.
EOF

    echo -e "${GREEN}  ✓ Created placeholder: $dir${NC}"
}

create_placeholder "Contacts/LinkedIn" "Your imported LinkedIn contacts will be stored here"
create_placeholder "Daily" "Daily briefs generated each weekday morning"
create_placeholder "Weekly" "Weekly review summaries"
create_placeholder "Portfolio Companies" "Portfolio company tracking and analysis"
create_placeholder "Research" "Research reports and market analysis"
create_placeholder "Network/Queries" "Network intelligence query results"
create_placeholder "Biz Dev" "Business development materials and tracking"

echo ""
echo -e "${BLUE}Checking for changes...${NC}"
echo ""

# Change to template repo and show git status
cd "$TEMPLATE_REPO"

if [ -d .git ]; then
    # Check if there are any changes
    if git diff --quiet && git diff --staged --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
        echo -e "${GREEN}✓ No changes detected. Template is up to date.${NC}"
        exit 0
    fi

    echo -e "${YELLOW}Changes detected:${NC}"
    echo ""

    # Show what changed
    git status --short

    echo ""
    echo "================================================"
    echo -e "${YELLOW}Review Changes${NC}"
    echo "================================================"
    echo ""
    echo "What would you like to do?"
    echo ""
    echo "  1) View detailed diff"
    echo "  2) Commit and prepare for push"
    echo "  3) Exit without committing"
    echo ""
    read -p "Choose [1-3]: " choice

    case $choice in
        1)
            echo ""
            git diff
            echo ""
            echo -e "${BLUE}Press Enter to continue...${NC}"
            read

            # Ask again after showing diff
            echo ""
            echo "Would you like to commit these changes? [y/N]"
            read -p "> " commit_choice

            if [[ $commit_choice =~ ^[Yy]$ ]]; then
                choice=2
            else
                choice=3
            fi
            ;;
    esac

    if [ "$choice" = "2" ]; then
        echo ""
        echo -e "${YELLOW}Enter commit message:${NC}"
        read -p "> " commit_msg

        if [ -z "$commit_msg" ]; then
            commit_msg="Sync changes from personal vault"
        fi

        git add -A
        git commit -m "$commit_msg"

        echo ""
        echo -e "${GREEN}✓ Changes committed${NC}"
        echo ""
        echo "To push to GitHub, run:"
        echo -e "${BLUE}  cd $TEMPLATE_REPO${NC}"
        echo -e "${BLUE}  git push origin main${NC}"
        echo ""
    else
        echo ""
        echo -e "${YELLOW}Exiting without committing changes${NC}"
        exit 0
    fi
else
    echo -e "${YELLOW}Not a git repository. Initialize with:${NC}"
    echo "  cd $TEMPLATE_REPO"
    echo "  git init"
    echo "  git add ."
    echo "  git commit -m 'Initial commit'"
fi

echo ""
echo "================================================"
echo -e "${GREEN}✓ Sync Complete${NC}"
echo "================================================"
