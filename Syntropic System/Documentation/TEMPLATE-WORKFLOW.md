# Template Repository Workflow

**How to maintain the public template while keeping your personal vault private**

---

## 🏗️ Architecture Overview

### Two Separate Things

**1. Your Personal Vault** (Private)
- **Location:** `~/Documents/Obsidian Vault/Doikayt/`
- **Purpose:** Your actual working environment
- **Sync:** Obsidian Sync (laptop ↔ desktop)
- **Git:** Current GitHub repo (can stay private or delete it)
- **Contains:** All your personal data, contacts, briefs, portfolio

**2. Public Template Repo** (Public)
- **Location:** `~/Documents/ai-executive-os-template/`
- **Purpose:** Shareable template for others to fork
- **Sync:** Git → GitHub (public repository)
- **Contains:** Only generic scripts, configs, docs, empty placeholders

---

## 🔄 Workflow: Personal → Template

### When You Add New Features

**Scenario:** You create a new command or improve a script in your personal vault

**Steps:**

1. **Work in your personal vault** (as normal)
   ```bash
   # You're working in: ~/Documents/Obsidian Vault/Doikayt/
   # Add new command, improve script, etc.
   ```

2. **When ready to share, run sync script**
   ```bash
   cd ~/Documents/Obsidian\ Vault/Doikayt
   bash Scripts/maintenance/sync-to-template.sh
   ```

3. **The script will:**
   - Copy all generic files (Scripts/, Config/, Docs/, .claude/)
   - Create placeholder directories
   - Show you what changed
   - Let you review and commit

4. **Review changes**
   ```bash
   # Script shows you git diff
   # Choose to commit or exit
   ```

5. **Push to GitHub**
   ```bash
   cd ~/Documents/ai-executive-os-template
   git push origin main
   ```

---

## 📦 What Gets Synced

### ✅ Always Synced (Safe to Share)

| Directory/File | Why It's Safe |
|----------------|---------------|
| `Scripts/` | Generic automation, no personal data |
| `Config/` | Package lists, no secrets |
| `Docs/` | Documentation, guides |
| `.claude/commands/` | Command templates (review for personal info) |
| `.claude/hooks/` | Generic hooks code |
| `README-TEMPLATE.md` → `README.md` | Public-facing docs |
| `.gitignore` | Protects personal data |

### ❌ Never Synced (Personal Data)

| Directory | Why It's Excluded |
|-----------|-------------------|
| `Contacts/` | Your personal contacts |
| `Daily/` | Your daily briefs |
| `Weekly/` | Your weekly reviews |
| `Portfolio Companies/` | Your portfolio data |
| `Research/` | Your research notes |
| `Network/Queries/` | Your network analysis |
| `Biz Dev/` | Your business materials |
| `.cache/logs/` | Your execution logs |

These exist in the template as **empty placeholder directories with README files**.

---

## 🛡️ Safety Checks

### Before Running Sync Script

**Review these files for personal information:**

1. **Claude Commands** (`.claude/commands/*.md`)
   - Do any commands reference your specific companies?
   - Do any examples include personal data?
   - Change "Microsoft" to "Company A" in examples

2. **Hooks** (`.claude/hooks/*.sh`)
   - Remove any personal email addresses
   - Remove any personal Slack webhooks
   - Use placeholder values

3. **Documentation** (`Docs/*.md`)
   - Check for your name, email, company names
   - Replace specific examples with generic ones

### Script Asks for Confirmation

The sync script will:
1. Show you exactly what files changed
2. Let you view the full diff
3. Only commit when you approve

---

## 📝 Example: Adding a New Command

### 1. Create Command in Personal Vault

```bash
# In ~/Documents/Obsidian Vault/Doikayt/
vim .claude/commands/investor-check.md
```

Command includes:
```markdown
# Investor Check

Analyze recent activity from [Portfolio Company] investors...

## Examples
- Check DataFlint investors
- Review Neurometric LP updates
```

### 2. Sanitize Before Syncing

Edit command to use generic examples:
```markdown
# Investor Check

Analyze recent activity from portfolio company investors...

## Examples
- Check [Company A] investors
- Review [Company B] LP updates
```

### 3. Run Sync Script

```bash
bash Scripts/maintenance/sync-to-template.sh
```

