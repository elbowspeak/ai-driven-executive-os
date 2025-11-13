# Investment Memo

Create structured investment analysis documents for evaluating opportunities.

## Instructions

When the user runs `/investment-memo [company]`, generate a comprehensive investment analysis memo.

## Usage

```
/investment-memo Acme AI Security
/investment-memo [Company Name]
```

## Memo Purpose

Investment memos serve multiple purposes:
- **Decision tool:** Structured thinking for investment decisions
- **Team alignment:** Share analysis with co-investors or advisors
- **Documentation:** Record thesis for future reference
- **LP communication:** Explain investment rationale
- **Learning:** Track what you got right/wrong over time

## Analysis Process

### 1. **Gather Intelligence**

**Company Research:**
- Run `/competitive-analysis [company]` for deep-dive
- Run `/market-map [category]` for landscape context
- Run `/research [market]` for market dynamics
- Search vault for any existing notes

**Network Intelligence:**
- Run `/find-connections [company]` for warm intros
- Identify who you know who knows them
- Find customers, competitors, investors to reference

**Public Information:**
- Website, blog, documentation
- LinkedIn (team, hiring, growth signals)
- News, press releases, podcasts
- GitHub (if technical company)
- Crunchbase/PitchBook for funding

### 2. **Conduct Analysis**

**Investment Criteria:**
- Market opportunity (TAM, timing, trends)
- Product/technology (defensibility, 10x better?)
- Team (can they execute?)
- Traction (evidence of product-market fit)
- Business model (unit economics, scalability)
- Competition (differentiation, positioning)
- Valuation (fair given stage and traction?)

**Risk Assessment:**
- Execution risks
- Market risks
- Technical risks
- Competitive risks
- Team risks

### 3. **Form Conviction**

**Investment Thesis:**
- Why this, why now, why this team?
- What has to be true for this to work?
- What's your edge or insight?
- How does this fit your portfolio strategy?

## Output Format

Create file: `Investments/Investment_Memo_[Company]_[Date].md`

