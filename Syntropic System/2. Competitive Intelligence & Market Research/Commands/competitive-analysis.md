# Competitive Analysis

Deep-dive analysis on competitors, prospects, or companies to evaluate.

## Instructions

When the user runs `/competitive-analysis [company]`, conduct comprehensive competitive intelligence.

## Usage

```
/competitive-analysis Terra Security
/competitive-analysis Databricks
/competitive-analysis [Potential Investment]
```

## Analysis Process

### 1. **Identify Company**
- Confirm company name and domain
- Determine context: Competitor? Prospect? Investment target?
- Find website, LinkedIn, recent news

### 2. **Gather Intelligence**
Use available tools:
- **WebSearch**: Company news, funding, team
- **WebFetch**: Company website, blog, careers page
- **Vault Search**: Check if mentioned in portfolio notes
- **GitHub**: Check for open-source projects

### 3. **Analyze vs. Portfolio**
If competitor to portfolio company:
- How do they compare?
- Strengths/weaknesses relative?
- Strategic response needed?

### 4. **Investment Assessment**
If potential investment:
- Does it fit thesis?
- Team quality?
- Traction indicators?
- Risk factors?

## Output Format

Create file: `Research/Competitive_Analysis_[Company]_[Date].md`

```markdown
# Competitive Analysis: [Company Name]
**Date:** [YYYY-MM-DD]
**Analyst:** [Your name]
**Context:** [Competitor to X / Investment prospect / Market intel]

---

## 🎯 EXECUTIVE SUMMARY

**One-Line Description:**
[What they do in one sentence]

**Key Insight:**
[Most important thing to know about this company]

**Threat/Opportunity Level:**
- If competitor: 🔴 High | 🟡 Medium | 🟢 Low
- If investment: 🔥 Hot | ⭐ Interesting | 💤 Pass

**Bottom Line:**
[Your assessment and recommended action]

---

## 🏢 COMPANY OVERVIEW

**Basics:**
- **Founded:** [Year]
- **Headquarters:** [Location]
- **Team Size:** ~X employees
- **Website:** [URL]
- **LinkedIn:** [URL]

**What They Do:**
[2-3 paragraph description of product/service]

**Mission/Positioning:**
[How they position themselves, their stated mission]

**Stage:**
Early (pre-seed/seed) | Growth (Series A/B) | Mature (Series C+) | Public

---

## 💰 FUNDING & FINANCIALS

**Funding History:**
- Series X: $Y million, [Date]
  - Lead: [Investor]
  - Valuation: $Z (if known)
  - Notable: [Anything significant]

- Previous rounds: [Summary]

**Total Raised:** $X million
**Last Round:** [Amount], [Date] ([How long ago])

**Investors:**
- [Notable Investor 1] - [Why they matter]
- [Notable Investor 2] - [Why they matter]

**Financial Signals:**
- Runway estimate: [X months based on burn]
- Likely next raise: [When/size based on pattern]
- Revenue (if known): [Amount/ARR]

**Burn/Efficiency:**
[Assessment based on team size, market, funding]

---

## 👥 TEAM & LEADERSHIP

**Founders:**
1. **[Name]** - [Title]
   - Background: [Previous companies, education]
   - Strengths: [Technical? Sales? Domain expert?]
   - LinkedIn: [URL]
   - Assessment: [Your take]

2. **[Name]** - [Title]
   [Similar format]

**Key Executives:**
- [Role]: [Name] - [Background]
- [Role]: [Name] - [Background]

**Team Quality Assessment:**
- Technical depth: [High/Medium/Low]
- Domain expertise: [High/Medium/Low]
- Go-to-market strength: [High/Medium/Low]
- Previous exits: [Yes/No - details]

**Hiring Velocity:**
- Currently hiring: X roles
- Focus areas: [Engineering, sales, ops?]
- Signal: [Growing fast? Backfilling? Pivoting?]

---

## 🎯 PRODUCT & TECHNOLOGY

**Core Product:**
[Description of what they've built]

**Key Features:**
1. [Feature 1] - [Why it matters]
2. [Feature 2] - [Why it matters]
3. [Feature 3] - [Why it matters]

**Technology Stack:**
[If known or inferred - open source, cloud, languages]

**Technical Differentiation:**
[What's unique about their approach?]

**Product Maturity:**
- Early beta | General availability | Enterprise-ready | Mature
- [Evidence: GitHub activity, docs quality, customer feedback]

**Roadmap Signals:**
[Job postings, blog posts, conference talks reveal future direction]

---

## 📊 TRACTION & CUSTOMERS

**Customer Base:**
- Estimated customers: X (public) / Y-Z (estimated total)
- Notable customers: [List public ones]
- Target segment: [SMB, Mid-market, Enterprise]

**Growth Indicators:**
- Job postings: [Hiring for scale?]
- Case studies: [X published]
- Press mentions: [Frequency]
- Conference presence: [Speaking, sponsoring?]
- Community: [GitHub stars, forum activity, etc.]

**Revenue Signals:**
[If known or estimated based on customers, pricing, team size]

**Market Traction:**
🔥 Strong (growing fast, clear momentum)
⭐ Moderate (growing, proving value)
💤 Unclear (early or struggling)

---

## 🥊 COMPETITIVE POSITIONING

### vs. [[Portfolio Company Name]]

**Head-to-Head Comparison:**

| Factor | [Portfolio Co] | [Competitor] | Winner |
|--------|---------------|--------------|---------|
| Product maturity | [Status] | [Status] | [Who] |
| Pricing | [Approach] | [Approach] | [Who] |
| Target market | [Segment] | [Segment] | [Tie/Who] |
| Technical depth | [Level] | [Level] | [Who] |
| Team | [Quality] | [Quality] | [Who] |
| Funding | $X | $Y | [Who] |
| Traction | [Level] | [Level] | [Who] |

**Strengths vs. Us:**
- [What they do better]
- [Their advantages]

**Weaknesses vs. Us:**
- [What we do better]
- [Our advantages]

**Strategic Insights:**
- [How this affects our strategy]
- [Opportunities to differentiate]
- [Threats to address]

---

## 🎭 GO-TO-MARKET

**Sales Motion:**
- Product-led growth | Sales-led | Hybrid
- Self-serve signup: Yes/No
- Free tier: Yes/No
- Pricing: [Public/Private] - [Range if known]

**Marketing Approach:**
- Content strategy: [Active blog? Technical depth?]
- Community building: [Events, open source, etc.]
- Paid marketing: [Evidence of ads?]
- Partnerships: [Strategic partnerships announced]

**Messaging:**
[How they position themselves, key phrases, differentiation claims]

**GTM Assessment:**
- Effectiveness: [High/Medium/Low]
- Sophistication: [Early/Mature]
- Differentiation: [Clear/Fuzzy]

---

## 🌍 MARKET POSITION

**Market Share:**
- [Their position in the market - leader, challenger, niche]

**Category:**
- Creating new category? | Playing in existing?
- How they define the space

**Competitive Set:**
1. [Top competitor] - [How they compare]
2. [Second competitor] - [How they compare]
3. [Third competitor] - [How they compare]

**Moat/Defensibility:**
- Technical moat: [Network effects, data, algorithms?]
- Market moat: [First mover, brand, switching costs?]
- Assessment: [Strong/Weak/Building]

---

## 📈 MOMENTUM & TRAJECTORY

**Recent Developments:**
- [Last 90 days: funding, product launches, customers, team]

**Momentum Signals:**
- 🚀 Accelerating (many positive signals)
- ➡️ Steady (consistent progress)
- 📉 Slowing (concerning signals)

**12-Month Trajectory:**
[Where are they likely headed?]

**Catalysts/Risks:**
- Catalysts: [What could accelerate them]
- Risks: [What could slow them down]

---

## 💡 STRATEGIC IMPLICATIONS

### For [[Portfolio Company]]

**Immediate Actions:**
- [ ] [Specific response to competitive threat]
- [ ] [Opportunity to differentiate]
- [ ] [Partnership or acquisition possibility?]

**Strategic Adjustments:**
- [How to position against them]
- [What to emphasize in sales/marketing]
- [Technical priorities to address gap]

**Monitoring:**
- Track: [Specific things to watch]
- Frequency: [How often to check]

### For Investment Thesis

**If Evaluating as Investment:**
- Fit with thesis: [High/Medium/Low]
- Risk/reward: [Assessment]
- Timing: [Now/Later/Pass]
- Recommendation: [Detailed assessment]

**Deal Structure Thoughts:**
[If interesting - valuation, terms, considerations]

---

## ⚠️ RED FLAGS & CONCERNS

**Concerns Identified:**
- [Concern 1] - [Why it matters]
- [Concern 2] - [Why it matters]

**Questions to Answer:**
- [Question 1]
- [Question 2]

**Due Diligence Needed:**
[If investment prospect - what to investigate deeper]

---

## 🔗 SOURCES

**Primary Sources:**
- Company website: [URL]
- Company blog: [URL]
- LinkedIn: [URL]
- GitHub: [URL] (if applicable)

**News & Articles:**
- [Title](URL) - [Key takeaway]
- [Title](URL) - [Key takeaway]

**Funding Data:**
- Crunchbase/PitchBook: [Link]

**People to Talk To:**
- [[Contact Name]] - [Why they'd have insights]

---

## 📋 ACTION ITEMS

**This Week:**
- [ ] [Action 1]
- [ ] [Action 2]

**This Month:**
- [ ] [Action 1]

**Monitor:**
- [ ] Set alert for company news
- [ ] Check website/blog monthly
- [ ] Review hiring page quarterly
- [ ] Next analysis: [Date]

---

## 📝 ANALYST NOTES

**Gut Feel:**
[Your intuition about this company]

**Comparison to Others:**
[How they compare to other companies in portfolio or market]

**Wild Cards:**
[Unexpected factors that could change everything]

**Follow-up Research:**
- [Topic to dig deeper on]
- [Source to check]

---

*Analysis completed: [Date]*
*Saved to: Research/Competitive_Analysis_[Company]_[Date].md*
*Next review: [30/60/90 days]*
*Update [[Portfolio Company]] file with insights*
```

