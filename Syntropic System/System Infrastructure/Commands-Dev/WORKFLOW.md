# Development Workflow

Guide for continuing development and maintaining this project.

---

## 📁 Key File Locations

### Your Working Vault (Live System)
```
/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/
├── .claude/commands/          # Your working commands (used by Claude Code)
├── Commands/                  # Visible copy for reference
├── Scripts/                   # Automation scripts
└── Commands/IMPLEMENTATION_STATUS.md  # Track what's built/pending
```

### GitHub Repository (Public Version)
```
/Users/elbowspeak1/Documents/claude-code-automation/
├── commands/                  # Sanitized commands for public
├── docs/                      # Complete documentation
├── examples/                  # Example outputs
├── scripts/                   # Automation scripts
└── [all project files]
```

**GitHub URL:** https://github.com/elbowspeak/ai-driven-executive-os

---

## 🔄 How to Continue Work

### Starting a New Session

**Option 1: Reference the Project**
```
"Continue work on the ai-driven-executive-os project.
Check IMPLEMENTATION_STATUS.md for current state."
```

**Option 2: Reference Specific File**
```
"I want to improve the /daily command.
Read: /Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/daily.md"
```

**Option 3: Reference This Workflow**
```
"Read WORKFLOW.md in the ai-driven-executive-os repo
and help me with [specific task]"
```

---

## 🛠️ Making Changes

### 1. Edit Commands in Your Vault

**Your working commands:**
```bash
/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/
```

**Edit with:**
- Claude Code (in this interface)
- VS Code: `code "/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/"`
- Any text editor

**Test immediately:** Commands work right away in your vault.

---

### 2. Update GitHub Repository

**When you improve a command:**

```bash
# Step 1: Update working command in vault (already done)

# Step 2: Sanitize and copy to GitHub repo
cd /Users/elbowspeak1/Documents/claude-code-automation

# Copy command (sanitize personal data first!)
# Replace: company names, contact names, specific paths
# With: generic examples

# Step 3: Commit and push
git add commands/[category]/[command].md
git commit -m "Improve /command: [describe change]"
git push
```

---

### 3. Update Documentation

**When you add features or change workflow:**

```bash
cd /Users/elbowspeak1/Documents/claude-code-automation

# Edit relevant docs
# - README.md (main overview)
# - docs/COMMAND-REFERENCE.md (command documentation)
# - docs/SETUP.md (installation guide)
# - IMPLEMENTATION_STATUS.md (track progress)

git add [changed files]
git commit -m "Update docs: [describe change]"
git push
```

---

## 📋 Standard Workflow Pattern

### For New Commands

1. **Create in vault first:**
   ```
   /Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/new-command.md
   ```

2. **Test thoroughly** in your actual workflow

3. **Sanitize and copy to GitHub:**
   ```bash
   cd /Users/elbowspeak1/Documents/claude-code-automation
   # Create sanitized version in appropriate category
   cp [source] commands/[category]/new-command.md
   # Edit to remove personal data
   ```

4. **Update documentation:**
   - Add to `docs/COMMAND-REFERENCE.md`
   - Update README if major feature
   - Update `IMPLEMENTATION_STATUS.md`

5. **Commit and push:**
   ```bash
   git add .
   git commit -m "Add /new-command: [description]"
   git push
   ```

---

## 🔍 Checking Current State

### See What's Changed
```bash
cd /Users/elbowspeak1/Documents/claude-code-automation
git status                    # See uncommitted changes
git log --oneline -10         # See recent commits
git diff                      # See specific changes
```

### Review Implementation Status
```bash
# Check what's built, what's pending
cat "/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/Commands/IMPLEMENTATION_STATUS.md"
```

---

## 🚀 Common Tasks

### Add a New Command Category

1. **Create category folder:**
   ```bash
   mkdir -p /Users/elbowspeak1/Documents/claude-code-automation/commands/new-category
   ```

2. **Add commands to category**

3. **Update COMMAND-REFERENCE.md:**
   - Add new section
   - Document all commands in category

4. **Push to GitHub**

---

### Improve Existing Command

1. **Edit in vault:**
   ```
   /Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/[command].md
   ```

2. **Test the improvement**

3. **Copy improvement to GitHub repo** (sanitized)

4. **Document the change:**
   ```bash
   git commit -m "Improve /command: [what changed and why]"
   ```

---

### Update Automation Scripts

1. **Edit in vault:**
   ```
   /Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/Scripts/
   ```

2. **Test automation** (wait for next scheduled run or trigger manually)

3. **Copy to GitHub repo** (sanitize paths)