### 4. Review Output

```
→ Copying Claude Commands & Hooks...
  ✓ Claude Commands & Hooks copied

Changes detected:
M .claude/commands/investor-check.md

Review Changes
1) View detailed diff
2) Commit and prepare for push
3) Exit without committing

Choose [1-3]:
```

### 5. View Diff, Commit, Push

```bash
# After committing via script
cd ~/Documents/ai-executive-os-template
git push origin main
```

---

## 🔧 Initial Template Setup

### First Time Only

**1. Run the sync script** (creates template)
```bash
bash Scripts/maintenance/sync-to-template.sh
```

**2. Initialize git in template**
```bash
cd ~/Documents/ai-executive-os-template
git init
git add .
git commit -m "Initial template release"
```

**3. Create GitHub repository**
- Go to GitHub
- Create new repository: `ai-executive-os-template`
- Make it PUBLIC
- Don't initialize with README (we have one)

**4. Push to GitHub**
```bash
git remote add origin https://github.com/YOUR-USERNAME/ai-executive-os-template.git
git branch -M main
git push -u origin main
```

---

## 🔄 Regular Maintenance

### Weekly/Monthly

```bash
# 1. Work in your personal vault all week
cd ~/Documents/Obsidian\ Vault/Doikayt

# 2. When you've added shareable features
bash Scripts/maintenance/sync-to-template.sh

# 3. Review changes carefully
# 4. Commit and push

cd ~/Documents/ai-executive-os-template
git push origin main
```

### Before Pushing

**Checklist:**
- [ ] Reviewed all changed files for personal data
- [ ] Commands use generic examples
- [ ] No company names, emails, or personal info
- [ ] Documentation references are generic
- [ ] Tested that template README is accurate

---

## 📊 Example Directory Comparison

### Your Personal Vault
```
Contacts/LinkedIn/
├── John_Doe.md              (Your actual contact)
├── Jane_Smith.md            (Your actual contact)
└── ...4,937 more

Daily/
├── 2025-11-12.md           (Your actual brief)
└── ...
```

### Public Template
```
Contacts/LinkedIn/
└── README.md               (Explains this is for your contacts)

Daily/
└── README.md               (Explains this is for your briefs)
```

---

## 🎯 Benefits of This Approach

| Benefit | How It Works |
|---------|--------------|
| **Privacy** | Personal data stays in personal vault |
| **Sharing** | Generic automation shared via template |
| **Easy Updates** | One script propagates changes |
| **Review Control** | See exactly what's being shared |
| **No Accidents** | Script never copies personal directories |
| **Flexible** | Commit only what you want to share |

---

## 🚨 What If You Accidentally Push Personal Data?

### If You Catch It Quickly

```bash
# Remove the commit
cd ~/Documents/ai-executive-os-template
git reset --hard HEAD~1

# Force push (if already pushed)
git push -f origin main

# Clean up the file
rm path/to/personal/file
```

### If It's Been Up A While

1. **Remove the sensitive data**
2. **Commit the removal**
3. **Consider the data compromised**
4. **Rotate any exposed credentials**

**Prevention:** Always use the sync script + review before pushing!

---

## 📚 Related Files

- **Sync Script:** `Scripts/maintenance/sync-to-template.sh`
- **Template README:** `README-TEMPLATE.md` (becomes template's README.md)
- **Your README:** `README.md` (your personal documentation)
- **.gitignore:** Protects personal directories

---

## 💡 Tips

### Make the Sync Script Safer

Edit `Scripts/maintenance/sync-to-template.sh` to add custom checks:

```bash
# Add before copy_file for commands
if grep -r "DataFlint\|Neurometric\|IPXO" "$PERSONAL_VAULT/.claude/commands/" > /dev/null; then
    echo "⚠️  Warning: Found company names in commands!"
    echo "Review and sanitize before continuing."
    exit 1
fi
```

### Test Template Works

```bash
# Clone your template to a test location
cd /tmp
git clone https://github.com/YOUR-USERNAME/ai-executive-os-template.git test-template
cd test-template

# Run setup
bash Scripts/setup/setup-machine.sh

# Verify it works without your personal data
```

---

**Summary:** Your personal vault is your workspace. The template is what you share. The sync script connects them safely.