```markdown
# Investment Memo: [Company Name]
**Date:** [YYYY-MM-DD]
**Analyst:** [Your name]
**Opportunity:** [Seed | Series A | Series B | etc.]
**Amount Considered:** $X
**Pre-Money Valuation:** $Y
**Lead/Follow:** Lead | Follow | Solo

---

## 🎯 EXECUTIVE SUMMARY

**Investment Recommendation:** ✅ Invest | ⚠️ Maybe | ❌ Pass

**One-Line Pitch:**
[Company's pitch in one sentence]

**Investment Thesis:**
[2-3 sentences: Why this is a compelling investment opportunity]

**Key Strengths:**
- [Strength 1]
- [Strength 2]
- [Strength 3]

**Key Risks:**
- [Risk 1]
- [Risk 2]
- [Risk 3]

**Bottom Line:**
[Your final assessment and recommendation with reasoning]

---

## 🏢 COMPANY OVERVIEW

**Basics:**
- **Founded:** [Year]
- **Headquarters:** [Location]
- **Website:** [URL]
- **Stage:** [Seed/Series A/etc.]

**What They Do:**
[3-4 paragraph description of the company, product, and vision]

**Mission/Vision:**
[Their stated mission and long-term vision]

**Current Status:**
- Team size: ~X employees
- Product stage: [Beta | GA | Enterprise-ready]
- Revenue stage: [Pre-revenue | Early revenue | Scaling]
- Key metrics: [If known]

---

## 📊 MARKET OPPORTUNITY

**Market Definition:**
[What market are they playing in? How do they define it?]

**Market Size:**
- TAM (Total Addressable Market): $X billion
- SAM (Serviceable Available Market): $Y billion
- SOM (Serviceable Obtainable Market): $Z million
- Sources: [How calculated/estimated]

**Market Dynamics:**
- Growth rate: X% CAGR
- Stage: Emerging | Growing | Mature
- Trends: [Key trends driving/affecting market]

**Market Timing:**
[Why is now the right time for this company/solution?]

**Catalysts:**
- [Technology catalyst - e.g., "AI making X possible"]
- [Market catalyst - e.g., "Regulatory change requiring X"]
- [Behavior catalyst - e.g., "Remote work driving demand for X"]

**Market Risks:**
- [Risk 1: e.g., "Market may be smaller than estimated"]
- [Risk 2: e.g., "Adoption may be slower than expected"]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 🎯 PRODUCT & TECHNOLOGY

**Product Description:**
[What have they built? What does it do?]

**Core Value Proposition:**
[What problem does it solve? Why do customers care?]

**Key Features:**
1. [Feature 1] - [Why it matters]
2. [Feature 2] - [Why it matters]
3. [Feature 3] - [Why it matters]

**Technology Differentiation:**
[What's technically unique or superior about their approach?]

**10x Better Test:**
[Is this 10x better than alternatives, or incrementally better?]
- Assessment: [10x | 3-5x | Incremental]
- Reasoning: [Why]

**Product-Market Fit Evidence:**
- [Evidence 1: e.g., "NPS of 60+"]
- [Evidence 2: e.g., "90% retention"]
- [Evidence 3: e.g., "Customers expanding usage 3x in year 1"]

**Product Maturity:**
- Stage: [MVP | Beta | GA | Mature]
- Quality: [Based on demos, reviews, customer feedback]
- Roadmap: [What's coming, based on public info or convos]

**Defensibility/Moat:**
- Technical moat: [Network effects? Data advantages? Algorithms?]
- Product moat: [Design? UX? Integration depth?]
- Assessment: [Strong | Building | Weak]

**Technology Risks:**
- [Risk 1: e.g., "Dependent on LLM capabilities improving"]
- [Risk 2: e.g., "Open source alternative could emerge"]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 👥 TEAM

**Founders:**

### [Founder 1 Name] - [Title]
- **Background:** [Previous companies, roles, education]
- **Expertise:** [Technical? Domain? Sales? Ops?]
- **Track Record:** [Previous exits? Notable achievements?]
- **Strengths:** [What they bring]
- **Concerns:** [Any gaps or risks]

### [Founder 2 Name] - [Title]
[Same format]

**Founder Dynamics:**
- How long have they worked together?
- Complementary skills?
- Equity split (any concerns)?
- Reference checks: [What you heard]

**Key Hires:**
- [Role]: [Name] - [Background, why notable]
- [Role]: [Name] - [Background, why notable]

**Team Assessment:**
- Technical depth: [Rating + reasoning]
- Domain expertise: [Rating + reasoning]
- Go-to-market strength: [Rating + reasoning]
- Operational maturity: [Rating + reasoning]
- Coachability: [Based on conversations]

**Team Gaps:**
- [Gap 1: e.g., "Need enterprise sales leader"]
- [Gap 2: e.g., "Engineering team needs depth in X"]
- Plan to address: [Their plan]

**Culture/Values:**
[Based on website, conversations, Glassdoor if available]

**Team Risks:**
- [Risk 1: e.g., "First-time founders, may struggle with scale"]
- [Risk 2: e.g., "Key technical hire might be flight risk"]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 📈 TRACTION & METRICS

**Customer Base:**
- Total customers: X
- Notable customers: [List with logos/names]
- Customer segments: [SMB? Mid-market? Enterprise?]
- Geographic distribution: [Where are customers?]

**Growth Metrics:**
- MRR/ARR: $X (if known)
- Growth rate: X% MoM or YoY
- Customer acquisition: X new customers per month
- Pipeline: $X in pipeline

**Engagement Metrics:**
- Daily/Monthly Active Users: X
- Usage frequency: [How often do customers use it?]
- Feature adoption: [Which features getting traction?]
- NPS or satisfaction: X

**Retention/Churn:**
- Logo retention: X%
- Net revenue retention: X%
- Churn rate: X% monthly
- Cohort analysis: [Improving or stable?]

**Unit Economics:**
- CAC (Customer Acquisition Cost): $X
- LTV (Lifetime Value): $Y
- LTV:CAC ratio: [Ratio]
- Payback period: X months
- Assessment: [Healthy? Improving? Concerning?]

**Sales Efficiency:**
- Sales cycle: X days/weeks
- Win rate: X%
- Average deal size: $X
- Expansion revenue: X% of new revenue

**Traction Quality:**
[Are these real customers with real budgets paying real money? Or friendly beta users?]

**Traction Risks:**
- [Risk 1: e.g., "Most revenue from 2 large customers"]
- [Risk 2: e.g., "High churn in early cohorts"]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 💰 BUSINESS MODEL & FINANCIALS

**Revenue Model:**
- Pricing: [Per seat? Usage-based? Enterprise licensing?]
- Price points: [If known publicly or shared]
- Pricing strategy: [Land-and-expand? Top-down? Bottom-up?]

**Go-to-Market:**
- Sales motion: [Product-led? Sales-led? Hybrid?]
- Sales team: X people
- Marketing approach: [Content? Paid? Community?]
- Partners/channels: [Any channel strategy?]

**Financial Overview:**
- Revenue (current): $X ARR/MRR
- Revenue (12 months ago): $Y
- Burn rate: $X/month
- Runway: X months
- Path to profitability: [Their plan]

**Funding History:**
| Round | Date | Amount | Valuation | Lead Investor |
|-------|------|--------|-----------|---------------|
| Seed | [Date] | $X | $Y | [VC] |
| [Round] | [Date] | $X | $Y | [VC] |

**Current Round:**
- Raising: $X million
- Pre-money valuation: $Y million
- Terms: [Any unusual terms? Participating preferred?]
- Syndicate: [Who else is investing?]

**Use of Funds:**
1. [Use 1] - $X allocation (e.g., "Engineering hiring - $2M")
2. [Use 2] - $Y allocation
3. [Use 3] - $Z allocation

**Capital Efficiency:**
[How much have they accomplished per dollar raised?]

**Financial Projections:**
[Their projections for next 12-24 months]
- Revenue: $X → $Y
- Team: X → Y people
- Key milestones: [What they'll achieve]

**Realistic Assessment:**
[Do you believe their projections? What's more likely?]

**Financial Risks:**
- [Risk 1: e.g., "Will need another round in 12-15 months"]
- [Risk 2: e.g., "Burn rate high relative to traction"]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 🥊 COMPETITIVE LANDSCAPE

**Direct Competitors:**

1. **[Competitor 1]**
   - Strength: [What they do well]
   - Weakness: [Where they fall short]
   - Differentiation: [How target company compares]

2. **[Competitor 2]**
   [Same format]

3. **[Competitor 3]**
   [Same format]

**Indirect Competitors:**
- [Alternative 1: e.g., "In-house solutions"]
- [Alternative 2: e.g., "Older category solutions"]
- [Alternative 3: e.g., "Do-nothing option"]

**Competitive Positioning:**
[How does company position against competition?]

**Sustainable Differentiation:**
[What's defensible long-term vs. temporarily ahead?]

**Competitive Dynamics:**
- Market structure: [Winner-take-all? Room for multiple winners?]
- Switching costs: [High or low?]
- Network effects: [Present or not?]

**Competitive Threats:**
- [Threat 1: e.g., "Large incumbent could build this feature"]
- [Threat 2: e.g., "Well-funded competitor X moving upmarket"]

**Competitive Advantages:**
- [Advantage 1]
- [Advantage 2]
- [Advantage 3]

**Verdict:** 🔥 Exceptional | ⭐ Strong | ✓ Adequate | ⚠️ Weak

---

## 🤝 PORTFOLIO FIT

**Strategic Fit:**
[How does this fit your investment thesis and portfolio strategy?]

**Portfolio Synergies:**
- **[[Portfolio Company 1]]:** [Potential synergy]
- **[[Portfolio Company 2]]:** [Potential synergy]
- Opportunities: [Customer intros? Technical collaboration? Co-marketing?]

**Conflicts:**
- [Any portfolio conflicts or competition?]
- [How would you manage if any?]

**Value-Add Potential:**
- [How can you specifically help this company?]
- [What's your unique edge as investor here?]

**Portfolio Construction:**
[Does this balance your portfolio? Add needed exposure? Create concentration risk?]

**Verdict:** 🔥 Perfect fit | ⭐ Strong fit | ✓ Reasonable fit | ⚠️ Questionable fit

---

## ⚖️ INVESTMENT TERMS

**Proposed Terms:**
- Security type: [Preferred Stock | Convertible Note | SAFE]
- Amount: $X
- Pre-money valuation: $Y million
- Post-money valuation: $Z million
- Ownership: X%
- Price per share: $X
- Liquidation preference: [1x non-participating? Other?]
- Board seat: Yes/No
- Pro-rata rights: Yes/No
- Information rights: Yes/No

**Valuation Analysis:**
- Comparable companies: [Similar valuations at this stage?]
- Stage-appropriate: [Fair for seed/A/B?]
- Traction justification: [Does traction justify valuation?]
- Market conditions: [How does current market affect this?]

**Terms Assessment:**
- **Valuation:** Fair | High | Low
- **Reasoning:** [Why]
- **Structure:** Standard | Investor-friendly | Founder-friendly
- **Concerns:** [Any problematic terms?]

**Deal Structure:**
- Leading: Yes/No
- Co-investors: [Who else is in?]
- Reserve for follow-on: [Plan for future rounds?]

**Verdict:** ✅ Good deal | ⚠️ Acceptable | ❌ Poor terms

---

## 🎲 RISK ANALYSIS

### Market Risks
**[Risk 1: Market size]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

**[Risk 2: Adoption speed]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

### Execution Risks
**[Risk 1: e.g., Scaling team]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

### Technical Risks
**[Risk 1: e.g., Technical feasibility]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

### Competitive Risks
**[Risk 1: e.g., Incumbent response]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

### Financial Risks
**[Risk 1: e.g., Need for additional capital]**
- Likelihood: High | Medium | Low
- Impact: High | Medium | Low
- Mitigation: [How to mitigate or monitor]

**Risk Summary:**
- Overall risk level: High | Medium | Low
- Acceptable given potential return: Yes | No | Maybe
- Deal-breakers: [Any showstopper risks?]

---

## 🎯 INVESTMENT THESIS

**Core Thesis:**
[3-5 paragraphs articulating why this is a compelling investment]

**Why This:**
- [Reason 1: Market opportunity]
- [Reason 2: Unique approach]
- [Reason 3: Evidence of traction]

**Why Now:**
- [Reason 1: Market timing]
- [Reason 2: Technology enablement]
- [Reason 3: Competitive window]

**Why This Team:**
- [Reason 1: Domain expertise]
- [Reason 2: Execution track record]
- [Reason 3: Coachable and ambitious]

**What Has to Be True:**
For this to be a great investment, the following must be true:
1. [Assumption 1: e.g., "Enterprise will adopt agentic AI in next 2-3 years"]
2. [Assumption 2: e.g., "This team can recruit A+ engineering talent"]
3. [Assumption 3: e.g., "Unit economics improve with scale"]

**Your Edge:**
[What's your insight that others might miss? Why are you positioned to win this deal or help this company?]

**Base, Upside, Downside Cases:**

**Base Case (50% probability):**
- Outcome: [Exit value/multiple]
- Return: X return
- Timeline: Y years
- Reasoning: [Why this is likely]

**Upside Case (25% probability):**
- Outcome: [Exit value/multiple]
- Return: X return
- Timeline: Y years
- Reasoning: [What has to go right]

**Downside Case (25% probability):**
- Outcome: [Partial loss, total loss, breakeven]
- Return: X return
- Reasoning: [What goes wrong]

**Expected Value:**
[Probability-weighted return]

**Portfolio Impact:**
[How would this investment affect your overall portfolio?]

---

## 📋 DUE DILIGENCE CHECKLIST

**Completed:**
- [✅] Company research and analysis
- [✅] Market landscape review
- [✅] Competitive analysis
- [✅] Public information review
- [✅] Financial model review

**To Complete:**
- [ ] Founder reference checks (target: 3-5)
- [ ] Customer calls (target: 2-3)
- [ ] Technical diligence (if applicable)
- [ ] Legal/cap table review
- [ ] Background checks (if appropriate)
- [ ] [Custom diligence item]

**Questions to Answer:**
1. [Key question 1]
2. [Key question 2]
3. [Key question 3]

**People to Talk To:**
- [ ] [[Contact 1]] - [Why valuable, what to ask]
- [ ] [[Contact 2]] - [Why valuable, what to ask]
- [ ] [Expert in space] - [Topic to discuss]

---

## 📝 DECISION & NEXT STEPS

**Investment Decision:** ✅ YES | ⚠️ MAYBE | ❌ PASS

**Reasoning:**
[Final reasoning for decision]

**Confidence Level:**
- High (80%+) | Medium (50-80%) | Low (<50%)
- [Why this confidence level?]

**If YES:**

**Immediate Actions:**
1. [ ] [Action 1: e.g., "Submit term sheet by [date]"]
2. [ ] [Action 2: e.g., "Complete reference calls"]
3. [ ] [Action 3: e.g., "Finalize investment committee memo"]

**Pre-Close:**
- [ ] Legal diligence
- [ ] Final terms negotiation
- [ ] IC approval (if needed)
- [ ] Contracts signed
- [ ] Wire funds

**Post-Close:**
- [ ] Board seat logistics (if applicable)
- [ ] Portfolio company onboarding
- [ ] Intro to portfolio/network
- [ ] Set up regular check-ins
- [ ] Connect with [[Portfolio Company X]] for [synergy]

**If MAYBE:**

**What Would Change Decision:**
1. [Condition 1]
2. [Condition 2]

**Timeline:**
- Decision by: [Date]
- Contingent on: [What needs to happen]

**If PASS:**

**Reasons:**
1. [Reason 1]
2. [Reason 2]

**Keep Warm:**
- [ ] Stay in touch with founders
- [ ] Revisit at next milestone: [What milestone?]
- [ ] Potentially invest in future round if [condition]

---

## 🔗 RELATED DOCUMENTS

**Vault Links:**
- [[Market Map: [Category]]] - Landscape analysis
- [[Competitive Analysis: [Competitor]]] - Key competitor
- [[Contact: [Founder Name]]] - Founder notes
- [[Portfolio Company X]] - Potential synergy

**External Links:**
- [Pitch deck] (if shared)
- [Data room] (if provided)
- [Company website]
- [Crunchbase/PitchBook profile]

**Notes:**
- Meeting notes: [Links to conversations]
- Email correspondence: [Key threads]
- Diligence documents: [Financials, contracts, etc.]

---

## 💭 ANALYST COMMENTARY

**Gut Feel:**
[Your intuition about this investment - trust your pattern recognition]

**What Excites You:**
[What makes this compelling?]

**What Concerns You:**
[What keeps you up at night?]

**Comparison to Other Investments:**
[How does this compare to best/worst investments you've made?]

**Learning Opportunities:**
[What will you learn from this investment regardless of outcome?]

**Review Date:**
[When to revisit this memo - 6 months? 12 months? To track what you got right/wrong]

---

*Investment memo completed: [Date]*
*Decision due by: [Date]*
*Next steps: [Summary]*
*Save to: Investments/Investment_Memo_[Company]_[Date].md*
```

