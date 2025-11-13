# Daily Brief Automation Setup

Automatically generate your daily brief every weekday at 5:00 AM Pacific Time with comprehensive security measures.

---

## 📋 What's Been Set Up

### **1. Security Wrapper**
**File:** `Scripts/automation/daily-brief-runner.sh`
- Restricted execution environment (limited PATH)
- Vault-only directory access
- Comprehensive audit logging
- Environment variable sanitization

### **2. Python Generator**
**File:** `Scripts/automation/generate_daily_brief.py`
- Input sanitization (blocks dangerous patterns)
- Path validation (prevents directory traversal)
- Generates daily brief and saves to `Daily/YYYY-MM-DD.md`
- Comprehensive logging to `.cache/logs/`

### **3. LaunchAgent**
**File:** `~/Library/LaunchAgents/com.obsidian.dailybrief.plist`
- Schedules wrapper script to run at 5:00 AM PT
- Monday through Friday only
- Uses security wrapper for restricted execution

---

## 🚀 Activation Steps

### **Step 1: Run Setup Script (Recommended)**

The easiest way to set up everything:

```bash
cd ~/Documents/Obsidian\ Vault/Doikayt
bash Scripts/setup/setup-machine.sh
```

This will:
- Create `.cache/logs/` directory
- Set proper permissions on wrapper script
- Install LaunchAgent
- Validate all components

### **Step 2: Manual Installation (Alternative)**

If you prefer manual setup:

```bash
# 1. Create log directory
mkdir -p ~/.../Doikayt/.cache/logs

# 2. Make wrapper executable
chmod +x Scripts/automation/daily-brief-runner.sh

# 3. Install LaunchAgent
bash Scripts/setup/install-launchagents.sh
```

### **Step 3: Verify Installation**

```bash
# Check LaunchAgent is loaded
launchctl list | grep dailybrief
```

You should see:
```
-    0    com.obsidian.dailybrief
```

### **Step 4: Test Manually (Optional)**

Test the automation before waiting until 5 AM:

```bash
Scripts/automation/daily-brief-runner.sh
```

Then verify:
- Daily brief created: `Daily/$(date +%Y-%m-%d).md`
- Audit log exists: `.cache/logs/security-audit.log`
- Python log exists: `.cache/logs/daily-brief-$(date +%Y-%m-%d).log`

---

## 🔒 Security Features

### **Input Sanitization**

The Python script blocks dangerous patterns:
- Command injection (`backticks`, `$(...)`)
- Destructive commands (`rm -rf`, `eval`, `exec`)
- Subprocess execution attempts
- Shell pipes and command chaining

Blocked content is replaced with `[SANITIZED]` and logged.

### **Path Validation**

All file paths are validated to ensure they remain within the vault:
- Blocks directory traversal (`../../etc/passwd`)
- Rejects paths outside vault directory
- Logs validation failures

### **Restricted Execution**

The wrapper script provides a restricted environment:
- **Limited PATH:** `/usr/bin:/bin:/usr/local/bin` only
- **Directory Scoping:** Changes to vault before execution
- **Environment Sanitization:** Removes dangerous variables
- **Audit Logging:** Tracks all operations with UID/PID

### **Permissions**

**Vault-Only Access (Recommended):**
- No Full Disk Access required
- Wrapper script restricts all operations to vault
- Most secure option

**Full Disk Access (Fallback):**
- Only needed if automation doesn't work
- System Settings → Privacy & Security → Full Disk Access
- Add `/bin/bash`
- See `Docs/SECURITY.md` for details

---

## ⚙️ Configuration

### **Change the Time**

Edit `~/Library/LaunchAgents/com.obsidian.dailybrief.plist`:

```xml
<key>Hour</key>
<integer>5</integer>  <!-- Change this (0-23, in local time) -->
<key>Minute</key>
<integer>0</integer>   <!-- Change this (0-59) -->
```

After editing, reload:
```bash
launchctl unload ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
launchctl load ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
```

### **Disable Weekends (Already Configured)**

The LaunchAgent only runs Monday-Friday. No changes needed.

### **Disable Automation Temporarily**

```bash
launchctl unload ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
```

Re-enable:
```bash
launchctl load ~/Library/LaunchAgents/com.obsidian.dailybrief.plist
```

---

## 📊 Monitoring & Logs

### **Log Locations**

All logs are in `.cache/logs/`:

```bash
# Security audit log
cat .cache/logs/security-audit.log

# Daily brief generation logs
cat .cache/logs/daily-brief-$(date +%Y-%m-%d).log

# LaunchAgent output
cat .cache/logs/launchagent-out.log
cat .cache/logs/launchagent-error.log
```

### **Audit Log Example**

```
[2025-11-12 05:00:01] Daily brief automation started by UID=503 PID=12345
[2025-11-12 05:00:01] Changed to vault directory: /Users/.../Doikayt
[2025-11-12 05:00:01] Restricted PATH to: /usr/bin:/bin:/usr/local/bin
[2025-11-12 05:00:01] Executing daily brief generation script
[2025-11-12 05:00:15] Daily brief generation completed successfully
```

### **Monitor Logs in Real-Time**

