# Portability Guide
**AI-driven Executive Operating System**

This guide explains how to set up your operating system on multiple machines (laptop, desktop, etc.) and keep everything in sync.

---

## 🎯 Design Philosophy

**Everything in the Vault → Portable by Default**

- ✅ All scripts, commands, and configs live in your Obsidian Vault
- ✅ Obsidian Sync keeps everything synchronized
- ✅ One setup script works on any machine
- ✅ Machine-specific settings auto-configured

---

## 📂 Vault Structure

```
Doikayt/
├── .claude/
│   └── commands/              # 24 slash commands (syncs automatically)
│
├── Scripts/
│   ├── setup/                 # Machine setup scripts
│   │   ├── setup-machine.sh   # ← RUN THIS on any new machine
│   │   ├── install-dependencies.sh
│   │   └── install-launchagents.sh
│   │
│   ├── automation/            # Automation scripts
│   │   ├── daily-brief-runner.sh (security wrapper)
│   │   ├── generate_daily_brief.py
│   │   ├── import-linkedin-contacts.py
│   │   └── check-pai-updates.sh
│   │
│   └── launchagents/          # LaunchAgent plists
│       └── com.obsidian.dailybrief.plist
│
├── .cache/logs/               # Security & execution logs
│
├── Config/
│   ├── dependencies.txt       # Python packages
│   └── tools.txt              # Brew packages
│
├── Contacts/LinkedIn/         # 4,939 imported contacts (syncs)
├── Daily/                     # Daily briefs (syncs)
├── Portfolio Companies/       # 7 companies (syncs)
└── Docs/                      # Documentation
```

---

## 🚀 Setting Up a New Machine

### One-Command Setup

```bash
# Navigate to your vault (synced via Obsidian Sync)
cd ~/Documents/Obsidian\ Vault/Doikayt

# Run the master setup script
bash Scripts/setup/setup-machine.sh
```

This script will:
1. Install dependencies (Python packages, tools)
2. Create `.cache/logs/` directory
3. Set execute permissions on security wrapper
4. Install LaunchAgents (with paths auto-configured for this machine)
5. Validate all security components
6. Guide you through permissions (vault-only access recommended)

**That's it!** Everything else is already synced via Obsidian.

---

## 🔄 What Syncs Automatically

Via **Obsidian Sync:**

| Category | What Syncs | Notes |
|----------|------------|-------|
| **Commands** | All 24 slash commands | Works immediately on new machine |
| **Scripts** | Python, Bash automation | Ready to run after setup |
| **Contacts** | 4,939 LinkedIn contacts | Full network available |
| **Data** | Daily briefs, portfolio files | Complete history |
| **Config** | Dependencies, tool lists | Setup script uses these |
| **LaunchAgents** | Plist files | Setup script installs them |

---

## ⚙️ What Requires Per-Machine Setup

Via **setup-machine.sh:**

| Item | Why Per-Machine | Auto-Configured? |
|------|-----------------|------------------|
| **LaunchAgents** | System location (`~/Library/LaunchAgents/`) | ✅ Yes (setup script) |
| **User Paths** | Different usernames (elbowspeak vs elbowspeak1) | ✅ Yes (auto-detected) |
| **Security Wrapper** | Execute permissions | ✅ Yes (setup script) |
| **Log Directory** | `.cache/logs/` creation | ✅ Yes (setup script) |
| **Dependencies** | Python packages, brew tools | ✅ Yes (auto-installed) |
| **Permissions** | Vault access (Full Disk Access optional) | ℹ️ Guided (vault-only recommended) |

---

## 📋 Setup Checklist

### First Time on a New Machine:

- [ ] **1. Obsidian Sync** - Wait for vault to fully sync
- [ ] **2. Run Setup Script** - `bash Scripts/setup/setup-machine.sh`
- [ ] **3. Permissions** - Vault-only access recommended (guided by setup)
- [ ] **4. Test Automation** - `Scripts/automation/daily-brief-runner.sh`
- [ ] **5. Verify Logs** - Check `.cache/logs/security-audit.log`
- [ ] **6. Verify Output** - Check `Daily/YYYY-MM-DD.md` was created

### Already Set Up? (Updating):

- [ ] **1. Pull Latest** - Obsidian Sync automatically updates scripts
- [ ] **2. Re-run Setup** - `bash Scripts/setup/setup-machine.sh` (safe to re-run)
- [ ] **3. Test** - Verify automation still works

