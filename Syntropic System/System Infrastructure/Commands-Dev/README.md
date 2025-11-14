# Claude Code Commands for Obsidian Vault

Custom slash commands to supercharge your Obsidian + Claude Code workflow.

## 📋 Available Commands

### **Daily Workflow Commands** (Use Every Day)

### `/daily`
**Purpose:** Your daily operating system - run every morning for focused priorities.

**Use Cases:**
- Morning prioritization
- Portfolio company attention flags
- Relationship follow-up reminders
- Consulting/project focus
- Quick wins identification

**Examples:**
```
/daily
```

**Output:**
- Top 3 priorities for the day
- Portfolio companies needing attention
- Relationship actions (urgent/this week)
- Consulting commitments
- Meeting prep reminders
- Quick wins list

---

### `/weekly`
**Purpose:** Comprehensive weekly review and next week planning.

**Use Cases:**
- Friday afternoon reflection
- Monday morning planning
- Track accomplishments and patterns
- Portfolio status rollup
- Network health assessment
- Strategic planning

**Examples:**
```
/weekly
```

**Output:**
- Week in numbers (metrics)
- Accomplishments across all areas
- Incomplete items and lessons
- Portfolio status per company
- Relationship health trends
- Consulting/revenue summary
- Next week top 3 priorities
- Key dates and commitments

---

### `/prep-meeting [person/company/topic]`
**Purpose:** Comprehensive meeting preparation brief with all relevant context.

**Use Cases:**
- Before any important meeting
- Board meeting preparation
- First-time introductions
- Deal flow discussions
- Client calls

**Examples:**
```
/prep-meeting John Doe
/prep-meeting XORQ
/prep-meeting EncodedVC discussion
```

**Output:**
- Meeting objectives and success metrics
- Contact intelligence and history
- Company context and relevance
- Strategic talking points
- Questions to ask
- Value propositions and asks
- Portfolio connection opportunities
- Pre/during/post meeting checklists

---

### **Network & Portfolio Commands**

### `/find-connections [query]`
**Purpose:** Find relevant contacts, companies, and warm intro paths for any query.

**Use Cases:**
- Finding who you know at a specific company
- Identifying warm intro paths to a person
- Discovering experts in a topic area
- Locating contacts for a project

**Examples:**
```
/find-connections XORQ
/find-connections cybersecurity expert
/find-connections enterprise sales
/find-connections Sarah Chen
```

**Output:** Organized list of direct contacts, warm intro paths, topic experts, and suggested actions.

---

### `/portfolio-update`
**Purpose:** Generate comprehensive health report on all 7 Encoded Portfolio companies.

**Use Cases:**
- Monthly/quarterly portfolio reviews
- Board meeting preparation
- Identifying companies needing attention
- Tracking cross-portfolio trends

**Examples:**
```
/portfolio-update
```

**Output:** Full report showing:
- Company activity status (active/needs attention/stale)
- Public updates found (blogs, GitHub, news)
- Cross-portfolio insights
- Prioritized action items
- Portfolio health score

---

### `/import-contacts [file-path]`
**Purpose:** Import contacts from CSV, LinkedIn exports, or spreadsheets into structured Obsidian notes.

**Use Cases:**
- Importing LinkedIn connections
- Adding contacts from client spreadsheets
- Migrating from other systems
- Batch contact creation

**Examples:**
```
/import-contacts ~/Downloads/linkedin-connections.csv
/import-contacts ~/Documents/client-contacts.xlsx
```

**Output:**
- Individual contact notes with YAML frontmatter
- Automatic company linking
- Tag inference
- Import summary with stats
- Suggested next steps

---

### `/connect-dots [optional: focus-area]`
**Purpose:** Discover synergies, opportunities, and connections across your entire vault.

**Use Cases:**
- Finding customer opportunities for portfolio companies
- Identifying company collaboration opportunities
- Mapping warm intro paths
- Connecting consulting projects to portfolio
- Linking ideas to execution opportunities

**Examples:**
```
/connect-dots
/connect-dots AI
/connect-dots XORQ
/connect-dots enterprise-sales
```

**Output:**
- High-value opportunities (actionable now)
- Strategic opportunities (worth exploring)
- Future opportunities (long-term)
- Warm intro paths mapped
- Cross-portfolio synergies
- Prioritized action plan

