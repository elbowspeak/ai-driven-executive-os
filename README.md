# AI-Driven Executive Operating System

A portable, AI-powered system for executive operations, portfolio management, and network intelligence built with Claude Code and Obsidian.

> **⚠️ IMPORTANT:** This is a **personal operating system** containing my private setup and workflows. This repository shares the **automation scripts and architecture** for others to adapt, NOT my personal data. Do not clone this vault directly - see Installation section below.

---

## 🎯 What This Is

An executive operating system that combines:
- **Daily automation** - Automated daily briefs at 5 AM
- **Network intelligence** - Searchable contact database with relationship management
- **Portfolio management** - Track and analyze portfolio companies
- **Research automation** - AI-powered market research and analysis
- **Portable setup** - One-command deployment on any machine

Built on [Obsidian](https://obsidian.md) with [Claude Code](https://claude.ai/claude-code) and inspired by [Daniel Miessler's Personal AI Infrastructure](https://github.com/danielmiessler/Personal_AI_Infrastructure).

### 📋 **[Complete Feature Catalog →](FEATURES.md)**

**23 production-ready commands** and **15 specialized AI skills** organized across:
- Executive & Portfolio Management
- Competitive Intelligence & Market Research
- Product & Innovation
- Network & Relationship Intelligence
- Consulting & Client Management
- Marketing & Communications
- Automation & System Orchestration

See **[FEATURES.md](FEATURES.md)** for the full capabilities catalog.

---

## 🙏 Attribution

This system integrates concepts and patterns from **Daniel Miessler's Personal AI Infrastructure** (PAI):

### Integrated from PAI:
- **[Fabric](https://github.com/danielmiessler/fabric)** - 242+ AI patterns for research and content analysis
- **Hooks system** - Event-driven automation for notifications
- **Weekly update checker** - Monitor PAI repository for new features
- **Automation patterns** - Daily/weekly workflows

**Thank you to Daniel Miessler** ([@DanielMiessler](https://twitter.com/DanielMiessler)) for pioneering the Personal AI Infrastructure concept and making it open source. His work on Fabric and AI automation workflows has been invaluable.

**PAI Repository:** https://github.com/danielmiessler/Personal_AI_Infrastructure
**Fabric Framework:** https://github.com/danielmiessler/fabric

---

## ✨ Features

### 🎯 Executive Operations
- **Daily Briefs** - AI-generated prioritization with portfolio attention items at 5 AM weekdays
- **Weekly Reviews** - Comprehensive weekly analysis with portfolio health scoring and planning
- **Meeting Prep** - Intelligence prep with context, talking points, and agenda suggestions
- **Portfolio Management** - Multi-company tracking with health scoring and board prep
- **Investment Memos** - Generate detailed memos with thesis, risks, and recommendations

### 🔬 Competitive Intelligence & Market Research
- **Enterprise-Grade Analysis** - 519-line competitive analysis framework with 15-section reports
- **Head-to-Head Comparisons** - Detailed competitor comparison tables and positioning
- **Threat Assessment** - Scoring frameworks for investment attractiveness and competitive threats
- **Market Mapping** - Create competitive landscape maps with positioning analysis
- **Intelligence Gathering** - Strategic research with signal detection and momentum tracking
- **Fabric AI Integration** - 242+ AI patterns for research and content analysis

### 🤝 Network Intelligence
- **LinkedIn Import** - Successfully imported and searchable database (4,939+ contacts tested)
- **Smart Queries** - Find founders, investors, experts by role, company, expertise
- **Relationship Health** - Score relationship strength and identify dormant connections
- **Connection Mapping** - Discover synergies and warm intro paths across network
- **Customer Opportunities** - Match portfolio companies to potential customers in network

### 💡 Product & Innovation
- **Idea Validation** - Market research, competitive analysis, and feasibility assessment
- **Idea Matching** - Connect ideas to portfolio companies or investment opportunities
- **Product Strategy** - PRD creation, roadmap planning, feature prioritization
- **UX Research** - User research frameworks and usability analysis

### 💼 Consulting & Business Operations
- **Project Tracking** - Multi-client status reports and deliverable monitoring
- **Client Updates** - Automated update emails with progress, blockers, and next steps
- **Time Tracking** - Billable hour calculation and overdue invoice detection
- **Business Analysis** - Requirements gathering, process optimization, ROI analysis

### 🤖 AI Skills & Automation
- **15 Specialized Skills** - CEO/CTO Advisors, Product Strategists, Competitive Analysts, Market Researchers, and more
- **Multi-Agent Orchestration** - Coordinate multiple AI agents for complex workflows
- **Event-Driven Hooks** - Notifications via macOS, email, or Slack
- **Automated Saves** - Build searchable knowledge base with offer-to-save workflow

### 🔐 Security & Portability
- **Production-Ready Security** - Input sanitization, path validation, audit logging
- **Vault-Only Access** - No Full Disk Access required
- **One-Command Setup** - `bash Scripts/setup/setup-machine.sh`
- **Multi-Machine Sync** - Obsidian Sync for seamless cross-machine operation

---

## 🚀 Quick Start

### Prerequisites
- macOS (tested on Sequoia)
- [Obsidian](https://obsidian.md) with Sync enabled
- [Homebrew](https://brew.sh)
- Python 3.8+
- [Claude Code CLI](https://docs.claude.com/claude-code)

### Installation

**⚠️ This is a personal operating system repository - not meant for direct cloning!**

**To adapt for your own use:**

1. **Fork this repository**
   - Fork on GitHub to create your own version
   - Clone scripts and setup files only
   - Add your own data via Obsidian

2. **Or copy setup scripts manually**
   ```bash
   # Create your own vault
   mkdir -p ~/Documents/Obsidian\ Vault/YourVaultName

   # Copy setup files from this repo
   # Adapt Scripts/, Config/, and Docs/ for your needs
   ```

3. **Run setup in YOUR vault**
   ```bash
   cd ~/Documents/Obsidian\ Vault/YourVaultName
   bash Scripts/setup/setup-machine.sh
   ```

3. **Security & Permissions** (Optional - see [SECURITY.md](Docs/SECURITY.md))
   - Vault-only access recommended (no Full Disk Access needed)
   - If automation doesn't work: System Settings → Privacy & Security → Full Disk Access → Add `/bin/bash`
   - See `Docs/SECURITY.md` for detailed security information

4. **Test automation**
   ```bash
   launchctl start com.obsidian.dailybrief
   ```

---

## 📁 Structure

```
Doikayt/
├── .claude/
│   ├── commands/              # 24 slash commands
│   └── hooks/                 # Automation hooks
│
├── Scripts/
│   ├── setup/                 # Portable setup system
│   │   ├── setup-machine.sh
│   │   ├── install-dependencies.sh
│   │   └── install-launchagents.sh
│   │
│   ├── automation/            # Automation scripts
│   │   ├── generate-daily-brief.sh
│   │   ├── generate_daily_brief.py
│   │   ├── import-linkedin-contacts.py
│   │   ├── check-pai-updates.sh
│   │   └── network-query.sh
│   │
│   └── launchagents/          # LaunchAgent plists
│       └── com.obsidian.dailybrief.plist
│
├── Config/
│   ├── dependencies.txt       # Python packages
│   └── tools.txt              # Brew packages (includes Fabric)
│
├── Docs/
│   ├── PORTABILITY.md         # Setup guide
│   ├── PAI-INTEGRATION.md     # PAI features
│   └── WORKFLOWS.md           # Usage patterns
│
├── Contacts/LinkedIn/         # Contact database (not in repo)
├── Daily/                     # Daily briefs (not in repo)
├── Weekly/                    # Weekly reviews (not in repo)
├── Research/                  # Research reports (not in repo)
└── Network/Queries/           # Network queries (not in repo)
```

---

## 🎓 Usage

### Daily Workflow
```bash
# Automated at 5 AM, or run manually:
launchctl start com.obsidian.dailybrief

# View today's brief
open Daily/$(date +%Y-%m-%d).md
```

### Weekly Review
```
# In Claude Code:
/weekly

# Includes:
# - Past week analysis
# - Portfolio health
# - PAI update check
# - Next week planning
```

### Network Intelligence
```bash
# Generate network overview
bash Scripts/automation/network-query.sh overview

# Find specific contacts
bash Scripts/automation/network-query.sh founders AI
bash Scripts/automation/network-query.sh company "Microsoft"
bash Scripts/automation/network-query.sh keyword "cybersecurity"
```

### Research with Fabric
```bash
# Extract insights from articles
curl -s https://example.com/article | fabric --pattern extract_wisdom

# Analyze claims
cat research.txt | fabric --pattern analyze_claims

# Summarize papers
fabric --pattern summarize_paper < paper.txt
```

### Available Commands

**23 Production-Ready Commands:**
```
/daily                    - Generate daily prioritization brief
/weekly                   - Weekly review and planning
/competitive-analysis     - 519-line enterprise framework
/research [topic]         - AI-powered research
/find-connections [query] - Network intelligence search
/portfolio-update         - Portfolio company analysis
/investment-memo          - Generate investment memos
/idea-validate            - Validate product ideas
/prep-meeting             - Meeting intelligence prep
... and 14 more!
```

**15 Specialized AI Skills:**
- CEO Advisor, CTO Advisor
- Product Manager, Product Strategist, UX Researcher
- Competitive Analyst, Market Researcher, Business Analyst
- Content Marketer, Internal Comms
- Agent Organizer, Context Manager, Skill Creator
- And more...

**See [FEATURES.md](FEATURES.md) for complete catalog with detailed descriptions.**

---

## 🔧 Configuration

### Notification Setup

Configure hooks for daily brief notifications:

```bash
# macOS notifications (default)
export NOTIFICATION_METHOD="osascript"

# Email
export NOTIFICATION_METHOD="email"
export EMAIL_RECIPIENT="you@example.com"

# Slack webhook
export NOTIFICATION_METHOD="slack"
export SLACK_WEBHOOK_URL="https://hooks.slack.com/..."
```

See `.claude/hooks/README.md` for details.

### Fabric Configuration

Fabric is installed via Homebrew and requires API setup:

```bash
# After installation
fabric --setup

# Configure your preferred AI provider (OpenAI, Anthropic, etc.)
```

---

## 📊 PAI Integration Status

### Completed
- ✅ Fabric AI (242+ patterns)
- ✅ Hooks system
- ✅ Weekly PAI update checker
- ✅ Enhanced research workflows

### Planned
- [ ] Multi-agent orchestration
- [ ] Advanced TypeScript hooks
- [ ] Skills system
- [ ] Context compression

See `Docs/PAI-INTEGRATION.md` for full integration details.

---

## 🔄 Portability

This system is designed to be fully portable:

### One Machine Setup
```bash
bash Scripts/setup/setup-machine.sh
```

### Multi-Machine Sync
1. Set up on first machine
2. Enable Obsidian Sync
3. Wait for sync to complete
4. Run setup script on other machines
5. All data, scripts, and configs sync automatically

See `Docs/PORTABILITY.md` for detailed guide.

---

## 📚 Documentation

- **[FEATURES.md](FEATURES.md)** - Complete feature catalog (23 commands + 15 skills)
- **[PORTABILITY.md](Docs/PORTABILITY.md)** - Multi-machine setup guide
- **[PAI-INTEGRATION.md](Docs/PAI-INTEGRATION.md)** - Integrated PAI features
- **[WORKFLOWS.md](Docs/WORKFLOWS.md)** - Usage patterns and best practices
- **[SECURITY.md](Docs/SECURITY.md)** - Security architecture and threat mitigation
- **[AUTOMATION-SETUP.md](Scripts/AUTOMATION-SETUP.md)** - Detailed automation guide
- **[Hooks README](.claude/hooks/README.md)** - Notification configuration

---

## 🤝 Contributing

This is a personal operating system repository. Feel free to fork and adapt for your own use!

If you build interesting extensions or integrations, especially with PAI features, please share them back to the community.

---

## 🔐 Privacy & Security

### Security Features

- **Input sanitization** - Protects against prompt injection attacks
- **Path validation** - Restricts access to vault directory only
- **Restricted execution** - Limited permissions and environment
- **Audit logging** - Comprehensive security event tracking
- **No Full Disk Access required** - Vault-only access is sufficient

See **[SECURITY.md](Docs/SECURITY.md)** for complete security documentation.

### Privacy

**What's in this repo:**
- ✅ Setup scripts (generic)
- ✅ Documentation
- ✅ Configuration templates
- ✅ Automation patterns

**What's NOT in this repo:**
- ❌ Personal contacts
- ❌ Daily briefs
- ❌ Portfolio company data
- ❌ Research notes
- ❌ API keys or credentials

See `.gitignore` for full exclusion list.

---

## 🙌 Acknowledgments

### Primary Inspiration
**Daniel Miessler** - [@DanielMiessler](https://twitter.com/DanielMiessler)
- [Personal AI Infrastructure](https://github.com/danielmiessler/Personal_AI_Infrastructure)
- [Fabric AI Framework](https://github.com/danielmiessler/fabric)
- Weekly patterns and automation concepts

### Technology Stack
- **[Obsidian](https://obsidian.md)** - Knowledge management platform
- **[Claude Code](https://claude.ai/claude-code)** - AI-powered development
- **[Fabric](https://github.com/danielmiessler/fabric)** - AI pattern framework
- **[Anthropic Claude](https://anthropic.com)** - AI assistant powering automation

---

## 📝 License

MIT License - Feel free to use and adapt for your own needs.

---

## 📮 Contact

For questions or discussions about this system, feel free to open an issue.

For PAI-related questions, please refer to [Daniel Miessler's PAI repository](https://github.com/danielmiessler/Personal_AI_Infrastructure).

---

**Built with [Claude Code](https://claude.ai/claude-code) • Powered by [Fabric](https://github.com/danielmiessler/fabric) • Inspired by [PAI](https://github.com/danielmiessler/Personal_AI_Infrastructure)**