---

## 🔧 Troubleshooting

### "Operation not permitted" Error

**Cause:** Insufficient permissions for automation

**Recommended Fix (Vault-Only Access):**
1. Verify wrapper script is being used
2. Check audit logs: `cat .cache/logs/security-audit.log`
3. Test manually: `Scripts/automation/daily-brief-runner.sh`

**Alternative Fix (Full Disk Access):**
1. System Settings → Privacy & Security → Full Disk Access
2. Add `/bin/bash` (press ⌘+Shift+G to navigate)
3. Reload LaunchAgent:
   ```bash
   launchctl unload ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
   launchctl load ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
   ```

See: `Docs/SECURITY.md` for security implications

---

### Scripts Not Syncing

**Cause:** Obsidian Sync might skip certain file types

**Check:**
```bash
# Verify scripts exist in vault
ls -la Scripts/automation/
ls -la Scripts/launchagents/
```

**Fix:** If missing, run setup on original machine first, then wait for sync

---

### Different Usernames

**Not a Problem!** Setup script auto-detects username and updates paths:
- Laptop: `/Users/elbowspeak1/...`
- Desktop: `/Users/elbowspeak/...`

Both work correctly after running `setup-machine.sh`

---

## 🔄 Keeping Up to Date

### Weekly: Check PAI Repository

Your system includes a weekly checker for Daniel Miessler's Personal AI Infrastructure:

```bash
bash Scripts/automation/check-pai-updates.sh
```

This generates a report at: `Daily/PAI-Updates-YYYY-MM-DD.md`

**Or integrate into `/weekly` command** (coming soon)

---

### Updating Your System

**When you add new features/scripts:**

1. **Add to vault** (they'll sync automatically)
2. **Update Config files** if new dependencies needed:
   - `Config/dependencies.txt` for Python packages
   - `Config/tools.txt` for brew tools
3. **Re-run setup on all machines**:
   ```bash
   bash Scripts/setup/setup-machine.sh
   ```

---

## 🎯 Real-World Usage

### Scenario 1: Working on Laptop

1. Morning: Laptop generates daily brief at 5 AM
2. You work all day, adding contacts, updating portfolio
3. Changes sync via Obsidian Sync
4. Desktop has same data when you get home

### Scenario 2: Adding a New Script

1. Create script on laptop: `Scripts/automation/new-script.sh`
2. Test it locally
3. Obsidian Sync copies to desktop automatically
4. On desktop: Run `bash Scripts/setup/setup-machine.sh` (if LaunchAgent needed)

### Scenario 3: New Command

1. Create command: `.claude/commands/my-command.md`
2. Obsidian Sync copies to desktop
3. Works immediately - no setup needed!

---

## 📚 Related Documentation

- **Security Guide:** `Docs/SECURITY.md` - Security architecture and features
- **Setup Guide:** `Scripts/AUTOMATION-SETUP.md` - Detailed automation setup
- **Workflows:** `Docs/WORKFLOWS.md` - Usage patterns and best practices
- **Commands:** `.claude/commands/README.md` - All 24 commands

---

## ✅ Benefits of This Approach

| Benefit | How It Works |
|---------|--------------|
| **Portable** | Everything in one vault directory |
| **Synchronized** | Obsidian Sync handles all data |
| **Automated Setup** | One script configures any machine |
| **Version Controlled** | Track changes, roll back if needed |
| **Machine Agnostic** | Auto-detects username, paths |
| **Easy Updates** | Change once, sync everywhere |

---

## 🚨 Important Notes

### Do NOT Commit to GitHub:
- Personal portfolio company data
- Real contact information
- API keys or credentials
- Your daily briefs

### DO Commit to GitHub (if desired):
- Setup scripts (generic)
- Command templates (sanitized)
- Documentation
- Configuration files (no secrets)

### Obsidian Sync vs Git:
- **Obsidian Sync:** For your personal data (contacts, briefs, real companies)
- **Git/GitHub:** For generic setup scripts and templates (public repo)

---

**You now have a fully portable, self-contained AI operating system!**

Any questions? Check:
- `Scripts/setup/setup-machine.sh` - See what the script does
- `Scripts/AUTOMATION-SETUP.md` - Troubleshooting guide
- `Commands/Automation Changes.md` - Recent changes log
