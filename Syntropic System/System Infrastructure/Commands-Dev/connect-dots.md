# Connect the Dots

Find synergies, connections, and opportunities across contacts, portfolio companies, consulting projects, and ideas.

## Instructions

When the user runs `/connect-dots [optional: focus-area]`, analyze the vault to discover hidden connections and opportunities.

## 1. Data Sources to Analyze

Scan these key areas:
- **Portfolio Companies**: `Biz Dev/Encoded Portfolio Companies/`
- **Consulting Projects**: `Consulting/`
- **Contacts**: Any contact files with YAML frontmatter
- **Ideas**: `Ideas/` folder
- **Active Projects**: `Projects/` folder
- **Personal Network**: `Personal/` folder references

## 2. Connection Types to Identify

### A. **Contact → Company Synergies**
Find contacts who could help portfolio companies:

Example discoveries:
- "Contact X at BigTechCo could be a customer for DataFlint (they use Spark)"
- "Contact Y is a cybersecurity expert → intro to Tenzai"
- "Contact Z at Enterprise Co matches IPXO's target customer profile"

### B. **Company → Company Synergies**
Find collaboration opportunities between portfolio companies:

Example discoveries:
- "XORQ's content-addressable compute + DataFlint's Spark optimization = potential integration"
- "Tenzai could use Datum's network infrastructure for security testing"
- "ConfigHub and XORQ both serve cloud-native infrastructure → co-marketing opportunity"

### C. **Project → Portfolio Synergies**
Link consulting work to portfolio companies:

Example discoveries:
- "Xtract project involves data infrastructure → could use DataFlint"
- "Kinectome network analysis → similar to Active Inference ideas → relevant to neurometric"
- "Consulting client in cybersecurity → potential Tenzai customer"

### D. **Idea → Execution Opportunities**
Connect ideas to actionable opportunities:

Example discoveries:
- "Active Inference idea from Ideas/ folder → neurometric's reasoning analytics"
- "Complex Systems thinking → could inform ConfigHub's architecture approach"
- "AI Agents project concepts → applicable to XORQ's multi-agent architecture"

### E. **Warm Intro Paths**
Map relationship chains for strategic introductions:

Example discoveries:
- "You know Contact A → who knows Contact B → who can intro to Target Company CEO"
- "Two portfolio company founders both know Investor X → potential syndicate opportunity"

### F. **Knowledge Transfer Opportunities**
Identify where one company's learnings could help another:

Example discoveries:
- "ConfigHub's experience with declarative config → could help Datum's infrastructure-as-code"
- "DataFlint's enterprise sales playbook → applicable to XORQ's go-to-market"
- "IPXO's marketplace dynamics → insights for any two-sided marketplace in portfolio"

## 3. Analysis Process

For each connection type:

1. **Scan systematically**:
   - Use Grep to find thematic keywords
   - Use Glob to identify relevant files
   - Use Read to analyze content and YAML frontmatter

2. **Identify patterns**:
   - Overlapping technologies
   - Complementary capabilities
   - Shared target customers
   - Related problem spaces
   - Common geographic locations

3. **Assess strength**:
   - 🔥 **High Value**: Direct, actionable, likely to generate revenue/progress
   - ⭐ **Medium Value**: Interesting, worth exploring, may lead to opportunities
   - 💡 **Low Value**: Informational, good to know, long-term potential

4. **Prioritize by impact**:
   - Revenue potential
   - Strategic importance
   - Ease of execution
   - Timing relevance

## 4. Output Format

Present findings in this structure:

