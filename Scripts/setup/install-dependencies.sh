#!/bin/bash
# Install Dependencies Script
# Installs required tools and Python packages for AI-driven Executive OS

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VAULT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
CONFIG_DIR="$VAULT_DIR/Config"

echo "================================================"
echo "Installing Dependencies"
echo "================================================"
echo ""

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macos"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="linux"
else
    echo "❌ Unsupported OS: $OSTYPE"
    exit 1
fi

echo "✓ Detected OS: $OS"
echo ""

# Check for Homebrew (macOS)
if [[ "$OS" == "macos" ]]; then
    if ! command -v brew &> /dev/null; then
        echo "⚠️  Homebrew not found. Install from https://brew.sh"
        echo "   Run: /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
        exit 1
    fi
    echo "✓ Homebrew installed"
fi

# Check for Python 3
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 not found. Please install Python 3.8+"
    exit 1
fi
PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
echo "✓ Python $PYTHON_VERSION installed"
echo ""

# Install Python dependencies
echo "Installing Python packages..."
if [ -f "$CONFIG_DIR/dependencies.txt" ]; then
    # Count non-comment, non-empty lines
    DEP_COUNT=$(grep -v '^#' "$CONFIG_DIR/dependencies.txt" | grep -v '^$' | wc -l | tr -d ' ')

    if [ "$DEP_COUNT" -gt 0 ]; then
        pip3 install -q -r "$CONFIG_DIR/dependencies.txt"
        echo "✓ Installed $DEP_COUNT Python packages"
    else
        echo "✓ No Python packages to install (using standard library)"
    fi
else
    echo "⚠️  No dependencies.txt found, skipping"
fi
echo ""

# Install external tools (macOS only for now)
if [[ "$OS" == "macos" ]] && [ -f "$CONFIG_DIR/tools.txt" ]; then
    echo "Checking external tools..."

    # Parse tools.txt for uncommented tool names
    # Skip comment lines and empty/whitespace-only lines
    TOOLS=$(grep -v '^\s*#' "$CONFIG_DIR/tools.txt" | grep -v '^\s*$' | awk 'NF > 0 {print $1}')

    if [ -z "$TOOLS" ]; then
        echo "✓ No external tools to install (all dependencies use standard library)"
    else
        INSTALLED=0
        SKIPPED=0

        for tool in $TOOLS; do
            # Skip empty tool names
            if [ -z "$tool" ]; then
                continue
            fi

            if command -v "$tool" &> /dev/null; then
                echo "  ✓ $tool (already installed)"
                ((SKIPPED++)) || true
            else
                echo "  → Installing $tool..."
                if brew install "$tool" &> /dev/null; then
                    ((INSTALLED++)) || true
                else
                    echo "    ⚠️  Failed to install $tool"
                fi
            fi
        done

        echo ""
        echo "✓ Installed $INSTALLED new tools, $SKIPPED already present"
    fi
fi
echo ""

# Check for Claude Code CLI
if ! command -v claude &> /dev/null; then
    echo "⚠️  Claude Code CLI not found"
    echo "   Install from: https://docs.claude.com/claude-code"
    echo "   This is required for slash commands to work"
    echo ""
fi

echo "================================================"
echo "✅ Dependencies installation complete"
echo "================================================"
echo ""
echo "Next: Run install-launchagents.sh to set up automation"
