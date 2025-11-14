# Due Diligence Data Room Setup

Automated data room creation for investment due diligence using MCP integration.

## Instructions

When the user runs `/due-diligence-data-room [company]`, create a comprehensive due diligence package by querying multiple data sources and generating structured reports.

## Usage

```
/due-diligence-data-room Babylon Labs
/due-diligence-data-room [Target Company Name]
/due-diligence-data-room [Portfolio Company] --refresh
```

## Automated Data Room Workflow

### Phase 1: Initial Setup (Without MCP - Manual)
**Time Required:** ~12 hours
- Manual research across websites, news, databases
- Manual file organization
- Manual report compilation

### Phase 1: With MCP Integration (Automated)
**Time Required:** ~1 hour (92% time savings)
- Automated data gathering from multiple sources
- Auto-generated structured reports
- Standardized file organization

## MCP Data Sources (Phase 1)

### Primary Research Sources
- **Web Search MCP**: Company news, funding, regulatory filings
- **Web Fetch MCP**: Company website, blog, documentation
- **GitHub MCP** (if available): Open source activity, technical assessment
- **LinkedIn MCP** (future): Team analysis, hiring velocity

### Enterprise Sources (Phase 2+)
- **HubSpot MCP**: Existing relationship data, deal history
- **Jira MCP**: Technical due diligence tickets, integration requirements
- **Dropbox MCP**: Access existing due diligence materials, templates
- **Microsoft 365 MCP**: Email threads, calendar meetings with company

## Data Room Structure

Create folder: `Research/Due_Diligence/[Company_Name]_[Date]/`

```
Due_Diligence/[Company_Name]_[Date]/
├── 00_Executive_Summary.md
├── 01_Company_Overview/
│   ├── Company_Profile.md
│   ├── Leadership_Team.md
│   ├── Organization_Chart.md (if available)
│   └── Corporate_Structure.md
├── 02_Market_Analysis/
│   ├── Market_Opportunity.md
│   ├── Competitive_Landscape.md
│   ├── Industry_Trends.md
│   └── TAM_SAM_SOM_Analysis.md
├── 03_Product_Technology/
│   ├── Product_Overview.md
│   ├── Technical_Architecture.md
│   ├── Technology_Stack.md
│   ├── IP_Patents.md
│   └── Roadmap_Analysis.md
├── 04_Business_Model/
│   ├── Revenue_Model.md
│   ├── Pricing_Strategy.md
│   ├── Unit_Economics.md
│   └── Go_To_Market.md
├── 05_Financials/
│   ├── Funding_History.md
│   ├── Investor_Analysis.md
│   ├── Financial_Projections.md (if available)
│   └── Burn_Rate_Analysis.md
├── 06_Customers_Traction/
│   ├── Customer_List.md
│   ├── Case_Studies.md
│   ├── Growth_Metrics.md
│   └── User_Feedback.md
├── 07_Legal_Compliance/
│   ├── Corporate_Documents.md
│   ├── Regulatory_Compliance.md
│   ├── SOC2_Security_Assessment.md
│   └── Risk_Assessment.md
├── 08_Strategic_Fit/
│   ├── Portfolio_Synergies.md
│   ├── Partnership_Opportunities.md
│   └── Integration_Analysis.md
├── 09_Red_Flags/
│   ├── Concerns_Identified.md
│   └── Diligence_Questions.md
└── 10_Investment_Recommendation/
    ├── Investment_Thesis.md
    ├── Valuation_Analysis.md
    ├── Terms_Structure.md
    └── Decision_Memo.md
```

## Execution Process

### Step 1: Company Identification (5 minutes)
```
MCP Query Workflow:
1. WebSearch: "[Company] funding news"
2. WebSearch: "[Company] team leadership"
3. WebFetch: [Company website]
4. WebFetch: [Company LinkedIn page]
5. HubSpot MCP (if Phase 2+): Check existing relationship data
```

**Output:** `01_Company_Overview/Company_Profile.md`

### Step 2: Market & Competitive Analysis (15 minutes)
```
MCP Query Workflow:
1. WebSearch: "[Industry] market size TAM SAM"
2. WebSearch: "[Company] competitors comparison"
3. Run /competitive-analysis for top 3 competitors
4. Query existing vault: [[Market Research]] related to industry
5. Dropbox MCP (if Phase 2+): Check for existing industry reports
```

