# Project Status

Quick status report for consulting projects.

## Instructions

When the user runs `/project-status [client/project]`, generate a comprehensive status report.

## Usage

```
/project-status Xtract
/project-status Syntropic
/project-status all  (for all active projects)
```

## Analysis Process

### 1. **Find Project**
- Search in `Consulting/` folder for:
  - Folder matching name
  - File matching name
  - Similar/partial matches

### 2. **Gather Information**
- Read project files
- Check YAML frontmatter for:
  - Status, revenue, dates
  - Deliverables, milestones
  - Key contacts
- Scan for recent updates (modification dates)
- Look for time tracking or billing notes

### 3. **Assess Health**
Based on:
- Last update date
- Deliverable status
- Payment status
- Communication frequency

## Output Format

```markdown
# Project Status: [Client/Project Name]
**Report Date:** [Date]

---

## 📊 PROJECT OVERVIEW

**Status:** ✅ Active | ⚠️ Stalled | 🔴 Blocked | ✓ Completed
**Client:** [[Client Name]]
**Revenue:** $X/month or $X total
**Start Date:** [Date]
**Last Updated:** [X days ago]

**Health Score:** 🟢 Healthy | 🟡 Needs Attention | 🔴 At Risk

---

## 🎯 CURRENT DELIVERABLES

### In Progress
- [ ] [Deliverable 1] - Due: [Date]
  - Status: [%complete or description]
  - Blocker: [if any]

- [ ] [Deliverable 2]
  - Status: [...]

### Completed This Period
- [x] [Deliverable]  - Completed [Date]

### Upcoming
- [ ] [Future deliverable]

---

## 💰 FINANCIAL

**Contract Value:** $X
**Billed to Date:** $X
**Outstanding Invoices:** $X (if any)
**Hours This Month:** X hours
**Estimated Hours Remaining:** X hours

**Revenue Status:** ✅ Current | ⚠️ Invoice pending | 🔴 Overdue

**Next Invoice:** [Date] for [$ amount]

---

## 📅 KEY DATES

- **Next Milestone:** [Date] - [What]
- **Next Client Meeting:** [Date]
- **Contract End:** [Date] (if applicable)
- **Review/Renewal:** [Date] (if applicable)

---

## 🤝 CLIENT RELATIONSHIP

**Primary Contact:** [[Contact Name]]
**Last Communication:** [X days ago]
**Communication Frequency:** Weekly | Bi-weekly | Monthly
**Client Satisfaction:** 😊 High | 😐 Medium | 😟 Low

**Relationship Health:**
- Recent interactions: [Summary]
- Response time: [Fast/Slow]
- Scope creep: [Yes/No]
- Additional opportunities: [Yes/No]

---

## ⚠️ BLOCKERS & RISKS

**Current Blockers:**
- [Blocker 1] - [Impact and plan to resolve]
- [Blocker 2]

**Risks:**
- [Risk 1] - [Mitigation strategy]

**Dependencies:**
- Waiting on: [What from whom]

---

## 📋 ACTION ITEMS

**Immediate (This Week):**
- [ ] [Action 1]
- [ ] [Action 2]

**Short-term (This Month):**
- [ ] [Action 1]

**Strategic:**
- [ ] [Longer-term action]

---

## 💡 OPPORTUNITIES

**Upsell/Expansion:**
- [Potential additional work identified]

**Referrals:**
- [Other potential clients mentioned]

**Case Study:**
- [Results worth documenting?]

---

## 📈 PROGRESS SUMMARY

**This Week:**
- [Accomplishment 1]
- [Accomplishment 2]

**This Month:**
- [Major milestone]
- [Hours logged: X]

**Overall Progress:** [X%] complete or [milestone-based status]

---

## 🔄 NEXT STEPS

**Client Side:**
- [What client needs to provide]

**Your Side:**
- [What you need to deliver]

**Next Communication:**
- [ ] Schedule: [Type of meeting/update] on [Date]
- [ ] Send: [What document/update]

---

## 📝 NOTES

**Recent Changes:**
- [Any scope changes, timeline adjustments]

**Lessons Learned:**
- [What's working well]
- [What to adjust]

**Context for Next Interaction:**
- [Important points to remember]

---

*Run `/client-update [name]` to generate client update email*
*Run `/log-time [project]` to track hours*
*Run `/invoice-prep [client]` when ready to bill*
```

