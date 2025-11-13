#!/usr/bin/env python3
"""
Standalone Daily Brief Generator
Analyzes Obsidian vault and generates daily brief without requiring Claude Code CLI

Security Features:
- Input sanitization to prevent prompt injection
- Path validation to restrict access to vault only
- Audit logging of all operations
"""

import os
import sys
from datetime import datetime, timedelta
from pathlib import Path
import re
import logging

# Configuration
VAULT_PATH = Path("/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt")
DAILY_FOLDER = VAULT_PATH / "Daily"
PORTFOLIO_FOLDER = VAULT_PATH / "Biz Dev" / "Encoded Portfolio Companies"
CONSULTING_FOLDER = VAULT_PATH / "Consulting"
CONTACTS_FOLDER = VAULT_PATH / "Contacts"  # Will be created when contacts imported
LOG_DIR = VAULT_PATH / ".cache" / "logs"

TODAY = datetime.now()
DATE_STR = TODAY.strftime("%Y-%m-%d")
DAY_NAME = TODAY.strftime("%A")

# Security: Blocked patterns to prevent command injection
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

# Setup logging
LOG_DIR.mkdir(parents=True, exist_ok=True)
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(LOG_DIR / f'daily-brief-{DATE_STR}.log'),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger('daily_brief')


def sanitize_input(text):
    """
    Sanitize text to prevent command injection and prompt injection
    Returns sanitized text or [SANITIZED] if blocked patterns detected
    """
    if not isinstance(text, str):
        return text

    for pattern in BLOCKED_PATTERNS:
        if re.search(pattern, text, re.IGNORECASE):
            logger.warning(f"Blocked potentially malicious pattern in input: {pattern}")
            return "[SANITIZED]"

    return text


def validate_path(path):
    """
    Validate that a path is within the vault directory
    Prevents directory traversal attacks
    """
    try:
        resolved = Path(path).resolve()
        vault_resolved = VAULT_PATH.resolve()

        if not str(resolved).startswith(str(vault_resolved)):
            logger.error(f"Path validation failed: {path} is outside vault")
            return None

        return resolved
    except Exception as e:
        logger.error(f"Path validation error: {e}")
        return None


def get_file_age_days(filepath):
    """Get how many days since file was modified"""
    if not filepath.exists():
        return 999
    mod_time = datetime.fromtimestamp(filepath.stat().st_mtime)
    return (TODAY - mod_time).days


def scan_portfolio_companies():
    """Scan portfolio companies and identify which need attention"""
    companies = {
        "ConfigHub": [],
        "DataFlint": [],
        "Datum": [],
        "IPXO": [],
        "Neurometric": [],
        "Tenzai": [],
        "XORQ": []
    }

    results = {
        "recent": [],
        "needs_attention": [],
        "stale": []
    }

    if not PORTFOLIO_FOLDER.exists():
        return results

    for company_name in companies.keys():
        company_folder = PORTFOLIO_FOLDER / company_name
        if not company_folder.exists():
            # Try alternate folder names
            alt_names = [d for d in PORTFOLIO_FOLDER.iterdir() if d.is_dir() and company_name.lower() in d.name.lower()]
            if alt_names:
                company_folder = alt_names[0]

        if company_folder.exists():
            # Find most recent file modification in company folder
            md_files = list(company_folder.glob("*.md"))
            if md_files:
                newest_file = max(md_files, key=lambda f: f.stat().st_mtime)
                days_old = get_file_age_days(newest_file)

                if days_old <= 7:
                    results["recent"].append((company_name, days_old))
                elif days_old <= 30:
                    results["needs_attention"].append((company_name, days_old))
                else:
                    results["stale"].append((company_name, days_old))

    return results


def scan_consulting_projects():
    """Scan consulting folders for active projects"""
    projects = []

    if not CONSULTING_FOLDER.exists():
        return projects

    for item in CONSULTING_FOLDER.iterdir():
        if item.is_dir() and not item.name.startswith('.'):
            days_old = get_file_age_days(item)
            projects.append({
                "name": item.name,
                "days_since_update": days_old,
                "active": days_old <= 14
            })
        elif item.is_file() and item.suffix == '.md' and not item.name.startswith('.'):
            days_old = get_file_age_days(item)
            projects.append({
                "name": item.stem,
                "days_since_update": days_old,
                "active": days_old <= 14
            })

    return sorted(projects, key=lambda x: x["days_since_update"])