## Intelligence Gathering Strategy

### **Primary Research**
- Company website and blog
- LinkedIn company and founder pages
- Job postings (reveal strategy and priorities)
- GitHub (if technical company)
- Product demo or free tier (if available)

### **Secondary Research**
- News articles and press releases
- Funding databases (Crunchbase, PitchBook)
- Industry analyst reports
- Conference presentations and talks
- Podcast interviews with founders

### **Network Intelligence**
- Run `/find-connections [company]` to see who you know there
- Check if any contacts have insights
- Look for shared connections with founders
- Identify people to talk to for validation

### **Signal Detection**

**Growth Signals:**
- ✅ Aggressive hiring
- ✅ Multiple funding rounds
- ✅ Big-name customers
- ✅ Conference keynotes
- ✅ Active blog/community

**Warning Signals:**
- ⚠️ Hiring freeze or layoffs
- ⚠️ Long time since funding
- ⚠️ Founder departures
- ⚠️ Stale blog/product
- ⚠️ Negative reviews

## Analysis Frameworks

### **Competitive Threat Assessment**
Rate 1-5 on:
1. Product quality
2. Team strength
3. Funding adequacy
4. Market traction
5. Strategic positioning

Total > 20 = High threat
Total 15-20 = Medium threat
Total < 15 = Low threat

