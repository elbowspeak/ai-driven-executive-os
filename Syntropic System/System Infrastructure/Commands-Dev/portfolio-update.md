# Portfolio Update

Generate a comprehensive update on all Encoded Portfolio companies.

## Instructions

When the user runs `/portfolio-update`, provide a complete portfolio health check:

## 1. Scan All Portfolio Companies

Check the following companies in `Biz Dev/Encoded Portfolio Companies/`:
- ConfigHub
- DataFlint
- Datum
- IPXO
- Neurometric (neurometric)
- Tenzai
- XORQ

## 2. For Each Company, Analyze:

**File Activity:**
- When were files last modified? (check all files in company folder)
- Which files exist? (Overview, Summary, Analysis, Playbook, etc.)
- Are any files missing from the standard set?

**Public Activity Research:**
- Company blog/website updates (if URLs are in the files)
- Founder LinkedIn activity (if links available)
- GitHub activity (for open-source companies: Datum, ConfigHub)
- Recent news mentions

**Content Analysis:**
- Review recent notes and updates
- Identify key themes or concerns
- Note any action items or follow-ups mentioned

## 3. Generate Report

Present the update in this format:

```markdown
# Encoded Portfolio Update - [Current Date]

## 📊 Executive Summary
- X companies updated in last 30 days
- Y companies need attention
- Z key insights across portfolio

---

## 🟢 Recently Active (Updated < 30 days)

### Company Name
**Last Update:** [Date]
**Recent Activity:**
- [Summary of changes]
- [Key insights]

**Public Updates Found:**
- [Blog posts, news, GitHub activity]

**Status:** ✅ Healthy | ⚠️ Needs attention | 🔴 Requires immediate action

**Suggested Next Actions:**
- [ ] Action item 1
- [ ] Action item 2

---

## 🟡 Needs Attention (30-60 days since update)

### Company Name
**Last Update:** [Date]
**Concern:** [Why flagged]
**Recommended Action:** [Specific suggestion]

---

## 🔴 Stale (> 60 days since update)

### Company Name
**Last Update:** [Date]
**Priority Actions:**
- [ ] Schedule check-in call
- [ ] Review board materials
- [ ] Update company files

---

## 🔍 Cross-Portfolio Insights

**Themes:**
- [Common patterns across companies]
- [Market trends affecting multiple companies]
- [Potential synergies or collaboration opportunities]

**Competitive Intelligence:**
- [Competitive moves in related markets]
- [Funding announcements in similar spaces]

**Strategic Opportunities:**
- [Potential introductions between companies]
- [Shared resources or knowledge transfer]
- [Co-marketing or partnership opportunities]

---

## 📋 Action Items Summary

**This Week:**
- [ ] High priority action 1
- [ ] High priority action 2

**This Month:**
- [ ] Medium priority action 1
- [ ] Medium priority action 2

**Upcoming Board Meetings:**
- [List any upcoming board meetings if mentioned in files]

---

## 📈 Portfolio Health Score

- **Active & Healthy:** X companies
- **Monitoring:** Y companies
- **Needs Intervention:** Z companies

---

## 🔄 Next Portfolio Review
Recommended: [Date 30 days from now]
```

## 4. Public Information Gathering

For each company, attempt to find:

**Company Blogs:**
- ConfigHub: Look for Brian Grant's technical posts
- Neurometric: Check Substack for research updates
- XORQ: Search for content-addressable computation posts
- DataFlint: Look for Spark optimization content
- Others: Search for company blog posts

**GitHub Activity:**
- Datum: Check AGPL v3.0 repos
- ConfigHub: Look for declarative config projects
- Others: Search if open-source components exist

**News & Funding:**
- Search for recent funding announcements
- Industry news mentions
- Partnership announcements
- Customer wins or case studies

## 5. Intelligent Recommendations

Based on the analysis:
- **Prioritization**: Which companies need immediate attention?
- **Synergies**: Can Company A help Company B?
- **Risk Flags**: Any concerning patterns?
- **Opportunities**: New markets, partnerships, or customers to explore?

## Important Notes

- Use Glob to find all portfolio company folders and files
- Use Read to check file contents and modification dates
- Use Grep to search for specific updates or themes
- Use WebFetch to check company blogs/websites for new content (if URLs available)
- Be concise but comprehensive
- Focus on actionable insights
- Flag anything that seems concerning or urgent
- Suggest specific next actions, not generic advice

## Example Usage

```
User: /portfolio-update
```

You generate a complete report showing:
- DataFlint: Active (updated 3 days ago, new customer case study added)
- XORQ: Needs attention (45 days since update, board meeting coming up)
- Tenzai: Stale (73 days, competitive activity detected - Terra Security raised $8M)
- Etc.