---

### **Contact Management Commands**

### `/import-contacts [file-path]`
**Purpose:** Import contacts from CSV, LinkedIn exports, or spreadsheets into structured Obsidian notes.

**Use Cases:**
- Importing LinkedIn connections
- Adding contacts from client spreadsheets
- Migrating from other systems
- Batch contact creation

**Examples:**
```
/import-contacts ~/Downloads/linkedin-connections.csv
/import-contacts ~/Documents/client-contacts.xlsx
```

**Output:**
- Individual contact notes with YAML frontmatter
- Automatic company linking
- Tag inference
- Import summary with stats
- Suggested next steps

---

### `/migrate-contacts [folder]`
**Purpose:** Upgrade existing contact files to use standardized YAML schema.

**Use Cases:**
- Standardize existing contacts
- Add structure to old notes
- Enhance with metadata
- Link to portfolio companies

**Examples:**
```
/migrate-contacts Biz Dev/
/migrate-contacts Consulting/
```

**Output:**
- Upgraded files with YAML frontmatter
- Preserved original content
- Inferred tags and relationships
- Migration summary

---

### `/update-contact [name]`
**Purpose:** Quick interaction logging workflow.

**Use Cases:**
- After calls or meetings
- Log email conversations
- Track relationship progress
- Create follow-up tasks

**Examples:**
```
/update-contact John Doe
```

**Output:**
- Timestamped interaction log
- Updated last_contact date
- Relationship strength suggestions
- Follow-up actions created

---

### `/relationship-health [optional: filter]`
**Purpose:** Network health analysis and reconnection opportunities.

**Use Cases:**
- Monthly relationship check
- Identify dormant connections
- Prioritize reconnection efforts
- Super connector identification

**Examples:**
```
/relationship-health
/relationship-health strong
/relationship-health portfolio
```

**Output:**
- High priority reconnections (urgent)
- Medium priority (this month)
- Monitoring status (healthy)
- Super connectors in network
- Engagement trends
- Reconnection templates

---

### **Consulting Project Management Commands**

### `/project-status [client]`
**Purpose:** Quick status report for consulting projects with health assessment.

**Use Cases:**
- Review project health and progress
- Prepare for client meetings
- Identify blockers and risks
- Track billable hours and revenue
- Monitor all projects at once

**Examples:**
```
/project-status Xtract
/project-status Syntropic
/project-status all
```

**Output:**
- Project overview with health score
- Current deliverables status
- Financial summary (hours, revenue, invoices)
- Client relationship health
- Blockers and risks
- Action items prioritized
- Opportunities for expansion

---

### `/log-time [project] [hours] [description]`
**Purpose:** Track billable hours for consulting projects.

**Use Cases:**
- Log time after work sessions
- Track billable vs. non-billable hours
- Monitor budget consumption
- Prepare for invoicing
- Review weekly/monthly totals

**Examples:**
```
/log-time Xtract
/log-time Syntropic 3.5 - Strategy session
/log-time all (review all time this week)
```

**Output:**
- Logged entry confirmation
- This week/month summary
- Hours remaining in budget
- Uninvoiced hours total
- Recent entries list
- Invoice timing reminder

---

### `/client-update [client] [type]`
**Purpose:** Generate professional client update emails based on project progress.

**Use Cases:**
- Weekly check-ins
- Milestone completion announcements
- Monthly progress reports
- Ad-hoc updates on issues/pivots

**Examples:**
```
/client-update Xtract
/client-update Syntropic weekly
/client-update Kadiko milestone
```

**Output:**
- Polished email draft
- Accomplishments highlighted
- Progress metrics included
- Next steps clear
- Professional tone
- Send checklist
- Alternative versions (short/detailed)

---

### `/invoice-prep [client] [period]`
**Purpose:** Prepare invoice materials by compiling billable hours and deliverables.

**Use Cases:**
- Monthly invoicing
- Project milestone billing
- Retainer reconciliation
- Expense reimbursement
- Review all uninvoiced work

**Examples:**
```
/invoice-prep Xtract
/invoice-prep Syntropic november
/invoice-prep all
```

**Output:**
- Billing summary with totals
- Line items table (ready to copy)
- Deliverables completed list
- Invoice email template
- Send checklist
- Post-invoice action items
- Financial summary to date