### **Investment Attractiveness**
Rate 1-5 on:
1. Market opportunity
2. Product/technology
3. Team
4. Traction
5. Timing

Total > 20 = Strong opportunity
Total 15-20 = Interesting, dig deeper
Total < 15 = Pass for now

## Important Notes

- Be objective - separate facts from opinions
- Show your work - explain reasoning
- Update regularly for key competitors
- Share insights with relevant portfolio companies
- Look for acquisition opportunities
- Identify talent to recruit
- Find partnership possibilities
- Learn from their successes and failures
- Consider them for LP deal flow (if not competitive)
- Track over time - momentum matters more than point-in-time

## After Analysis

**Share With:**
- Portfolio company CEOs (competitive intel)
- Fellow investors (deal flow)
- Board members (strategic context)

**Apply:**
- Update portfolio company strategy
- Inform investment decisions
- Adjust positioning
- Identify opportunities

**Monitor:**
- Set Google Alerts
- Follow on LinkedIn
- Check quarterly
- Update analysis when major events occur

---

## Example Workflow

```
User: /competitive-analysis Terra Security

You:
1. Search: "Terra Security funding agentic AI pentesting"
2. Find: Raised $8M April 2025, founded by security veterans
3. Product: Agentic AI for automated penetration testing
4. Analyze vs. Tenzai (portfolio company in same space)
5. Generate complete analysis
6. Save to: Research/Competitive_Analysis_Terra_Security_2025-11-12.md

Key findings:
- Well-funded ($8M recent), credible team
- Similar space to Tenzai (agentic security testing)
- Positioning: Enterprise-focused vs. developer-first
- Threat level: Medium (validates market, different approach)
- Recommendation: Monitor closely, consider differentiation strategy

Share with Tenzai team? Update their competitive landscape?
```