4. **Update `scripts/AUTOMATION-SETUP.md`** if setup changed

---

### Add Example Outputs

1. **Generate output** from your vault (run a command)

2. **Sanitize output:**
   - Remove company names
   - Remove contact names
   - Remove specific dates/data
   - Use generic examples

3. **Add to examples folder:**
   ```
   /Users/elbowspeak1/Documents/claude-code-automation/examples/example-[command].md
   ```

4. **Reference in documentation**

---

## 🎯 Best Practices

### ✅ Do's

- **Test in vault first** - Make sure commands work before publishing
- **Sanitize always** - Never commit personal data to GitHub
- **Document changes** - Update COMMAND-REFERENCE.md when commands change
- **Commit frequently** - Small, focused commits with clear messages
- **Update IMPLEMENTATION_STATUS.md** - Track what's built, what's pending

### ❌ Don'ts

- **Don't commit personal data** - Company names, contacts, paths
- **Don't skip testing** - Always verify commands work
- **Don't forget to push** - Changes only go live when pushed to GitHub
- **Don't edit GitHub repo directly** - Edit locally, then push (maintains history)

---

## 📊 Maintenance Schedule

### Daily
- Use your commands in vault
- Note what works well, what doesn't
- Quick fixes as needed

### Weekly
- Review any improvements made
- Update documentation if needed
- Push accumulated changes to GitHub

### Monthly
- Review IMPLEMENTATION_STATUS.md
- Add new features based on usage
- Update examples with better real-world outputs
- Check GitHub issues/discussions

---

## 🐛 Troubleshooting

### Command Not Working
1. Check vault command file: `/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/.claude/commands/`
2. Verify file exists and has correct name
3. Check Claude Code can read the file
4. Test with simple version first

### GitHub Push Failed
```bash
cd /Users/elbowspeak1/Documents/claude-code-automation
git status              # See what's changed
git pull                # Get latest from GitHub
git push                # Try push again
```

### Lost Track of Changes
```bash
git log --oneline -20   # See recent commits
git diff HEAD~1         # Compare to last commit
```

---

## 🤝 Getting Help

### In Claude Code Sessions
```
"I need help with [specific issue] in the ai-driven-executive-os project.
Read [relevant file] and help me [specific task]."
```

### Documentation
- `README.md` - Project overview
- `docs/SETUP.md` - Installation guide
- `docs/COMMAND-REFERENCE.md` - All commands documented
- `docs/CUSTOMIZATION.md` - How to create commands
- `IMPLEMENTATION_STATUS.md` - Current state

### GitHub
- **Issues:** https://github.com/elbowspeak/ai-driven-executive-os/issues
- **Discussions:** For questions and ideas

---

## 📚 Quick Reference

### Key Commands
```bash
# Navigate to repo
cd /Users/elbowspeak1/Documents/claude-code-automation

# Check status
git status

# Commit changes
git add .
git commit -m "Description of changes"
git push

# View history
git log --oneline -10

# Open in editor
code .
```

### Key Files
- **Implementation tracking:** `Commands/IMPLEMENTATION_STATUS.md` (in vault)
- **Command reference:** `docs/COMMAND-REFERENCE.md` (in repo)
- **Your working commands:** `.claude/commands/` (in vault)
- **Public commands:** `commands/` (in repo)

---

## 🎓 Learning Resources

### Understanding the System
1. Read `README.md` - High-level overview
2. Read `docs/COMMAND-REFERENCE.md` - How each command works
3. Read `docs/CUSTOMIZATION.md` - How to create new commands
4. Read example commands in `commands/` - See patterns

### Git Basics
- `git status` - See what's changed
- `git add [file]` - Stage changes
- `git commit -m "message"` - Save changes
- `git push` - Upload to GitHub
- `git pull` - Download from GitHub

---

## 💡 Next Steps

### Immediate
1. Test the system in your vault
2. Make first improvement
3. Push to GitHub

### This Week
1. Import LinkedIn contacts (when arrives)
2. Prepare for EncodedVC meeting
3. Use commands daily

### This Week
1. **Set up Atlassian MCP** (Jira + Confluence integration)
2. Import LinkedIn contacts (when arrives)
3. Prepare for EncodedVC meeting

### This Month
1. Add new features based on usage
2. Create video demo
3. Share on social media

---

**Remember:** Your vault has the working system. The GitHub repo is the public, sanitized version. Always test in vault first, then push to GitHub!

---

*Last Updated: 2025-11-11*
*Maintainer: Joshua Shane (joshua@elbowspeak.com)*