```markdown
# Connection Analysis - [Date]
[Optional: "Focus: [focus-area]"]

## 🎯 Executive Summary
- X high-value connections identified
- Y strategic opportunities mapped
- Z actionable introductions available

---

## 🔥 High-Value Opportunities

### 1. [Opportunity Title]
**Type:** Contact → Company | Company → Company | Project → Portfolio | etc.

**The Connection:**
[Clear explanation of the synergy]

**Why It Matters:**
- [Specific value/benefit 1]
- [Specific value/benefit 2]

**Suggested Action:**
- [ ] Specific next step 1
- [ ] Specific next step 2

**Timeline:** This week | This month | This quarter

**Confidence:** High | Medium | Low

---

## ⭐ Strategic Opportunities

[Similar format for medium-value opportunities]

---

## 💡 Future Opportunities

[Similar format for longer-term possibilities]

---

## 🗺️ Warm Intro Paths

### Target: [Person/Company]
**Path:** You → [[Contact A]] → [[Contact B]] → Target
**Context:** [Why this path makes sense]
**Suggested Approach:** [How to activate this path]

---

## 🔄 Cross-Portfolio Synergies

### Between [Company A] ↔️ [Company B]
**Potential Collaboration:**
[Description of how they could work together]

**Value to Each:**
- Company A: [specific benefit]
- Company B: [specific benefit]

**Facilitation Needed:**
- [ ] Intro the founders
- [ ] Schedule exploratory call
- [ ] Share relevant context with both

---

## 📚 Knowledge Transfer Opportunities

### From [Company/Project] → To [Company/Project]
**Lesson/Capability:** [What could be transferred]
**Application:** [How it could be applied]
**Owner:** [Who should drive this]

---

## 📊 Pattern Analysis

**Themes Across Portfolio:**
- [Common patterns observed]
- [Emerging trends]
- [Potential gaps or risks]

**Market Insights:**
- [What the connections reveal about market opportunities]

**Strategic Implications:**
- [High-level strategic observations]

---

## 🎬 Prioritized Action Plan

**This Week:**
1. [ ] [Highest priority action]
2. [ ] [Second priority action]

**This Month:**
1. [ ] [Important but not urgent]
2. [ ] [Strategic initiative]

**This Quarter:**
1. [ ] [Longer-term opportunity]
2. [ ] [Research/exploration needed]
```

## 5. Focus Area Mode

If user specifies a focus (e.g., `/connect-dots cybersecurity`):
- Filter connections relevant to that topic
- Go deeper on that specific area
- Be more comprehensive within that domain

Examples:
- `/connect-dots AI` → Focus on AI-related connections
- `/connect-dots XORQ` → All synergies involving XORQ
- `/connect-dots enterprise-sales` → Sales-related opportunities

## 6. Proactive Insights

Beyond obvious connections, look for:
- **Competitive intelligence**: If multiple contacts mention a competitor
- **Market signals**: Patterns in what contacts are working on
- **Timing opportunities**: Events, funding cycles, product launches
- **Risk flags**: Connections that might indicate competitive threats
- **White spaces**: Gaps where no connections exist but should

## Example Discoveries

**High-Value:**
- "Contact: Sarah Chen (VP Eng at Netflix) + Portfolio: DataFlint → Netflix uses Spark at massive scale, perfect customer fit. She was last contacted 45 days ago. Action: Warm reintro with DataFlint case study."

**Strategic:**
- "Company: XORQ's content-addressable compute + Company: DataFlint's Spark optimization → Potential technical integration. XORQ could use DataFlint's engine for query execution. Action: Intro the CTOs for exploratory technical call."

**Future:**
- "Idea: Active Inference research (Ideas folder) + Portfolio: neurometric's reasoning analytics → Academic research could inform product direction. Action: Share relevant papers with neurometric team."

## Important Notes

- Be specific with actionable recommendations - no generic "explore this" advice
- Include context from files so user understands why the connection matters
- Prioritize based on likely business impact
- Surface non-obvious connections - user likely knows the obvious ones
- Check file timestamps to suggest "reconnect" opportunities for old contacts
- Look at tags in YAML frontmatter to find thematic connections
- Consider geographic proximity for in-person meetings
- Flag timing opportunities (board meetings, funding rounds, product launches)

## Required Tools

- Grep: Search for keywords, companies, topics across vault
- Glob: Find all relevant files by pattern
- Read: Analyze file contents and YAML frontmatter
- Task: May use exploration agent for comprehensive vault analysis