## Analysis Framework

### **Scoring System** (optional but helpful)

Rate each category 1-5:
- **Market:** Size, growth, timing
- **Product:** Differentiation, PMF, defensibility
- **Team:** Founders, hires, culture
- **Traction:** Metrics, growth, quality
- **Business Model:** Economics, scalability
- **Competition:** Positioning, moat
- **Fit:** Portfolio, thesis, synergies
- **Terms:** Valuation, structure

**Total Score:**
- 35-40: Exceptional, must-do deal
- 30-34: Strong, should pursue
- 25-29: Interesting, needs more work
- 20-24: Weak, likely pass
- <20: Pass

### **Key Questions Framework**

For every investment, answer:
1. **Why will this be huge?** (Market opportunity)
2. **Why will they win?** (Competitive advantage)
3. **Why this team?** (Founder-market fit)
4. **Why now?** (Timing)
5. **Why us?** (Your edge as investor)

If you can't answer all five confidently, dig deeper or pass.

## Important Notes

- **Be honest:** These memos are for you—don't convince yourself
- **Show your work:** Explain reasoning, not just conclusions
- **Note assumptions:** Make them explicit so you can test later
- **Track record:** Review old memos to see what you got right/wrong
- **Update:** Living documents—update as you learn more
- **Share selectively:** Use for IC, co-investors, but protect confidentiality
- **Learn from passes:** Document passed deals to review if they succeed
- **Reference later:** Use these to understand portfolio over time