---

### **Research & Intelligence Commands**

### `/research [topic]`
**Purpose:** Structured research template with web search integration.

**Use Cases:**
- Market research for portfolio companies
- Technology deep-dives
- Industry trend analysis
- Investment opportunity exploration
- Due diligence research

**Examples:**
```
/research AI reasoning models
/research cybersecurity market 2025
/research data infrastructure trends
```

**Output:**
- Executive summary with key findings
- Market overview with size and trends
- Key players and landscape
- Technology analysis
- Funding and investment activity
- Opportunities identified
- Sources and references
- Action items
- Saved to `Research/` folder

---

### `/competitive-analysis [company]`
**Purpose:** Deep-dive competitive intelligence on any company.

**Use Cases:**
- Analyze competitors to portfolio companies
- Evaluate potential investments
- Track market threats
- Identify acquisition targets
- Learn from successful approaches

**Examples:**
```
/competitive-analysis Terra Security
/competitive-analysis Databricks
/competitive-analysis [prospect company]
```

**Output:**
- Company overview and positioning
- Funding and financials analysis
- Team and leadership assessment
- Product and technology review
- Traction and customer metrics
- Head-to-head comparison with portfolio
- Strategic implications
- Threat/opportunity level assessment
- Saved to `Research/` folder

---

### `/market-map [category]`
**Purpose:** Map entire market landscape - all players, positioning, trends.

**Use Cases:**
- Understand competitive landscape
- Identify white space opportunities
- Position portfolio companies
- Generate deal flow ideas
- Inform investment thesis
- Board meeting materials

**Examples:**
```
/market-map agentic AI security
/market-map data infrastructure
/market-map developer tools AI
```

**Output:**
- Market definition and size
- Complete landscape overview (leaders, challengers, emerging)
- Portfolio company positioning
- Market segmentation analysis
- Funding landscape and trends
- Positioning map (visual framework)
- Technology and customer trends
- Future outlook and predictions
- Investment implications
- Saved to `Research/` folder

---

### **Content Creation Workflows**

### `/draft-post [topic]`
**Purpose:** Generate LinkedIn posts with your authentic voice for thought leadership.

**Use Cases:**
- Share portfolio insights and learnings
- Market observations and trends
- Founder lessons and reflections
- Investment thesis and perspective
- Build personal brand and credibility

**Examples:**
```
/draft-post agentic AI security trends
/draft-post lessons from portfolio company journey
/draft-post why data infrastructure matters
```

**Output:**
- Multiple post versions (data-driven, personal story, contrarian)
- Character counts and hashtags
- Publishing strategy and timing
- Engagement checklist
- Alternative angles if needed
- Authentic voice, not promotional

---

### `/investment-memo [company]`
**Purpose:** Create structured investment analysis documents for evaluating opportunities.

**Use Cases:**
- Evaluate potential investments
- Document investment thesis
- Share analysis with co-investors
- LP communication and reporting
- Track predictions vs. outcomes

**Examples:**
```
/investment-memo Acme AI Security
/investment-memo [Company Name]
```

**Output:**
- Executive summary with recommendation
- Market opportunity analysis
- Product/technology assessment
- Team evaluation
- Traction and metrics review
- Competitive positioning
- Risk analysis
- Investment thesis
- Due diligence checklist
- Decision and next steps
- Saved to `Investments/` folder

---

### `/portfolio-highlight [company]`
**Purpose:** Create compelling company spotlight content to showcase portfolio companies.

**Use Cases:**
- Thought leadership through portfolio lens
- Give portfolio companies visibility
- Attract deal flow by demonstrating portfolio quality
- LP updates with company progress
- Build network effects for companies

**Examples:**
```
/portfolio-highlight Tenzai
/portfolio-highlight XORQ
/portfolio-highlight ConfigHub
```

**Output:**
- Multiple content versions (LinkedIn, extended, Twitter thread, LP email)
- Founder journey, achievement, market insight, or problem-solution formats
- Visual suggestions and design elements
- Distribution and amplification strategy
- Company collaboration checklist
- Authentic storytelling, not promotional
- Saved to `Content/Portfolio Highlights/` folder

---

## 🎯 Quick Start Workflows

