# Security Documentation

**AI-Driven Executive Operating System - Security Architecture**

This document explains the security measures implemented to protect against prompt injection and unauthorized file access.

---

## 🔒 Security Overview

### Threat Model

**Primary Risk:** Prompt injection via malicious content in vault files
- Attacker could place malicious markdown in vault
- Daily brief automation reads and processes this content
- Without sanitization, could execute arbitrary commands

**Attack Vector:** Malicious backticks, command substitution, or shell metacharacters embedded in:
- Contact notes
- Portfolio company files
- Research documents
- Any markdown file processed by automation

---

## 🛡️ Implemented Security Measures

### 1. Restricted Execution Wrapper

**File:** `Scripts/automation/daily-brief-runner.sh`

**Security Features:**
- **Restricted PATH:** Limited to `/usr/bin:/bin:/usr/local/bin` only
- **Directory Scoping:** Changes to vault directory before execution
- **Timeout Protection:** 10-minute maximum execution time
- **Environment Sanitization:** Removes dangerous env variables:
  - `LD_PRELOAD`
  - `LD_LIBRARY_PATH`
  - `DYLD_INSERT_LIBRARIES`
  - `DYLD_LIBRARY_PATH`
- **Audit Logging:** Records all execution attempts

**Example Audit Log Entry:**
```
[2025-11-12 05:00:01] Daily brief automation started by UID=501 PID=12345
[2025-11-12 05:00:01] Changed to vault directory: /Users/user/Documents/Obsidian Vault/Doikayt
[2025-11-12 05:00:01] Restricted PATH to: /usr/bin:/bin:/usr/local/bin
[2025-11-12 05:00:01] Executing daily brief generation script
[2025-11-12 05:00:15] Daily brief generation completed successfully
```

---

### 2. Input Sanitization

**File:** `Scripts/automation/generate_daily_brief.py`

**Blocked Patterns:**
```python
BLOCKED_PATTERNS = [
    r'`[^`]*`',              # Backticks (command substitution)
    r'\$\([^)]*\)',          # Command substitution $(...)
    r'rm\s+-rf',             # Dangerous file operations
    r'eval\s*\(',            # Eval execution
    r'exec\s*\(',            # Exec execution
    r'__import__',           # Dynamic imports
    r'subprocess',           # Subprocess execution
    r'os\.system',           # OS system calls
    r';\s*rm\s',             # Chained dangerous commands
    r'\|\s*sh',              # Pipe to shell
    r'\|\s*bash',            # Pipe to bash
]
```

**How It Works:**
- All text content is scanned before processing
- Matching patterns are replaced with `[SANITIZED]`
- Attempts are logged with pattern details
- Execution continues safely

---

### 3. Path Validation

**Function:** `validate_path(path)`

**Purpose:** Prevent directory traversal attacks

**Implementation:**
```python
def validate_path(path):
    """Validate that a path is within the vault directory"""
    resolved = Path(path).resolve()
    vault_resolved = VAULT_PATH.resolve()

    if not str(resolved).startswith(str(vault_resolved)):
        logger.error(f"Path validation failed: {path} is outside vault")
        return None

    return resolved
```

**Blocks:**
- `../../../etc/passwd`
- `/tmp/malicious`
- Any path outside vault

---

### 4. Comprehensive Audit Logging

**Log Location:** `.cache/logs/`

**Log Files:**
- `security-audit.log` - Wrapper script execution audit
- `daily-brief-YYYY-MM-DD.log` - Daily brief generation logs
- `launchagent-out.log` - LaunchAgent stdout
- `launchagent-error.log` - LaunchAgent stderr

**What's Logged:**
- All automation executions (UID, PID, timestamp)
- Path changes and validations
- Blocked patterns detected
- Errors and failures
- Successful completions

---

## 🚫 Full Disk Access Recommendations

### Current Risk

If `/bin/bash` has Full Disk Access:
- ❌ Malicious vault content could read sensitive system files
- ❌ Prompt injection could access other applications' data
- ❌ No restrictions on file system access

### Recommended Approach

**Option 1: Remove Full Disk Access (Recommended)**
1. System Settings → Privacy & Security → Full Disk Access
2. Remove `/bin/bash` from the list
3. LaunchAgent will still work with wrapper script restrictions

**Why This Works:**
- Wrapper script only needs vault access
- Python script validates all paths
- No system-wide access required

---

**Option 2: Grant Specific Access Only**

Instead of Full Disk Access, grant access only to:
- ✅ Obsidian Vault directory
- ✅ Log directory (`.cache/logs/`)
- ❌ Nothing else

**How to Configure:**
1. System Settings → Privacy & Security
2. Files and Folders (not Full Disk Access)
3. Add wrapper script with vault-only permissions

---

**Option 3: Sandbox with Docker** (Future Enhancement)

For maximum isolation:
```bash
docker run --rm \
  -v "$VAULT_PATH:/vault:ro" \
  -v "$VAULT_PATH/Daily:/vault/Daily:rw" \
  -v "$VAULT_PATH/.cache:/vault/.cache:rw" \
  python:3.11-slim \
  python3 /vault/Scripts/automation/generate_daily_brief.py
