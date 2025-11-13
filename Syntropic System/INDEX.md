# Syntropic System - Master Index

**AI-Driven Executive Operating System**
Organized by function for discoverability and ease of use.

---

## 📂 System Organization

This system is organized into **7 functional categories** + **System Infrastructure**:

### 1. [[1. Executive & Portfolio Management/|Executive & Portfolio Management]]
Daily operations, portfolio tracking, investment analysis, and board prep.

**Commands:**
- `/daily` - Daily prioritization brief
- `/weekly` - Weekly review and planning
- `/prep-meeting` - Meeting intelligence prep
- `/portfolio-update` - Portfolio health report
- `/portfolio-highlight` - Create portfolio spotlight content
- `/investment-memo` - Investment analysis documents

**Skills:**
- CEO Advisor - Executive strategy, fundraising, team building
- CTO Advisor - Technical architecture, engineering leadership

**Automation:**
- `generate_daily_brief.py` - Daily brief generation
- `daily-brief-runner.sh` - Security wrapper for automation

---

### 2. [[2. Competitive Intelligence & Market Research/|Competitive Intelligence & Market Research]]
Enterprise-grade competitive analysis, market mapping, and research automation.

**Commands:**
- `/competitive-analysis` - 519-line enterprise framework with 15-section reports
- `/market-map` - Competitive landscape maps with positioning
- `/research` - AI-powered research with Fabric patterns

**Skills:**
- Competitive Analyst - Market positioning, SWOT analysis, strategic response
- Market Researcher - TAM/SAM/SOM analysis, trend identification
- Data Researcher - Data gathering, validation, synthesis
- Search Specialist - Advanced search techniques, source evaluation

---

### 3. [[3. Product & Innovation/|Product & Innovation]]
Idea validation, product strategy, user research, and innovation management.

**Commands:**
- `/idea-validate` - Market research and feasibility assessment
- `/idea-match` - Match ideas to opportunities
- `/idea-archive` - Structured archival with retrieval tags

**Skills:**
- Product Manager - PRD creation, roadmap planning, feature prioritization
- Product Strategist - Product-market fit, positioning, launch strategy
- UX Researcher/Designer - User research, usability analysis, design systems
- Business Analyst - Requirements gathering, process optimization, ROI analysis

---

### 4. [[4. Network & Relationship Intelligence/|Network & Relationship Intelligence]]
Contact management, relationship scoring, and network intelligence (4,939+ contacts).

**Commands:**
- `/find-connections` - Query network by role, company, expertise
- `/connect-dots` - Discover synergies across network and portfolio
- `/relationship-health` - Score relationship strength, identify dormant connections
- `/import-contacts` - Import LinkedIn contacts
- `/migrate-contacts` - Standardize existing contacts
- `/update-contact` - Update contact notes with interaction history

**Automation:**
- `import-linkedin-contacts.py` - LinkedIn CSV import with full metadata
- `network-query.sh` - Network intelligence queries

---

### 5. [[5. Consulting & Client Management/|Consulting & Client Management]]
Project tracking, client communications, time tracking, and invoicing.

**Commands:**
- `/project-status` - Client status reports with health assessment
- `/client-update` - Create client update emails
- `/log-time` - Time tracking for billable hours
- `/invoice-prep` - Invoice preparation with time summaries

**Skills:**
- Business Analyst (shared with Product & Innovation)

---

### 6. [[6. Marketing & Communications/|Marketing & Communications]]
Content creation, social media, and internal communications.

**Commands:**
- `/draft-post` - AI-generated social media posts and content

**Skills:**
- Content Marketer - Content strategy, SEO, audience engagement
- Internal Comms - Team announcements, change management, culture building

---

### 7. [[7. Automation & System Orchestration/|Automation & System Orchestration]]
Multi-agent workflows, context management, and system enhancement.

**Skills:**
- Agent Organizer - Multi-agent orchestration, workflow automation
- Context Manager - Session context optimization, memory management
- Skill Creator - Build new skills and automation patterns

**Automation:**
- `check-pai-updates.sh` - Weekly PAI repository update checker

---

### [[System Infrastructure/|System Infrastructure]]
Setup, maintenance, configuration, and documentation.

**Setup:**
- `setup-machine.sh` - One-command machine setup
- `install-dependencies.sh` - Python and brew packages
- `install-launchagents.sh` - macOS automation setup

**Maintenance:**
- `sync-to-template.sh` - Sync changes to public template repository

**LaunchAgents:**
- `com.obsidian.dailybrief.plist` - Daily brief automation (5 AM weekdays)