**Output:**
- `02_Market_Analysis/Market_Opportunity.md`
- `02_Market_Analysis/Competitive_Landscape.md`
- Links to full competitive analysis reports

### Step 3: Product & Technology Assessment (10 minutes)
```
MCP Query Workflow:
1. WebFetch: [Company] /docs, /blog/engineering
2. WebSearch: "[Company] technical architecture"
3. GitHub MCP: Search for company repos, contribution activity
4. WebSearch: "[Company] technology stack"
5. Jira MCP (if Phase 2+): Search for integration tickets, technical issues
```

**Output:** `03_Product_Technology/` folder contents

### Step 4: Financial & Traction Analysis (10 minutes)
```
MCP Query Workflow:
1. WebSearch: "[Company] funding rounds Crunchbase"
2. WebSearch: "[Company] customers case studies"
3. WebFetch: [Company] /customers, /case-studies
4. WebSearch: "[Company] ARR revenue metrics"
5. HubSpot MCP (if Phase 2+): Pull deal data if existing relationship
```

**Output:**
- `05_Financials/Funding_History.md`
- `06_Customers_Traction/Customer_List.md`

### Step 5: Risk & Compliance Assessment (10 minutes)
```
MCP Query Workflow:
1. WebSearch: "[Company] SOC2 compliance security"
2. WebSearch: "[Company] regulatory requirements [industry]"
3. WebSearch: "[Company] lawsuit legal issues"
4. Query vault: [[SOC2 Assessment Template]]
5. Dropbox MCP (if Phase 2+): Access compliance questionnaire templates
```

**Output:** `07_Legal_Compliance/` folder contents

### Step 6: Strategic Analysis & Synthesis (10 minutes)
```
Analysis Tasks:
1. Compare to existing portfolio companies
2. Identify synergies and conflicts
3. Assess strategic fit with investment thesis
4. Generate SWOT analysis
5. Document red flags and concerns
```

**Output:**
- `08_Strategic_Fit/Portfolio_Synergies.md`
- `09_Red_Flags/Concerns_Identified.md`

### Step 7: Investment Recommendation (10 minutes)
```
Synthesis Tasks:
1. Generate executive summary from all sections
2. Create investment thesis document
3. Draft valuation framework
4. Outline recommended terms
5. Compile diligence questions for management meeting
```

**Output:**
- `00_Executive_Summary.md`
- `10_Investment_Recommendation/Investment_Thesis.md`
- `10_Investment_Recommendation/Decision_Memo.md`

## Output Template: Executive Summary