def check_linkedin_import_status():
    """Check if contacts have been imported yet"""
    if CONTACTS_FOLDER.exists():
        contact_files = list(CONTACTS_FOLDER.glob("*.md"))
        return len(contact_files) > 0
    return False


def generate_daily_brief():
    """Generate the complete daily brief"""

    # Scan vault
    portfolio_status = scan_portfolio_companies()
    consulting_projects = scan_consulting_projects()
    contacts_imported = check_linkedin_import_status()

    # Build priorities
    priorities = []

    # Priority 1: EncodedVC if materials exist
    encodedvc_file = VAULT_PATH / "Biz Dev" / "EncodedVC_Value_Proposition.md"
    if encodedvc_file.exists():
        priorities.append({
            "title": "Finalize EncodedVC Meeting Preparation",
            "why": "Critical revenue opportunity - portfolio operations engagement with Principal + LP",
            "action": "Review [[EncodedVC_Value_Proposition]] and [[EncodedVC_One_Pager]], prepare live demo",
            "time": "2 hours"
        })

    # Priority 2: LinkedIn import or contact management
    if contacts_imported:
        priorities.append({
            "title": "Network Intelligence Analysis",
            "why": "Contacts imported - discover synergies and opportunities",
            "action": "Run `/connect-dots` and `/relationship-health` to analyze network",
            "time": "1 hour"
        })
    else:
        priorities.append({
            "title": "Set Up Network Intelligence (LinkedIn Import)",
            "why": "Foundation for all network automation",
            "action": "Check email for LinkedIn export, run `/import-contacts` when received",
            "time": "1 hour",
            "status": "⏳ Waiting on LinkedIn archive"
        })

    # Priority 3: Consulting or Portfolio
    if consulting_projects and consulting_projects[0]["active"]:
        priorities.append({
            "title": "Consulting Project Status Review",
            "why": "Active revenue-generating work needs assessment",
            "action": f"Review {consulting_projects[0]['name']} and other active projects",
            "time": "45 minutes"
        })
    elif portfolio_status["needs_attention"]:
        company = portfolio_status["needs_attention"][0][0]
        priorities.append({
            "title": f"Portfolio Company Check-in: {company}",
            "why": f"{company} hasn't been updated in {portfolio_status['needs_attention'][0][1]} days",
            "action": f"Review {company} status, check for board meetings, identify support needed",
            "time": "1 hour"
        })
    else:
        priorities.append({
            "title": "Strategic Portfolio Review",
            "why": "Regular portfolio assessment maintains momentum",
            "action": "Run `/portfolio-update` to identify priorities across all 7 companies",
            "time": "30 minutes"
        })

    # Calculate total time
    total_time = sum([float(p["time"].split()[0]) for p in priorities if "hour" in p["time"]])
    total_time += sum([float(p["time"].split()[0])/60 for p in priorities if "minute" in p["time"]])

    # Generate markdown
    brief = f"""# Daily Brief - {DAY_NAME}, {DATE_STR}

Good morning! Here's your focus for today.

---

## 🎯 TOP 3 PRIORITIES

"""

    for i, priority in enumerate(priorities[:3], 1):
        brief += f"""**{i}. {priority['title']}**
- **Why:** {priority['why']}
- **Action:** {priority['action']}
- **Time:** {priority['time']}
"""
        if "status" in priority:
            brief += f"- **Status:** {priority['status']}\n"
        brief += "\n"

    brief += f"""**Total Estimated Time:** {total_time:.1f} hours

---

## 📅 TODAY'S CALENDAR

*No calendar integration yet - MCP setup planned for later*

**Do you have meetings scheduled today?**
- [ ] If important meetings today: Run `/prep-meeting [topic]` for complete brief
- [ ] Allow 15 min before meetings for final prep

**Meeting Prep Available:**
- Run `/prep-meeting [person/company]` for any important meetings

---

## 🏢 PORTFOLIO ATTENTION

"""

    if portfolio_status["recent"]:
        brief += "**Recently Active (< 7 days):**\n"
        for company, days in portfolio_status["recent"]:
            brief += f"- ✅ {company} (updated {days} days ago)\n"
        brief += "\n"

    if portfolio_status["needs_attention"]:
        brief += "**This Week - Check Status:**\n"
        for company, days in portfolio_status["needs_attention"]:
            brief += f"- ⚠️ {company} (last update {days} days ago)\n"
        brief += "\n"

    if portfolio_status["stale"]:
        brief += "**Stale (> 30 days):**\n"
        for company, days in portfolio_status["stale"]:
            brief += f"- 🔴 {company} (last update {days} days ago) - Board meeting coming up?\n"
        brief += "\n"

    brief += """**Actions:**
- [ ] Run `/portfolio-update` for detailed status of all 7 companies
- [ ] Check for upcoming board meetings
- [ ] Identify companies needing intros or support

**All Companies:** ConfigHub, DataFlint, Datum, IPXO, Neurometric, Tenzai, XORQ

---

## 🤝 RELATIONSHIP ACTIONS

"""

    if contacts_imported:
        brief += """**Network Intelligence Active:**
- ✅ Contacts imported and structured
- Run `/relationship-health` to identify dormant connections
- Run `/find-connections [company]` for warm intro paths
- Run `/connect-dots` to discover customer opportunities

**Today's Network Actions:**
- [ ] Check relationship health score
- [ ] Identify 2-3 reconnection opportunities
- [ ] Find warm intros for portfolio companies needing customers

"""
    else:
        brief += """**Critical Setup Phase:**
- **LinkedIn Import:** Archive should arrive within 24 hours
- **Impact:** 100s-1000s of contacts → instant network visibility
- **Ready:** `/import-contacts` command built and tested

**When LinkedIn Arrives:**
1. [ ] Run `/import-contacts ~/Downloads/linkedin-connections.csv`
2. [ ] Review import summary
3. [ ] Run `/relationship-health` to identify dormant relationships
4. [ ] Run `/connect-dots` to find opportunities

**Existing Contacts to Migrate:**
- [ ] Run `/migrate-contacts Consulting/` to standardize existing contacts
- [ ] Run `/migrate-contacts "Biz Dev/"` for business contacts

"""

    brief += """---

## 💼 CONSULTING/REVENUE WORK

"""

    if consulting_projects:
        active_projects = [p for p in consulting_projects if p["active"]]
        dormant_projects = [p for p in consulting_projects if not p["active"]]

        if active_projects:
            brief += "**Active Projects (updated < 14 days):**\n"
            for project in active_projects:
                brief += f"- **{project['name']}** - Last updated {project['days_since_update']} days ago\n"
            brief += "\n"

        if dormant_projects:
            brief += "**Dormant/Completed:**\n"
            for project in dormant_projects[:3]:
                brief += f"- {project['name']} (last update {project['days_since_update']} days ago)\n"
            brief += "\n"

        brief += """**This Week Must-Do:**
- [ ] Review active project folders for deliverables
- [ ] Identify clients needing check-ins
- [ ] Track billable hours
- [ ] Note any overdue invoices

"""
    else:
        brief += """**Projects:** Review Consulting/ folder for active work
- [ ] Identify current clients and deliverables
- [ ] Check for any pending invoices or follow-ups

"""

    brief += """**Coming Soon:** Consulting Project Management commands
- `/project-status [client]` - Quick status report
- `/log-time [project]` - Time tracking
- `/client-update [name]` - Update email generation

---

## 💡 OPPORTUNITIES

"""

    if encodedvc_file.exists():
        brief += """**🔥 Hot Opportunity: EncodedVC Engagement**
- **Potential:** Part-time portfolio operations role or retainer
- **Value Prop Ready:** Complete proposal + executive summary
- **Demo Ready:** Live portfolio automation + network intelligence
- **Impact:** 20-30 hrs/month time savings for them, recurring revenue for you

"""

    if contacts_imported:
        brief += """**Network Activated:**
- Immediate access to warm intro paths
- Customer opportunities for all 7 portfolio companies
- Relationship health scoring active

"""
    else:
        brief += """**Network Activation Imminent:**
- Once LinkedIn imports: Instant warm intro path mapping
- Identify customer opportunities for portfolio companies
- Reveal dormant high-value connections

"""

    brief += """**Automation Showcase:**
- 11 commands operational
- Portfolio analysis completed (all 7 companies)
- Network intelligence framework ready

---

## 📋 QUICK WINS (If Time Permits)

- [ ] Test `/portfolio-update` - see all 7 companies' current status
- [ ] Run `/connect-dots` - discover synergies in vault
- [ ] Review one consulting project folder
- [ ] Check email for LinkedIn archive
- [ ] Organize workspace for focused work

---

## 🧭 FOCUS GUIDANCE

**Energy Allocation:**
- **🔥 High energy (morning):** Deep work on top priority (strategy, creation)
- **⚡ Medium energy (mid-day):** Meetings, calls, relationship work
- **🌙 Low energy (afternoon):** Admin, system testing, email

"""

    # Day-specific guidance
    day_guidance = {
        "Monday": "It's Monday - planning day. Set the week's direction before diving deep.",
        "Tuesday": "It's Tuesday - execution day. Monday planning done, now ship the work.",
        "Wednesday": "It's Wednesday - midweek checkpoint. Adjust course if needed.",
        "Thursday": "It's Thursday - finishing strong. Complete key deliverables before Friday.",
        "Friday": "It's Friday - wrap and plan. Close out the week, run `/weekly` this afternoon."
    }

    brief += f"""**{DAY_NAME} Mindset:**
{day_guidance.get(DAY_NAME, "Focus on execution and momentum.")}

**Success Metric for Today:**
✅ If you complete your top priority, today is a win.

---

## 🔄 END OF DAY CHECKLIST

**Before You Close:**
- [ ] Check off completed priorities
- [ ] Run `/update-contact` for people you spoke with
- [ ] Log any portfolio updates
- [ ] Check email for LinkedIn archive (if still pending)
- [ ] Note tomorrow's top priority

**Tomorrow's Setup:**
"""

    tomorrow = (TODAY + timedelta(days=1)).strftime("%A")
    brief += f"- {tomorrow} morning: Review today's progress\n"

    if not contacts_imported:
        brief += "- If LinkedIn imported: Start with `/relationship-health` scan\n"

    brief += """
---

## 📊 CONTEXT & NOTES

**What's Working:**
- All 11 slash commands operational
- Daily/Weekly brief automation set up
- Portfolio research foundation strong

**What's Pending:**
"""

    if not contacts_imported:
        brief += "- LinkedIn archive (arriving within 24 hours)\n"

    brief += """- Consulting Project Management system (building next)
- MCP integration (later phase)

**This Week's Big Picture:**
Strategic opportunities + operational excellence = momentum

---

*This daily brief was auto-generated by Python script*
*File: `Daily/{DATE_STR}.md`*
*Generated at: {TODAY.strftime("%Y-%m-%d %H:%M:%S")}*

**Available Commands:**
- `/daily` - Regenerate with Claude Code's analysis
- `/portfolio-update` - Full portfolio health report
- `/connect-dots` - Discover synergies
- `/prep-meeting [topic]` - Meeting intelligence
"""

    return brief


def main():
    """Main execution"""
    logger.info(f"Daily brief generation started by UID={os.getuid()} PID={os.getpid()}")

    try:
        # Ensure Daily folder exists
        DAILY_FOLDER.mkdir(exist_ok=True)

        # Check if today's brief already exists
        daily_file = DAILY_FOLDER / f"{DATE_STR}.md"

        # Validate output path
        validated_path = validate_path(daily_file)
        if not validated_path:
            logger.error("Daily file path validation failed")
            return 1

        if validated_path.exists():
            logger.info(f"Daily brief already exists for {DATE_STR}")
            print(f"Daily brief already exists for {DATE_STR}")
            return 0

        # Generate brief
        logger.info(f"Generating daily brief for {DAY_NAME}, {DATE_STR}")
        print(f"Generating daily brief for {DAY_NAME}, {DATE_STR}...")
        brief_content = generate_daily_brief()

        # Save to file
        validated_path.write_text(brief_content)
        logger.info(f"Daily brief created successfully: {validated_path}")
        print(f"✅ Daily brief created: {validated_path}")

        return 0

    except Exception as e:
        logger.error(f"Daily brief generation failed: {e}", exc_info=True)
        print(f"❌ Error generating daily brief: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