**Hooks:**
- `post-daily-brief.sh` - Notification hooks (macOS, email, Slack)
- Hook system README

**Config:**
- `dependencies.txt` - Python packages
- `tools.txt` - Brew packages (includes Fabric)

---

### [[Documentation/|Documentation]]
Comprehensive guides for setup, security, workflows, and integration.

- `PORTABILITY.md` - Multi-machine setup guide
- `PAI-INTEGRATION.md` - Personal AI Infrastructure integration
- `WORKFLOWS.md` - Usage patterns and best practices
- `SECURITY.md` - Security architecture and threat mitigation
- `AUTOMATION-SETUP.md` - Detailed automation guide
- `TEMPLATE-WORKFLOW.md` - Template repository maintenance

---

## 🚀 Quick Start

### Daily Workflow
```bash
# Morning (automated at 5 AM weekdays)
/daily                    # Get top 3 priorities

# Before meetings
/prep-meeting [person]    # Intelligence prep

# After interactions
/update-contact [name]    # Log interactions
```

### Weekly Routine
```bash
# Friday afternoon or Monday morning
/weekly                   # Comprehensive review and planning
```

### Research & Intelligence
```bash
/research [topic]                # Market research
/competitive-analysis [company]  # Deep-dive analysis
/market-map [category]           # Landscape mapping
```

### Network Intelligence
```bash
/find-connections [query]        # Find relevant contacts
/connect-dots [focus]            # Discover synergies
/relationship-health             # Network health check
```

---

## 📊 System Stats

- **23 Production-Ready Commands**
- **15 Specialized AI Skills**
- **7 Functional Categories**
- **4,939+ Contacts** (LinkedIn import tested)
- **519-Line** Competitive Analysis Framework
- **242+ Fabric AI Patterns** Integrated

---

## 🔗 Navigation

**Browse by Function:**
- Looking for portfolio tools → [[1. Executive & Portfolio Management/]]
- Need competitive intelligence → [[2. Competitive Intelligence & Market Research/]]
- Working on product strategy → [[3. Product & Innovation/]]
- Finding network connections → [[4. Network & Relationship Intelligence/]]
- Managing client projects → [[5. Consulting & Client Management/]]
- Creating content → [[6. Marketing & Communications/]]
- Building automation → [[7. Automation & System Orchestration/]]

**System Administration:**
- Setup and maintenance → [[System Infrastructure/]]
- Guides and documentation → [[Documentation/]]

---

## 🎯 Use Cases

### For Venture Investors
Navigate to: [[1. Executive & Portfolio Management/]]
- Portfolio company tracking and board prep
- Deal flow analysis and investment memos
- Network intelligence for warm intros
- Competitive landscape monitoring

### For Consultants
Navigate to: [[5. Consulting & Client Management/]]
- Client project management
- Time tracking and invoicing
- Deliverable status reporting
- Client communication automation

### For Product Leaders
Navigate to: [[3. Product & Innovation/]]
- Idea validation and prioritization
- Market research and competitive analysis
- Product strategy and roadmaps
- Customer discovery

### For Executives
Navigate to: [[1. Executive & Portfolio Management/]]
- Daily prioritization and focus
- Strategic decision support
- Team and org analysis
- Market intelligence

---

## 💡 What Makes This System Different

### Function-First Organization
- **Discoverability** - "I need competitive analysis" → Go to folder 2
- **Browsing** - See all related commands + skills + automation in one place
- **Extensibility** - Add new capabilities to appropriate category

### Enterprise-Grade Quality
- Detailed output templates (519 lines for competitive analysis)
- Multiple scoring frameworks and assessment tools
- Source documentation and validation
- Action item generation and tracking

### Production-Ready
- Successfully imported 4,939 LinkedIn contacts
- Managing 7 portfolio companies
- Generating daily briefs automatically
- Comprehensive security measures
- Multi-machine portability tested

---

## 🔐 Security

- **Input sanitization** - Protects against prompt injection attacks
- **Path validation** - Restricts access to vault directory only
- **Restricted execution** - Limited permissions and environment
- **Audit logging** - Comprehensive security event tracking
- **No Full Disk Access required** - Vault-only access is sufficient

See [[Documentation/SECURITY.md]] for complete details.

---

## 📖 Documentation

Complete guides available in [[Documentation/]]:
- Setup and portability guides
- Security architecture
- Workflow best practices
- PAI integration details
- Template maintenance workflow

---

**Last Updated:** 2025-11-13
**Version:** 2.0 (Syntropic System Reorganization)
**Total Commands:** 23 | **Total Skills:** 15 | **Total Categories:** 7
