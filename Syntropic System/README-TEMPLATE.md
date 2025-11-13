# AI-Driven Executive Operating System (Template)

A portable, AI-powered template for building your own executive operating system with Claude Code and Obsidian.

> **📋 This is a TEMPLATE repository** - Fork or clone this to create your own personalized AI operating system. This contains the automation scripts, setup tools, and architecture patterns, NOT personal data.

---

## 🎯 What You Get

### Automation Framework
- **Daily automation** - Generate personalized daily briefs at 5 AM
- **Network intelligence** - Import and query LinkedIn contacts
- **Portfolio management** - Track companies, investments, consulting
- **Research automation** - AI-powered market research with Fabric
- **Security-first** - Input sanitization, audit logging, vault-only access

### Built With
- **[Obsidian](https://obsidian.md)** - Knowledge management & data storage
- **[Claude Code](https://claude.ai/claude-code)** - AI-powered automation
- **[Fabric](https://github.com/danielmiessler/fabric)** - 242+ AI patterns (by Daniel Miessler)
- **Python & Bash** - Automation scripts
- **macOS LaunchAgents** - Scheduled execution

---

## 🙏 Attribution

This system integrates concepts from **Daniel Miessler's Personal AI Infrastructure** (PAI):
- **[Fabric AI Framework](https://github.com/danielmiessler/fabric)** - AI pattern library
- **Hooks system** - Event-driven automation
- **Weekly update checker** - Stay current with PAI developments

**Thank you to Daniel Miessler** ([@DanielMiessler](https://twitter.com/DanielMiessler)) for pioneering Personal AI Infrastructure.

---

## 🚀 Quick Start

### Prerequisites
- macOS (tested on Sequoia)
- [Obsidian](https://obsidian.md) installed
- [Homebrew](https://brew.sh)
- Python 3.8+
- [Claude Code CLI](https://docs.claude.com/claude-code)

### Installation

**1. Fork or Clone This Template**

```bash
cd ~/Documents/Obsidian\ Vault/
git clone https://github.com/YOUR-USERNAME/ai-executive-os-template.git YourVaultName
cd YourVaultName
```

**2. Open in Obsidian**

- Open Obsidian
- Open folder as vault → Select `YourVaultName`
- (Optional) Enable Obsidian Sync for multi-machine setup

**3. Run Setup**

```bash
bash Scripts/setup/setup-machine.sh
```

This will:
- Install dependencies (Python packages, Fabric, etc.)
- Create log directories
- Set up security wrapper
- Install LaunchAgents for automation
- Guide you through permissions

**4. Test Automation**

```bash
# Test daily brief generation
Scripts/automation/daily-brief-runner.sh

# Check the output
cat Daily/$(date +%Y-%m-%d).md

# Verify security logs
cat .cache/logs/security-audit.log
```

**5. Add Your Data**

Now populate with your own information:
- Import LinkedIn contacts: `python3 Scripts/automation/import-linkedin-contacts.py <path-to-csv>`
- Add portfolio companies to `Portfolio Companies/`
- Customize `.claude/commands/` for your workflows

---

## 📁 What's Included

### Core Infrastructure
```
├── Scripts/
│   ├── setup/                    # One-command machine setup
│   ├── automation/               # Daily briefs, contact import, etc.
│   └── maintenance/              # Template sync utilities
│
├── Config/
│   ├── dependencies.txt          # Python packages
│   └── tools.txt                 # Brew packages (including Fabric)
│
├── Docs/
│   ├── SECURITY.md               # Security architecture
│   ├── PORTABILITY.md            # Multi-machine setup
│   └── WORKFLOWS.md              # Usage patterns
│
├── .claude/
│   ├── commands/                 # Slash commands for Claude Code
│   └── hooks/                    # Automation hooks
│
└── [Empty placeholder directories for your data]
```

### Security Features
- ✅ Input sanitization (blocks command injection)
- ✅ Path validation (vault-only access)
- ✅ Restricted execution environment
- ✅ Comprehensive audit logging
- ✅ No Full Disk Access required

---

## ✨ Features

### Daily Automation
- Automated daily briefs at 5 AM (weekdays)
- Portfolio company health tracking
- Network relationship monitoring
- Consulting/revenue work reminders
- Energy-based task prioritization

### Network Intelligence
- Import 1000s of LinkedIn contacts
- Query by role, company, expertise
- Find founders, investors, experts
- Warm intro path mapping
- Relationship health scoring

### Research & Analysis
- Fabric AI patterns (242+ available)
- Web research with Claude
- Market analysis
- Competitive intelligence
- Citation tracking

### Portable Setup
- One setup script works on any machine
- Obsidian Sync keeps data synchronized
- Auto-detects machine-specific paths
- Git for scripts, Obsidian for data

---

## 🔒 Security & Privacy

### What This Template Includes
✅ Scripts and automation (generic)
✅ Documentation
✅ Configuration templates
✅ Empty directory structure

### What YOU Add (Not in Template)
❌ Your personal contacts
❌ Your daily briefs
❌ Your portfolio data
❌ Your research notes
❌ API keys or credentials

**See `.gitignore`** - Personal data directories are excluded by default.

**See `Docs/SECURITY.md`** - Comprehensive security documentation.

---

## 📖 Documentation

- **[SECURITY.md](Docs/SECURITY.md)** - Security architecture and threat mitigation
- **[PORTABILITY.md](Docs/PORTABILITY.md)** - Multi-machine setup guide
- **[WORKFLOWS.md](Docs/WORKFLOWS.md)** - Usage patterns and best practices
- **[AUTOMATION-SETUP.md](Scripts/AUTOMATION-SETUP.md)** - Detailed automation guide

---

## 🔄 Keeping Your Fork Updated

When new features are added to this template:

```bash
# Add original template as upstream
git remote add upstream https://github.com/elbowspeak/ai-executive-os-template.git

# Fetch updates
git fetch upstream

# Merge updates (review carefully!)
git merge upstream/main

# Or cherry-pick specific commits
git cherry-pick <commit-hash>
```

---

## 🤝 Contributing

Found a bug or have an enhancement idea?

1. Fork this repository
2. Create a feature branch
3. Make your changes (ensure no personal data included!)
4. Submit a pull request

**Share back improvements to:**
- Setup scripts
- Security features
- Documentation
- New automation patterns
- Claude commands

---

## 💡 Customization Ideas

### Extend This Template
- Add calendar integration (MCP server)
- Email notification system
- Slack/Discord webhooks
- Custom slash commands for your workflow
- Integration with your CRM/tools
- Mobile notifications
- Weekly/monthly reporting

### Adapt for Different Use Cases
- **Investor OS** - Focus on deal flow, portfolio tracking
- **Consultant OS** - Client management, time tracking, invoicing
- **Founder OS** - Company metrics, hiring, fundraising
- **Research OS** - Paper analysis, literature review, citations

---

## 🎯 Example Workflows

### Daily Morning Routine
1. Wake up to automated daily brief (generated at 5 AM)
2. Review top 3 priorities
3. Check portfolio company updates
4. See network relationship actions

### Adding a New Feature
1. Create new script in `Scripts/automation/`
2. Test in your personal vault
3. Add to template: `bash Scripts/maintenance/sync-to-template.sh`
4. Push to your fork
5. (Optional) Submit PR to share with community

### Research Session
1. Use `/research [topic]` command
2. Fabric patterns extract insights
3. Results saved to `Research/`
4. Link to relevant portfolio companies
5. Track action items

---

## 🐛 Troubleshooting

### Setup Script Fails
- Check Prerequisites are installed
- Verify Homebrew is working: `brew --version`
- Check Python version: `python3 --version`

### Automation Not Running
- Verify LaunchAgent: `launchctl list | grep dailybrief`
- Check logs: `cat .cache/logs/launchagent-error.log`
- Test manually: `Scripts/automation/daily-brief-runner.sh`

### Permission Errors
- See `Docs/SECURITY.md` for permission options
- Vault-only access recommended (no Full Disk Access needed)
- Check audit logs: `cat .cache/logs/security-audit.log`

---

## 📝 License

MIT License - Feel free to fork, adapt, and build upon this template for your own use.

---

## 🙌 Acknowledgments

**Primary Inspiration:**
- **Daniel Miessler** - [@DanielMiessler](https://twitter.com/DanielMiessler)
  - [Personal AI Infrastructure](https://github.com/danielmiessler/Personal_AI_Infrastructure)
  - [Fabric AI Framework](https://github.com/danielmiessler/fabric)

**Technology Stack:**
- [Obsidian](https://obsidian.md) - Knowledge management
- [Claude Code](https://claude.ai/claude-code) - AI automation
- [Fabric](https://github.com/danielmiessler/fabric) - AI patterns
- [Anthropic Claude](https://anthropic.com) - AI assistant

---

## 📮 Questions?

- **Issues:** Open an issue in this repository
- **Discussions:** Use GitHub Discussions for questions
- **PAI Questions:** Refer to [Daniel Miessler's PAI repository](https://github.com/danielmiessler/Personal_AI_Infrastructure)

---

**Built with [Claude Code](https://claude.ai/claude-code) • Powered by [Fabric](https://github.com/danielmiessler/fabric) • Inspired by [PAI](https://github.com/danielmiessler/Personal_AI_Infrastructure)**
