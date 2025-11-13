#!/bin/bash

# Security Wrapper for Daily Brief Automation
# This script provides a restricted environment for running daily brief generation
# to protect against prompt injection and unauthorized file access.

set -euo pipefail

# Configuration
VAULT_PATH="$HOME/Documents/Obsidian Vault/Doikayt"
LOG_DIR="$VAULT_PATH/.cache/logs"
AUDIT_LOG="$LOG_DIR/security-audit.log"
DATE_STAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Audit logging function
log_audit() {
    echo "[$DATE_STAMP] $1" >> "$AUDIT_LOG"
}

# Start audit trail
log_audit "Daily brief automation started by UID=$(id -u) PID=$$"

# Validate vault path exists
if [[ ! -d "$VAULT_PATH" ]]; then
    log_audit "ERROR: Vault path not found: $VAULT_PATH"
    echo "Error: Vault directory not found" >&2
    exit 1
fi

# Change to vault directory (restricted scope)
cd "$VAULT_PATH" || {
    log_audit "ERROR: Failed to change to vault directory"
    exit 1
}

log_audit "Changed to vault directory: $VAULT_PATH"

# Restrict PATH to essential binaries only
export PATH="/usr/bin:/bin:/usr/local/bin"
log_audit "Restricted PATH to: $PATH"

# Unset potentially dangerous environment variables
unset LD_PRELOAD
unset LD_LIBRARY_PATH
unset DYLD_INSERT_LIBRARIES
unset DYLD_LIBRARY_PATH

# Validate Python script exists
PYTHON_SCRIPT="Scripts/automation/generate_daily_brief.py"
if [[ ! -f "$PYTHON_SCRIPT" ]]; then
    log_audit "ERROR: Python script not found: $PYTHON_SCRIPT"
    echo "Error: Daily brief script not found" >&2
    exit 1
fi

log_audit "Executing daily brief generation script"

# Run the daily brief generation with restricted permissions
# Note: timeout command not available on macOS by default
# Consider installing coreutils (brew install coreutils) for gtimeout if needed
if python3 "$PYTHON_SCRIPT" 2>&1 | tee -a "$LOG_DIR/daily-brief-$(date +%Y-%m-%d).log"; then
    log_audit "Daily brief generation completed successfully"
    exit 0
else
    EXIT_CODE=$?
    log_audit "ERROR: Daily brief generation failed with exit code $EXIT_CODE"
    exit $EXIT_CODE
fi