```

**Benefits:**
- Complete filesystem isolation
- No host system access
- Read-only vault mount (except output directories)

**Tradeoffs:**
- More complex setup
- Requires Docker installed
- Slightly slower execution

---

## ✅ Security Verification

### Test 1: Command Injection Block

Create test file: `Contacts/test_injection.md`
```markdown
# Test Contact

`rm -rf /`
$(whoami)
; cat /etc/passwd
```

**Expected Behavior:**
- Patterns detected and blocked
- Log entry: `Blocked potentially malicious pattern in input`
- Content replaced with `[SANITIZED]`
- No command execution

---

### Test 2: Path Traversal Block

Attempt to access system file:
```python
# This should fail validation
validate_path("/etc/passwd")
# Returns: None
# Log: "Path validation failed: /etc/passwd is outside vault"
```

---

### Test 3: Audit Trail Verification

```bash
# Check audit log
cat .cache/logs/security-audit.log

# Should show:
# - Execution timestamp
# - User ID
# - Process ID
# - Path changes
# - Successful completion
```

---

## 📊 Security Checklist

### Before Running in Production

- [ ] Remove Full Disk Access from `/bin/bash`
- [ ] Verify wrapper script is executable
- [ ] Test with malicious content samples
- [ ] Review audit logs regularly
- [ ] Monitor log directory size
- [ ] Set up log rotation (optional)

### Ongoing Monitoring

- [ ] Weekly audit log review
- [ ] Check for blocked pattern attempts
- [ ] Verify no unauthorized path access
- [ ] Monitor LaunchAgent error logs
- [ ] Review execution patterns for anomalies

---

## 🔍 Incident Response

### If Malicious Content Detected

1. **Review Audit Logs**
   ```bash
   grep "Blocked" .cache/logs/security-audit.log
   grep "ERROR" .cache/logs/daily-brief-*.log
   ```

2. **Identify Source File**
   - Check recent file modifications
   - Review git history if using version control
   - Examine contact imports or research documents

3. **Remove Malicious Content**
   - Edit or delete the file
   - Verify no other files affected
   - Re-run automation to confirm fix

4. **Update Blocked Patterns**
   - Add new patterns to `BLOCKED_PATTERNS` if needed
   - Test updated sanitization
   - Document the incident

---

## 🧪 Testing Security Measures

### Manual Security Test

```bash
# 1. Create test directory
mkdir -p Network/SecurityTests

# 2. Create malicious test file
cat > Network/SecurityTests/injection-test.md << 'EOF'
# Security Test

Test patterns:
- Backticks: `whoami`
- Command sub: $(pwd)
- Pipe to shell: | bash
- Dangerous command: rm -rf /tmp/test
EOF

# 3. Run daily brief generation
Scripts/automation/daily-brief-runner.sh

# 4. Check logs for blocked patterns
grep "Blocked" .cache/logs/security-audit.log
grep "SANITIZED" Daily/$(date +%Y-%m-%d).md

# 5. Clean up test
rm -rf Network/SecurityTests
```

**Expected Results:**
- All patterns detected
- Content sanitized
- No commands executed
- Audit trail recorded

---

## 📝 Security Best Practices

### For Users

1. **Review imported content** - Verify LinkedIn/external data before import
2. **Monitor logs** - Check audit logs weekly
3. **Limit automation scope** - Only automate trusted workflows
4. **Use version control** - Track changes to vault content
5. **Regular backups** - Maintain vault backups separately

### For Developers

1. **Input validation first** - Sanitize before any processing
2. **Principle of least privilege** - Minimum required permissions
3. **Fail securely** - Block suspicious content, log incidents
4. **Audit everything** - Comprehensive logging
5. **Test attack scenarios** - Regular security testing

---

## 🔗 Related Documentation

- **Setup Guide:** `Scripts/AUTOMATION-SETUP.md`
- **Workflows:** `Docs/WORKFLOWS.md`
- **Portability:** `Docs/PORTABILITY.md`

---

## 📞 Security Concerns

If you discover a security vulnerability:

1. **Do not** create a public issue
2. Review audit logs to assess impact
3. Document the vulnerability
4. Test a fix before deploying
5. Update this documentation

---

## 🔄 Security Updates

### Version History

**v1.0 (2025-11-12)**
- Initial security implementation
- Wrapper script with restricted execution
- Input sanitization with blocked patterns
- Path validation
- Comprehensive audit logging
- Full Disk Access recommendations

---

**Last Updated:** 2025-11-12
**Security Review:** Recommended quarterly
**Next Review:** 2026-02-12

---

*This document syncs automatically via Obsidian Sync*