### **Daily Operating System**
```bash
Every Morning:
1. /daily - Get top 3 priorities
2. Block calendar for priority work
3. Run /prep-meeting for any important meetings today

End of Day:
- /update-contact for people you spoke with
- Log any portfolio updates
- Review tomorrow's focus
```

### **Weekly Routine**
```bash
Monday Morning:
- /daily to start the week
- Review week priorities
- Schedule key calls/meetings

Mid-Week:
- /daily each morning
- /prep-meeting before important meetings
- /update-contact after significant interactions

Friday Afternoon:
- /weekly for comprehensive review
- /relationship-health monthly
- Plan next week priorities
```

### **Monthly Portfolio Management**
```bash
Start of Month:
- /portfolio-update for complete status
- /relationship-health for network check
- Set month priorities

Mid-Month:
- /connect-dots for specific companies needing help
- Run /find-connections for customer intros

End of Month:
- /weekly review
- Update company files with progress
- Prepare for LP updates
```

### **Contact Management Workflow**
```bash
Initial Setup:
1. Export LinkedIn connections
2. /import-contacts ~/Downloads/linkedin-connections.csv
3. /migrate-contacts Biz Dev/
4. /migrate-contacts Consulting/

Ongoing:
- /update-contact after every interaction
- /relationship-health monthly
- /find-connections when you need intros
- /connect-dots to discover opportunities
```

### **Consulting Project Management**
```bash
Daily:
- /log-time [project] after work sessions
- Track hours as you go

Weekly:
- /project-status all to review all projects
- /client-update [client] for weekly check-ins
- Identify projects needing attention

Monthly:
- /invoice-prep [client] to prepare invoices
- /project-status all for comprehensive review
- /client-update [client] monthly for detailed reports

Before Client Meetings:
- /project-status [client] to review status
- /prep-meeting [client] for meeting brief
- Have current metrics ready
```

### **Meeting Preparation**
```bash
Before Any Important Meeting:
1. /prep-meeting [person/company]
2. Review generated brief
3. Check portfolio connection opportunities
4. Prepare specific asks/offers

After Meeting:
1. /update-contact [person] - log what happened
2. Execute on promised intros
3. Schedule follow-ups
```

### **Research & Due Diligence**
```bash
Market Research:
- /research [topic] for broad market understanding
- /market-map [category] for complete landscape view
- /competitive-analysis [company] for specific threats/opportunities

Investment Evaluation:
1. /research [company space] - understand market
2. /competitive-analysis [company] - evaluate company
3. /market-map [category] - see full landscape
4. /connect-dots [company] - find network connections
5. Share with portfolio if relevant

Portfolio Support:
- /competitive-analysis [threat] for competitive intelligence
- /market-map [category] to position portfolio company
- Share insights with relevant founders
- Update board materials with findings

Quarterly Reviews:
- Update existing market maps
- Track competitor movements
- Identify new threats/opportunities
- Refresh portfolio positioning
```

---

## 📊 Contact Data Schema

When creating contacts (manually or via import), use this YAML frontmatter:

```yaml
---
type: contact
name: Full Name
company: "[[Company Name]]"
title: Job Title
email: email@example.com
phone: +1-555-0123
linkedin: https://linkedin.com/in/username
twitter: @username
location: City, State/Country
tags: [founder, investor, warm-intro, fintech]
relationship_strength: strong | medium | weak
last_contact: 2025-11-11
introduced_by: "[[Person Name]]"
relevant_companies: [[Company A]], [[Company B]]
relevant_projects: [[Project X]], [[Project Y]]
notes: Quick context notes
---
```

**Key Fields:**
- `type`: Always "contact" for people
- `name`: Full name
- `company`: Use [[brackets]] for Obsidian linking
- `tags`: Array for categorization
- `relationship_strength`: strong/medium/weak for prioritization
- `last_contact`: Track interaction recency
- `introduced_by`: Enable warm intro path discovery

---

## 🏢 Company Data Schema

For portfolio companies and prospects:

```yaml
---
type: company
category: portfolio | prospect | competitor | partner
stage: seed | series-a | series-b | growth | public
status: active | monitoring | passed
thesis: One-line value proposition
market_size: $XB TAM
key_contacts: [[Founder Name]], [[Executive Name]]
relevant_to: [[Similar Company]], [[Related Tech]]
last_updated: 2025-11-11
next_action: Specific next step
tags: [ai, infrastructure, fintech]
---
```