```markdown
# Due Diligence Executive Summary: [Company Name]
**Date:** [YYYY-MM-DD]
**Analyst:** [Your name]
**Deal Source:** [How you learned about company]
**Stage:** [Pre-seed / Seed / Series A / B / C]

---

## 🎯 INVESTMENT SNAPSHOT

**One-Line Description:**
[What they do in one sentence]

**Investment Recommendation:**
- 🟢 **STRONG PASS** - Proceed to term sheet
- 🟡 **CONDITIONAL** - Address concerns, then decide
- 🔴 **PASS** - Does not meet criteria

**Confidence Level:** [High / Medium / Low]

**Recommended Action:**
[Specific next steps]

---

## 📊 KEY METRICS AT A GLANCE

| Metric | Value | Assessment |
|--------|-------|------------|
| **Funding Stage** | [Round] | [Status] |
| **Total Raised** | $[X]M | [vs. Burn rate] |
| **Valuation** | $[X]M | [Fair/High/Low] |
| **ARR** | $[X]M | [Growth rate] |
| **Customers** | [X] | [Quality/Stage] |
| **Team Size** | [X] | [Efficiency] |
| **Burn Rate** | $[X]M/month | [Runway: X months] |
| **Growth Rate** | [X]% MoM | [Trend] |

---

## ✅ KEY STRENGTHS

1. **[Strength 1]**
   - Evidence: [Data point]
   - Impact: [Why it matters]

2. **[Strength 2]**
   - Evidence: [Data point]
   - Impact: [Why it matters]

3. **[Strength 3]**
   - Evidence: [Data point]
   - Impact: [Why it matters]

---

## ⚠️ KEY CONCERNS

1. **[Concern 1]**
   - Evidence: [Data point]
   - Risk Level: [High/Medium/Low]
   - Mitigation: [How to address]

2. **[Concern 2]**
   - Evidence: [Data point]
   - Risk Level: [High/Medium/Low]
   - Mitigation: [How to address]

---

## 💰 INVESTMENT THESIS

**Why This Company:**
[2-3 paragraph thesis for why this is compelling]

**Why Now:**
[Timing factors - market inflection, team maturity, traction]

**Why Us:**
[Value-add beyond capital, strategic fit with portfolio]

**Risk/Reward:**
[Expected return profile, downside protection, exit scenarios]

---

## 🎯 STRATEGIC FIT

**Thesis Alignment:**
- Investment Thesis: [[Your Thesis Name]]
- Fit Score: [High/Medium/Low]
- Rationale: [Why it fits]

**Portfolio Synergies:**
- Synergy with [[Portfolio Company 1]]: [Description]
- Synergy with [[Portfolio Company 2]]: [Description]

**Potential Conflicts:**
- [Any competitive concerns with portfolio]

---

## 📋 DUE DILIGENCE STATUS

**Completed:**
- [x] Market research
- [x] Competitive analysis
- [x] Public information review
- [x] Financial analysis
- [x] Team assessment

**Pending:**
- [ ] Management meetings
- [ ] Reference calls (customers)
- [ ] Reference calls (investors)
- [ ] Deep technical diligence
- [ ] Legal review
- [ ] Financial audit

**Critical Questions for Management:**
1. [Question 1]
2. [Question 2]
3. [Question 3]

---

## 💵 PROPOSED TERMS (Preliminary)

**Investment Size:** $[X]M
**Valuation:** $[X]M pre / $[X]M post
**Ownership:** [X]%
**Structure:** [Equity / SAFE / Convertible Note]

**Key Terms:**
- [Term 1]
- [Term 2]
- [Term 3]

**Contingencies:**
- [Contingency 1]
- [Contingency 2]

---

## 🚀 NEXT STEPS

**This Week:**
- [ ] [Action 1]
- [ ] [Action 2]

**This Month:**
- [ ] [Action 1]
- [ ] [Action 2]

**Timeline to Decision:**
- Management meeting: [Date]
- Diligence completion: [Date]
- Partner meeting: [Date]
- Term sheet: [Date]

---

## 📁 SUPPORTING DOCUMENTS

**Generated Reports:**
- [Company Overview](01_Company_Overview/Company_Profile.md)
- [Market Analysis](02_Market_Analysis/Market_Opportunity.md)
- [Competitive Landscape](02_Market_Analysis/Competitive_Landscape.md)
- [Financial Analysis](05_Financials/Funding_History.md)
- [Full Investment Memo](10_Investment_Recommendation/Investment_Thesis.md)

**External Sources:**
- Company website: [URL]
- Crunchbase: [URL]
- LinkedIn: [URL]
- Press coverage: [Links]

---

*Due diligence data room created: [Date]*
*Location: Research/Due_Diligence/[Company]_[Date]/*
*Next review: [30/60/90 days]*
```

## Time Savings Analysis

### Traditional Due Diligence (Manual)
- Company research: 3 hours
- Market analysis: 2 hours
- Competitive research: 3 hours (per competitor × 3 = 9 hours)
- Financial research: 2 hours
- Document compilation: 2 hours
- Report writing: 4 hours
**Total: ~22 hours**

### With MCP Integration (Automated)
- Automated data gathering: 30 minutes
- Automated report generation: 30 minutes
- Human review and synthesis: 2 hours
**Total: ~3 hours**

**Time Savings: 86% (19 hours saved per deal)**

## ROI Calculation (Phase 1 - 3 Pilot Users)

**Assumptions:**
- 2 deals per month requiring due diligence
- 19 hours saved per deal
- Average hourly cost: $150 (senior analyst/partner time)