## Analysis Logic

### **Status Assessment**

**✅ Active:**
- Updated within 7 days
- Deliverables progressing
- Client responsive
- Revenue current

**⚠️ Stalled:**
- Updated 7-21 days ago
- Waiting on something
- Communication slow
- Potential scope issues

**🔴 Blocked:**
- No update > 21 days
- Critical blocker exists
- Payment issues
- Relationship concerns

**✓ Completed:**
- All deliverables done
- Final payment received
- Case study/testimonial obtained

### **Health Score Factors**

**🟢 Healthy (8-10/10):**
- Regular communication
- Deliverables on track
- Payments current
- Client satisfied
- Additional opportunities identified

**🟡 Needs Attention (5-7/10):**
- Communication infrequent
- Some deliverables delayed
- Minor payment delays
- Scope needs clarification

**🔴 At Risk (1-4/10):**
- Poor communication
- Deliverables significantly delayed
- Payment issues
- Relationship strained
- Risk of losing client

### **Financial Calculations**

- Track hours logged (if time entries exist)
- Calculate billing rate × hours
- Flag overdue invoices
- Estimate remaining hours
- Project total revenue

## Special Handling

### **"all" Parameter**

If user runs `/project-status all`:
- List all projects with summary status
- Group by: Active, Stalled, Blocked, Completed
- Show key metrics for each
- Identify which need immediate attention
- Provide prioritized action list

Example output:
```markdown
# All Projects Status

## ✅ ACTIVE (3 projects)
1. **Xtract** - $X/month, 85% complete, healthy
2. **Syntropic** - $X/month, 60% complete, needs attention
3. **Kadiko** - $X total, 40% complete, healthy

## ⚠️ STALLED (1 project)
1. **Project X** - Last update 15 days ago, waiting on client

## 🔴 BLOCKED (0 projects)

## ✓ COMPLETED (2 projects)
1. **Project Y** - Completed last month, testimonial received
2. **Project Z** - Completed Q3, case study published

---

## 📊 SUMMARY
- Total Active Revenue: $X/month
- Hours This Month: X across all projects
- Outstanding Invoices: $X
- Projects Needing Attention: 1

## 🎯 THIS WEEK PRIORITIES
1. Syntropic - Address scope clarification
2. Xtract - Complete milestone deliverable
3. Kadiko - Schedule check-in call
```

## Integration Points

**Link to other commands:**
- `/client-update [name]` → Generate email
- `/log-time [project]` → Track hours
- `/invoice-prep [client]` → Prepare invoice
- `/prep-meeting [client]` → Before client calls
- `/update-contact [client contact]` → Log interactions

**File references:**
- Link to project folder: `[[Consulting/ProjectName]]`
- Link to client contacts
- Link to relevant portfolio companies (if applicable)

## Important Notes

- Pull from YAML frontmatter when available
- Infer status from file modification dates
- Be honest about health scores - red flags are important
- Provide actionable next steps, not just status
- Focus on revenue protection and growth
- Flag opportunities for upsell/expansion
- Track client satisfaction explicitly
- Note lessons learned for future projects

## Project Schema Reference

When creating/updating project files, use this YAML:

```yaml
---
type: project
client: "[[Client Name]]"
status: active | paused | completed
revenue: $X/month or $X total
start_date: YYYY-MM-DD
end_date: YYYY-MM-DD (if applicable)
deliverables: [list]
next_milestone: Specific goal
key_contacts: [[Person A]], [[Person B]]
related_portfolio: [[Company]] (if applicable)
hours_budgeted: X
hours_logged: X
last_invoice: YYYY-MM-DD
next_invoice: YYYY-MM-DD
health_score: 1-10
---
```