---

## 💡 Pro Tips

### **Maximize Command Effectiveness**

1. **Use YAML Frontmatter Consistently**
   - Commands rely on structured data in YAML
   - More complete frontmatter = better connections found
   - Especially important: tags, relationships, dates

2. **Tag Strategically**
   - Use consistent tags across contacts/companies
   - Examples: `[founder]`, `[investor]`, `[enterprise]`, `[ai]`, `[fintech]`
   - Commands use tags to find thematic connections

3. **Link Everything**
   - Use `[[Wikilinks]]` for companies, contacts, projects
   - Enables graph-based connection discovery
   - Makes warm intro path mapping possible

4. **Update Last Contact Dates**
   - Helps avoid suggesting recently contacted people
   - Identifies relationships needing renewal
   - Tracks engagement over time

5. **Specify Relationship Strength**
   - Commands prioritize "strong" relationships
   - Helps filter for high-probability intros
   - Guides outreach strategy

### **Common Patterns**

**Before Important Meetings:**
```bash
/find-connections [company name]
Review contact notes and relationships
```

**Monthly Portfolio Review:**
```bash
/portfolio-update
Review flagged companies
Update stale company notes
/connect-dots [portfolio company needing help]
```

**New Business Development:**
```bash
/find-connections [target company]
/connect-dots [relevant market/technology]
Identify warm intro paths
Execute outreach
```

**After Networking Event:**
```bash
Add new contacts with proper YAML
/connect-dots [contact's company/expertise]
Identify immediate follow-up opportunities
```

---

## 🔧 Customization

These commands are markdown files in `.claude/commands/` - you can edit them to:
- Adjust output format
- Add custom logic
- Change search patterns
- Modify prioritization
- Add vault-specific sections

---

## 🚀 Future Enhancements (with MCP)

Once MCP servers are configured, these commands could:
- Auto-sync with Calendar for meeting prep
- Monitor email for founder updates
- Track Slack activity in portfolio channels
- Pull data from Notion/Airtable
- Automate scheduled reports

---

## ❓ Troubleshooting

**Command not found:**
- Ensure file is in `.claude/commands/` directory
- Filename should match command (e.g., `find-connections.md` → `/find-connections`)
- No spaces in filename (use hyphens)

**Poor results:**
- Add more YAML frontmatter to files
- Use consistent tagging
- Add more `[[Wikilinks]]` between entities
- Update `last_contact` dates

**Slow performance:**
- Commands scan entire vault
- Consider focusing searches with parameters
- Use focus mode: `/connect-dots [specific area]`

---

## 📚 Additional Resources

- **Feed the Beast Guide**: https://github.com/derek-larson14/feed-the-beast
- **Claude Code Docs**: https://docs.claude.com/claude-code
- **Obsidian Help**: https://help.obsidian.md

---

*Last updated: 2025-11-12*
*Vault: Doikayt*
*Total Commands: 21*

## 📝 Command Summary

**Daily Workflow:** `/daily`, `/weekly`, `/prep-meeting`
**Network Intelligence:** `/find-connections`, `/connect-dots`, `/relationship-health`
**Portfolio Management:** `/portfolio-update`
**Contact Management:** `/import-contacts`, `/migrate-contacts`, `/update-contact`
**Consulting Projects:** `/project-status`, `/log-time`, `/client-update`, `/invoice-prep`
**Research & Intelligence:** `/research`, `/competitive-analysis`, `/market-map`
**Content Creation:** `/draft-post`, `/investment-memo`, `/portfolio-highlight`

**Core Operating System:**
1. Start each day with `/daily` (auto-generates at 5am weekdays)
2. Prep meetings with `/prep-meeting`
3. Log interactions with `/update-contact`
4. Track consulting time with `/log-time`
5. Research markets/companies with `/research`, `/competitive-analysis`, `/market-map`
6. Create content with `/draft-post`, `/investment-memo`, `/portfolio-highlight`
7. End week with `/weekly`
8. Check network monthly with `/relationship-health`
9. Monitor portfolio with `/portfolio-update`
10. Review projects with `/project-status`
