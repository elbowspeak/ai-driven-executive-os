# Workflows & Best Practices

**AI-driven Executive Operating System - Standard Operating Procedures**

This document explains how to use your AI system effectively and what to expect from Claude Code interactions.

---

## 🎯 Core Philosophy

**Everything Worth Keeping → Saved to Vault**

All substantive research, analysis, and insights should be captured as markdown files in your vault for:
- Future reference
- Building institutional knowledge
- Tracking how your thinking evolves
- Cross-referencing insights
- Searchability across your knowledge base

---

## 📝 Research & Analysis Workflow

### **Standard Pattern**

When you request research or analysis, Claude Code will:

1. **Complete the analysis** - Gather data, synthesize insights
2. **Present results** - Show findings in the conversation
3. **Offer to save** - Ask: *"Would you like me to save this to a markdown file?"*
4. **Create file if requested** - Save with appropriate naming and location

### **When This Applies**

- Network intelligence queries
- Market research
- Competitive analysis
- Contact searches (with meaningful results)
- Technology deep-dives
- Investment analysis
- Trend reports
- Any substantive research output

### **When to Save vs Skip**

**Save if:**
- Results are substantive (not just a quick lookup)
- You might reference it later
- It informs a decision or strategy
- It took significant research to generate
- It captures insights worth preserving

**Skip if:**
- Quick factual lookup
- Trivial query
- Already covered in existing notes
- Just exploring/testing

---

## 📂 File Locations & Naming

### **Directory Structure**

```
Doikayt/
├── Network/
│   └── Queries/           # Network intelligence results
│       ├── Network-Overview-YYYY-MM-DD.md
│       ├── AI-Founders-YYYY-MM-DD.md
│       └── Company-Analysis-[Name]-YYYY-MM-DD.md
│
├── Research/
│   ├── [Topic]_Research_YYYY-MM-DD.md    # General research
│   ├── Competitive/                       # Competitive analysis
│   └── Analysis/                          # Ad-hoc analysis
│
├── Daily/
│   ├── YYYY-MM-DD.md                      # Daily briefs
│   └── PAI-Updates-YYYY-MM-DD.md          # Weekly PAI checks
│
└── Weekly/
    └── YYYY-MM-DD.md                      # Weekly reviews
```

### **Naming Conventions**

**Format:** `[Type]-[Topic]-YYYY-MM-DD.md`

**Examples:**
- `Network-Overview-2025-11-12.md`
- `AI_Reasoning_Models_Research_2025-11-12.md`
- `Cybersecurity-Market-Analysis-2025-11-12.md`
- `Company-Microsoft-Network-2025-11-12.md`

**Guidelines:**
- Use hyphens for spaces in filenames
- Include date for tracking
- Descriptive but concise names
- Category prefix when useful

---

## 🤖 Automated Workflows

### **Daily Brief (5:00 AM Weekdays)**

**What happens:**
1. LaunchAgent triggers Python script
2. Script generates daily prioritization brief
3. Saves to `Daily/YYYY-MM-DD.md`
4. Post-daily-brief hook sends notification
5. You review in Obsidian when ready

**Files created:** Always saves automatically

**Location:** `Daily/YYYY-MM-DD.md`

---

### **Weekly Review (Friday or Monday)**

**Trigger:** Run `/weekly` command

**What happens:**
1. Reviews past 7 days of activity
2. Analyzes portfolio, relationships, consulting
3. Runs PAI update check
4. Generates planning for next week
5. Saves to `Weekly/YYYY-MM-DD.md`

**Files created:** Always saves automatically

**Location:** `Weekly/YYYY-MM-DD.md`

---

### **PAI Update Check (Weekly)**

**Trigger:**
- Automatically during `/weekly`
- Manually: `bash Scripts/automation/check-pai-updates.sh`

**What happens:**
1. Queries GitHub API for PAI repo updates
2. Generates report with action items
3. Suggests 1-2 features to integrate
4. Tracks last check date

**Files created:** Always saves automatically

**Location:** `Daily/PAI-Updates-YYYY-MM-DD.md`

---

## 🔍 Network Intelligence Workflows

### **Quick Lookups**

For simple queries, results stay in terminal:
```bash
grep "Microsoft" Contacts/LinkedIn/*.md | wc -l
```

**No file created** - just quick info

---

### **Substantive Queries**

For meaningful network analysis:

**Example:**
```
You: Show me all AI founders I could reach out to for advice

Claude: [Generates analysis of 47 AI founders with context]

Claude: "Would you like me to save this to
Network/Queries/AI-Founders-Outreach-2025-11-12.md?"

You: Yes

Claude: [Saves file with full analysis]
```

**File includes:**
- Query context
- Results with details
- Suggested next actions
- Links to contact files

---

## 📊 Research Workflows

### **Market Research**

**Command:** `/research [topic]`

**Process:**
1. WebSearch for recent info
2. WebFetch for detailed content
3. Fabric patterns for insight extraction
4. Synthesize into structured report

**Files created:** Always saves automatically

**Location:** `Research/[Topic]_Research_YYYY-MM-DD.md`

**Includes:**
- Executive summary
- Market overview
- Key players
- Opportunities & risks
- Action items
- Sources

---

### **Competitive Analysis**

**Command:** `/competitive-analysis [company]`

**Process:**
1. Research competitor positioning
2. Analyze strengths/weaknesses
3. Identify opportunities
4. Link to portfolio implications

**Files created:** Always saves automatically

**Location:** `Research/Competitive/[Company]-Analysis-YYYY-MM-DD.md`

---

## 🎓 Fabric AI Pattern Usage

### **When Researching Articles**

