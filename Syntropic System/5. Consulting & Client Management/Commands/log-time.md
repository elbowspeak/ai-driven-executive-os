# Log Time

Track billable hours for consulting projects.

## Instructions

When the user runs `/log-time [project]`, provide a quick time logging workflow.

## Usage

```
/log-time Xtract
/log-time Syntropic 3.5 hours - strategy session
/log-time all (review all time entries this week)
```

## Process

### 1. **Find Project**
- Locate project file in `Consulting/` folder
- Create time log file if doesn't exist: `[Project]_TimeLog.md`

### 2. **Log Entry**
Prompt for or parse:
- **Hours:** How many hours?
- **Description:** What work was done?
- **Date:** Default to today unless specified
- **Billable:** Yes/No (default yes)
- **Invoice:** Which invoice period?

### 3. **Update Project File**
- Add to time log
- Update `hours_logged` in YAML frontmatter
- Calculate remaining budget (if exists)

## Output Format

When logging time:
```markdown
# Time Log: [Project]

## Entry Added

**Date:** 2025-11-12
**Hours:** 3.5
**Description:** Strategy session and deliverable planning
**Billable:** Yes
**Invoice Period:** November 2025

---

## This Week Summary
- **Total Hours:** 8.5 hours
- **Billable:** 8.5 hours
- **Non-billable:** 0 hours

## This Month Summary
- **Total Hours:** 24 hours
- **At Rate $X/hour:** $X earned
- **Hours Remaining in Budget:** X hours (if applicable)

---

## Recent Entries
- 2025-11-12: 3.5 hrs - Strategy session
- 2025-11-10: 2.0 hrs - Client call and follow-up
- 2025-11-08: 3.0 hrs - Implementation work

---

✅ Time logged successfully
Next: Run `/project-status [project]` to see updated totals
```

## Time Log File Format

Create or append to `Consulting/[Project]_TimeLog.md`:

```markdown
# Time Log: [Project Name]

---
type: time_log
project: "[[Project Name]]"
total_hours: X (auto-calculated)
---

## November 2025

| Date | Hours | Billable | Description | Invoice |
|------|-------|----------|-------------|---------|
| 2025-11-12 | 3.5 | Yes | Strategy session | Nov 2025 |
| 2025-11-10 | 2.0 | Yes | Client call | Nov 2025 |
| 2025-11-08 | 3.0 | Yes | Implementation | Nov 2025 |

**Month Total:** 8.5 hours

## October 2025

[Previous entries...]
```

## Smart Features

### **Quick Entry Format**
User can type: `/log-time Xtract 3.5 - Strategy meeting`
- Parse hours from command
- Parse description after dash
- Auto-fill other fields

### **Running Totals**
- Calculate week, month, total automatically
- Show budget consumption
- Flag when approaching budget limit
- Calculate billable amount at rate

### **Invoice Tracking**
- Group entries by invoice period
- Mark as invoiced when bill sent
- Track uninvoiced hours
- Generate invoice line items

### **Patterns & Insights**
After logging:
- "You've logged X hours this week"
- "Project is at Y% of budgeted hours"
- "Last invoice was Z weeks ago - time to bill?"
- "Average weekly hours: X"

## Integration

**With `/project-status`:**
- Time entries update project health
- Show hours logged vs. budgeted
- Flag if hours exceeding budget

**With `/invoice-prep`:**
- Pull uninvoiced hours
- Generate line items with descriptions
- Calculate totals

**With `/client-update`:**
- Include hours summary in update
- Show progress against deliverables

## Important Notes

- Default to billable=yes (client work)
- Round to quarter hours (.25, .5, .75) or actual
- Always include description for invoice clarity
- Track invoice period for billing
- Calculate running totals automatically
- Flag when approaching budget limits
- Show week/month totals for planning
- Remind about invoicing timing

## Example Workflow

```
User: /log-time Xtract

You: How many hours would you like to log for Xtract?
User: 3.5

You: What work did you do?
User: Strategy session with team, deliverable planning

You: ✅ Logged 3.5 hours for Xtract

This Week: 8.5 hours total
This Month: 24 hours total
Uninvoiced: 12 hours ($X)

Note: Last invoice was 3 weeks ago. Run `/invoice-prep Xtract` to prepare next invoice.
```