```bash
# Watch audit log
tail -f .cache/logs/security-audit.log

# Watch daily brief generation
tail -f .cache/logs/daily-brief-$(date +%Y-%m-%d).log
```

### **Check LaunchAgent Status**

```bash
launchctl list | grep dailybrief
```

---

## 🔧 Troubleshooting

### **Daily Brief Not Generated?**

1. **Check logs:**
   ```bash
   cat .cache/logs/launchagent-error.log
   cat .cache/logs/security-audit.log
   ```

2. **Verify LaunchAgent is loaded:**
   ```bash
   launchctl list | grep dailybrief
   ```

3. **Test wrapper script manually:**
   ```bash
   Scripts/automation/daily-brief-runner.sh
   ```

4. **Check Python script directly:**
   ```bash
   python3 Scripts/automation/generate_daily_brief.py
   ```

### **Permission Denied Errors**

```bash
# Make wrapper executable
chmod +x Scripts/automation/daily-brief-runner.sh

# Verify permissions
ls -la Scripts/automation/daily-brief-runner.sh
```

### **Blocked Patterns Detected**

If you see `[SANITIZED]` in logs:

1. Check audit log for blocked pattern:
   ```bash
   grep "Blocked" .cache/logs/security-audit.log
   ```

2. Review source file for malicious content
3. See `Docs/SECURITY.md` for incident response

### **Automation Works Manually But Not Automatically**

This may be a permissions issue:

1. **Option 1:** Grant Full Disk Access to `/bin/bash`
   - System Settings → Privacy & Security → Full Disk Access
   - Add `/bin/bash`

2. **Option 2:** Check LaunchAgent logs for specific errors
   ```bash
   cat .cache/logs/launchagent-error.log
   ```

### **Want to Run Immediately?**

Force run now (doesn't wait for 5 AM):
```bash
launchctl start com.obsidian.dailybrief
```

---

## 🎯 Expected Behavior

**Every weekday at 5:00 AM:**
1. LaunchAgent triggers wrapper script
2. Wrapper creates restricted execution environment
3. Python script analyzes vault (portfolio, contacts, consulting)
4. Daily brief generated: `Daily/YYYY-MM-DD.md`
5. All operations logged to `.cache/logs/`
6. You wake up to a ready daily brief!

**When you open Obsidian:**
- Navigate to `Daily/` folder
- Today's date file is already there
- Read and work from it throughout the day

---

## 🛡️ Security Verification

### **Test Security Features**

```bash
# 1. Create test file with malicious content
cat > /tmp/test-injection.md << 'EOF'
Test: `whoami`
Test: $(pwd)
EOF

# 2. The sanitization will block these patterns
# 3. Check audit log for blocked attempts
grep "Blocked" .cache/logs/security-audit.log
```

### **Verify Path Validation**

The Python script won't access files outside the vault:
- Attempts to read `/etc/passwd` will fail
- All paths are validated before use
- Failures are logged

### **Monitor Audit Trail**

Regular security checks:
```bash
# Weekly audit review
cat .cache/logs/security-audit.log

# Check for blocked patterns
grep "Blocked" .cache/logs/*.log

# Verify no unauthorized access
grep "ERROR" .cache/logs/*.log
```

---

## 📚 Related Files

### **Core Scripts**
- **Wrapper:** `Scripts/automation/daily-brief-runner.sh`
- **Generator:** `Scripts/automation/generate_daily_brief.py`
- **LaunchAgent:** `~/Library/LaunchAgents/com.obsidian.dailybrief.plist`

### **Logs**
- **Audit:** `.cache/logs/security-audit.log`
- **Daily Brief:** `.cache/logs/daily-brief-YYYY-MM-DD.log`
- **LaunchAgent:** `.cache/logs/launchagent-{out,error}.log`

### **Documentation**
- **Security:** `Docs/SECURITY.md`
- **Setup:** `Scripts/setup/setup-machine.sh`
- **Portability:** `Docs/PORTABILITY.md`

---

## ✅ Activation Checklist

- [ ] Logs directory created (`.cache/logs/`)
- [ ] Wrapper script is executable
- [ ] LaunchAgent installed and loaded
- [ ] Tested wrapper script manually
- [ ] Verified logs are being written
- [ ] Reviewed security features
- [ ] Checked audit log format
- [ ] (Optional) Removed Full Disk Access

---

## 🔄 Updates & Maintenance

### **After System Updates**

If macOS updates or you change machines:

```bash
# Re-run setup script
cd ~/Documents/Obsidian\ Vault/Doikayt
bash Scripts/setup/setup-machine.sh
```

### **Regular Maintenance**

- **Weekly:** Review audit logs for anomalies
- **Monthly:** Check log directory size
- **Quarterly:** Review `Docs/SECURITY.md` for updates

### **Log Rotation (Optional)**

To prevent logs from growing too large:

```bash
# Archive old logs
cd .cache/logs
tar -czf archive-$(date +%Y-%m).tar.gz *.log
rm *.log
```

---

*Automation is now set up with comprehensive security measures.*
*Daily briefs will generate automatically every weekday morning at 5:00 AM.*

**For detailed security information, see:** `Docs/SECURITY.md`