**Monthly Value:**
- 2 deals × 19 hours × $150 = $5,700/month
- Annual value: $68,400

**Phase 1 Investment:** $6,000 (30-day pilot)

**ROI:** 1,040% in Year 1 (11.4× return)
**Payback Period:** 1.05 months

## MCP Security Configuration

### Phase 1: Read-Only Public Data
```
MCP Servers Enabled:
- WebSearch: Public search (no authentication)
- WebFetch: Public web content (no authentication)
- GitHub: Public repos only (optional token for rate limits)

Data Classification: #public
SOC2 Scope: Out of scope (pilot/R&D)
Risk Level: LOW
```

### Phase 2: Enterprise Integration
```
MCP Servers Enabled:
- HubSpot MCP: OAuth 2.0, read-only scopes
  - Scopes: crm.objects.contacts.read, crm.objects.deals.read
- Dropbox MCP: OAuth 2.0, read-only scopes
  - Scopes: files.metadata.read, files.content.read
- Jira MCP: OAuth 2.0, read-only scopes
  - Scopes: read:jira-work
- Microsoft 365 MCP: OAuth 2.0, read-only scopes
  - Scopes: Mail.Read, Calendars.Read

Data Classification: #internal, #confidential
SOC2 Scope: In scope (requires controls)
Risk Level: MEDIUM (mitigated by read-only + OAuth)
```

## Quality Assurance Checklist

**Before Finalizing Data Room:**
- [ ] All company information verified from authoritative sources
- [ ] Competitive analysis includes top 3 competitors minimum
- [ ] Financial data cross-referenced (Crunchbase + news + company)
- [ ] Red flags documented with evidence
- [ ] Strategic fit assessment completed
- [ ] Investment recommendation clearly stated
- [ ] Next steps and timeline defined
- [ ] All source URLs documented
- [ ] Data classification tags applied (#public, #internal, #confidential)
- [ ] File naming convention followed: `Company_Name_Section_Date.md`

## Integration with Other Workflows

**Combine With:**
- `/competitive-analysis [competitor]` - Deep dive on each competitor
- `/market-research [industry]` - Broader market context
- `/find-connections [company]` - Identify relationship paths
- Portfolio tracking updates if existing relationship

**Feeds Into:**
- Partner meeting materials
- Investment committee memos
- Portfolio company strategy sessions
- LP reporting and updates

## Example Usage

```
User: /due-diligence-data-room Stripe

You:
1. Create folder: Research/Due_Diligence/Stripe_2025-11-13/
2. Execute MCP queries across all data sources
3. Generate 10 section folders with markdown files
4. Compile executive summary with investment recommendation
5. Identify 3 top competitors and link to competitive analyses
6. Document 8 key strengths, 5 concerns
7. Calculate preliminary valuation and proposed terms
8. Output critical questions for management meeting

Data room created in 58 minutes.
Traditional approach would have taken 22 hours.
Time savings: 95% (21 hours saved)

Ready for partner review. Next step: Schedule management meeting?
```

---

## Important Notes

- **Objectivity**: Maintain balanced view - document both strengths and concerns
- **Source Quality**: Prioritize authoritative sources (company, regulators, known investors)
- **Confidentiality**: Mark sensitive information appropriately (#confidential)
- **Timeliness**: Note data freshness - due diligence decays over time
- **Follow-up**: Schedule refresh reviews (30/60/90 days)
- **Collaboration**: Share with partners, invite feedback and questions
- **Action-Oriented**: Clear next steps, assigned owners, deadlines

## Phase 1 → Phase 2 Upgrade Path

**Phase 1 Capabilities (Public Data Only):**
- Web research automation
- Competitive analysis generation
- Market sizing and trends
- Public company information
- Investment thesis development

**Phase 2 Additions (Enterprise Data):**
- HubSpot: Existing relationship history, deal notes
- Jira: Internal technical diligence tickets, integration requirements
- Dropbox: Access to existing due diligence materials, templates, legal docs
- Microsoft 365: Email context, meeting history with company
- Enhanced accuracy from proprietary data
- Faster synthesis using internal knowledge base

**When to Upgrade:** After Phase 1 success (validated time savings, user satisfaction, 3 pilot users showing >80% time reduction)