## Integration with Commands

**Before writing memo:**
```bash
/research [market category]
/market-map [category]
/competitive-analysis [company]
/competitive-analysis [main competitor]
/find-connections [company]
```

**During diligence:**
```bash
/prep-meeting [founder name]
/update-contact [founder name] (after meetings)
```

**After investment:**
- Move from `Investments/` to `Biz Dev/Portfolio Companies/[Company]/`
- Reference memo in board meetings
- Update with actual vs. projected performance
- Learn from what changed

## Example Workflow

```
User: /investment-memo Acme AI Security

You:
1. Check if you've already analyzed them (/competitive-analysis)
2. Run /market-map if market not recently mapped
3. Run /find-connections to identify network intelligence
4. Gather all public information
5. Generate comprehensive memo
6. Save to: Investments/Investment_Memo_Acme_AI_Security_2025-11-12.md

Memo includes:
- Full analysis across all dimensions
- Honest risk assessment
- Clear recommendation (yes/maybe/pass)
- Specific next steps
- Links to related vault documents

Questions surfaced for diligence:
- "Need to validate customer retention claims - talk to 2 customers"
- "Technical feasibility unclear - need CTO conversation"
- "Team gaps in enterprise sales - how will they address?"

Share memo with [co-investor] for feedback?
Schedule founder reference calls?
```

---

*Investment memos are living documents—update as you learn more*
*Track your predictions vs. outcomes to improve judgment over time*