**Workflow:**
```bash
# 1. Fetch article content
curl -s [URL] > article.txt

# 2. Extract insights
cat article.txt | fabric --pattern extract_article_wisdom

# 3. Save results (if valuable)
# Claude will ask: "Save this analysis?"
```

**Common Patterns:**
- `extract_wisdom` - Key insights from any content
- `analyze_claims` - Validate claims and evidence
- `summarize` - Concise summaries
- `extract_business_ideas` - Identify opportunities

**Files created:** Only if you request save

**Location:** `Research/Analysis/[Topic]-YYYY-MM-DD.md`

---

## 🔗 Integration Workflows

### **Linking Research to Portfolio**

When research affects portfolio companies:

**Process:**
1. Complete research
2. Identify portfolio implications
3. Save research file
4. Link to portfolio company notes
5. Add action items to relevant company files

**Example:**
```markdown
# AI Reasoning Models Research

## Portfolio Relevance
- [[neurometric]] - Positioned well for reasoning analytics
- [[XORQ]] - Could benefit from reasoning capabilities

## Actions
- [ ] Share findings with neurometric team
- [ ] Schedule discussion with XORQ CTO
```

---

### **Connecting Network Intelligence**

After network queries:

**Best Practice:**
1. Save query results
2. Follow up with specific contacts
3. Update contact notes with context
4. Track reconnections in Daily notes

**Example Flow:**
```
1. Query: "AI investors interested in reasoning"
2. Results: 12 investors found
3. Save to: Network/Queries/AI-Reasoning-Investors-2025-11-12.md
4. Action: Reach out to top 3
5. Update: Add notes to their contact files
6. Track: Note outreach in today's daily brief
```

---

## 📈 Building Your Knowledge Base

### **Over Time, You'll Have:**

**Network Intelligence:**
- Historical network analyses
- Recurring searches (comparing results over time)
- Network growth tracking
- Relationship patterns

**Market Research:**
- Industry trend tracking
- Competitive landscape evolution
- Technology adoption curves
- Market timing decisions

**Strategic Insights:**
- Investment thesis development
- Portfolio strategy evolution
- Learning and pattern recognition
- Decision rationale documentation

### **Benefits:**

- **Searchable** - Find past insights quickly
- **Referenceable** - Link to previous research
- **Traceable** - See how thinking evolved
- **Shareable** - Send reports to team/LPs
- **Continuity** - Never lose important research

---

## 🚀 Best Practices

### **1. Name Files Descriptively**
- ✅ `AI-Market-Opportunity-Analysis-2025-11-12.md`
- ❌ `research-notes.md`

### **2. Use Dates in Filenames**
- Enables tracking over time
- See how analysis changes
- Easy to find latest version

### **3. Link Between Files**
- Use `[[WikiLinks]]` to connect insights
- Link research to portfolio companies
- Cross-reference related analyses

### **4. Add Action Items**
- Research should drive action
- Include next steps
- Track follow-through

### **5. Update Periodically**
- Markets evolve
- Revisit key research quarterly
- Compare predictions to reality

### **6. Tag Appropriately**
- Use YAML frontmatter tags
- Makes research findable
- Enables smart queries

---

## 📋 Quick Reference

| Automation | Saves Automatically? | Location | Frequency |
|-----------|---------------------|----------|-----------|
| Daily Brief | ✅ Yes | `Daily/YYYY-MM-DD.md` | Every weekday 5 AM |
| Weekly Review | ✅ Yes | `Weekly/YYYY-MM-DD.md` | On demand |
| PAI Updates | ✅ Yes | `Daily/PAI-Updates-YYYY-MM-DD.md` | Weekly |
| Research | ✅ Yes | `Research/[Topic]_Research_YYYY-MM-DD.md` | On demand |
| Network Queries | ❓ Ask first | `Network/Queries/[Query]-YYYY-MM-DD.md` | On demand |
| Analysis | ❓ Ask first | `Research/Analysis/[Topic]-YYYY-MM-DD.md` | On demand |

---

## 🔄 Portability

All workflows and saved files are **automatically portable**:

✅ **What Syncs (via Obsidian Sync):**
- All markdown files (research, queries, briefs)
- All contacts (4,939 LinkedIn imports)
- All documentation
- All slash commands
- Scripts and configurations

✅ **What Setup Does:**
- Installs dependencies (Python, Fabric)
- Configures LaunchAgents
- Sets up automation

📖 **See:** `Docs/PORTABILITY.md` for full setup guide

---

## 💡 Tips for Effective Use

### **Research Session Best Practices**

1. **Start with a clear question**
   - "What's the AI reasoning market opportunity?"
   - "Who in my network works in cybersecurity?"
   - "How is [Portfolio Company] positioned vs competitors?"

2. **Let Claude synthesize, don't just collect**
   - Ask for insights, not just data
   - Connect dots across sources
   - Identify actionable implications

3. **Save substantive results**
   - If you might reference it → Save it
   - If it informs strategy → Save it
   - If it took work to generate → Save it

4. **Link to existing knowledge**
   - Connect to portfolio companies
   - Reference past research
   - Build on previous insights

5. **Act on findings**
   - Add action items to daily/weekly notes
   - Follow up with network contacts
   - Share insights with relevant stakeholders

---

## 📚 Related Documentation

- **Setup Guide:** `Scripts/AUTOMATION-SETUP.md`
- **Portability:** `Docs/PORTABILITY.md`
- **PAI Integration:** `Docs/PAI-INTEGRATION.md`
- **Commands:** `.claude/commands/`
- **Hooks:** `.claude/hooks/README.md`

---

**Remember:** The goal is to build a searchable, linked knowledge base that compounds over time. Every saved insight makes future research faster and more valuable.

---

*Last Updated: 2025-11-12*
*This document syncs automatically via Obsidian Sync*
