# Client Update

Generate professional client update emails based on project progress.

## Instructions

When the user runs `/client-update [client]`, generate a polished update email.

## Usage

```
/client-update Xtract
/client-update Syntropic weekly
/client-update Kadiko milestone
```

## Analysis Process

### 1. **Gather Project Information**
- Read project file and time logs
- Check recent deliverables completed
- Review upcoming milestones
- Calculate hours this period
- Identify any blockers or needs

### 2. **Determine Update Type**
- **Weekly:** Regular check-in
- **Milestone:** Major deliverable completed
- **Monthly:** Comprehensive progress report
- **Ad-hoc:** Specific issue or question

### 3. **Generate Email**
Professional but personable tone

## Output Format

```markdown
# Client Update Email: [Client Name]

---

**Subject:** [Project Name] - [Type] Update ([Date])

---

**To:** [[Primary Contact]]
**From:** [Your Name]
**Date:** [Today's Date]

---

## EMAIL DRAFT

Hi [First Name],

Hope you're having a great [day of week]! Here's a quick update on [Project Name].

### ✅ What We Accomplished

- **[Deliverable 1]** - Completed and ready for your review
  - [Brief detail or outcome]

- **[Deliverable 2]** - In progress, [X%] complete
  - Expected completion: [Date]

- **[Additional item]** - [Status]

### 🎯 This Week/Period Focus

- [Priority 1]
- [Priority 2]
- [Priority 3]

### 📊 Progress Summary

- **Hours this [period]:** [X] hours
- **Overall progress:** [X]% complete / [milestone achieved]
- **Timeline:** On track | [X days ahead/behind]

### 📅 Upcoming

- **[Date]:** [Milestone or deliverable]
- **[Date]:** [Next meeting or check-in]

### 🤝 What I Need From You

[If anything needed from client:]
- [ ] [Item 1]
- [ ] [Item 2]

[If nothing:] Nothing at the moment - we're moving forward smoothly!

### 💡 Observations/Recommendations

[Optional section if you have strategic insights or suggestions]

Let me know if you have any questions or if there's anything you'd like to discuss. Looking forward to [next milestone/meeting]!

Best,
[Your Name]

---

## SEND CHECKLIST

Before sending:
- [ ] Verify all facts and numbers
- [ ] Check deliverable links work
- [ ] Confirm next meeting date
- [ ] Personalize greeting/sign-off
- [ ] Attach any relevant files
- [ ] CC anyone else who should be included

After sending:
- [ ] Run `/update-contact [[Client Contact]]` to log this communication
- [ ] Update project file with "Last Update: [Date]"
- [ ] Set reminder for next update (if recurring)

---

## ALTERNATIVE VERSIONS

### Short Version (Quick Check-in)
```
Hi [Name],

Quick update: [Main accomplishment]. [Next step]. [Question or next meeting].

Let me know if you need anything!

Best,
[You]
```

### Detailed Version (Monthly)
[Include sections for: Executive Summary, Detailed Progress, Metrics, Challenges Addressed, Next Month Plan, Budget Status]

---

*Update sent on: [Date]*
*Next update due: [Date based on frequency]*
```

## Update Types & Templates

### **Weekly Update**
- Focus: This week's progress
- Length: Brief (3-4 paragraphs)
- Frequency: Every Friday or Monday
- Include: Accomplishments, next week focus, quick asks

### **Milestone Update**
- Focus: Major deliverable completion
- Length: Medium (5-6 paragraphs)
- Trigger: When milestone reached
- Include: Detailed results, next phase, strategic observations

### **Monthly Update**
- Focus: Comprehensive progress report
- Length: Detailed (7+ paragraphs or sections)
- Frequency: Monthly
- Include: Metrics, financial, timeline, strategic recommendations

### **Ad-hoc Update**
- Focus: Specific issue, question, or pivot
- Length: As needed
- Trigger: When something important happens
- Include: Context, issue/opportunity, recommendation, ask

## Tone & Style Guidelines

**Professional but Personal:**
- Use client's first name
- Casual greeting but professional body
- Balance confidence with humility
- Avoid jargon unless client uses it

**Be Clear:**
- Lead with accomplishments (positive)
- Be honest about challenges
- Provide specific next steps
- Make asks clear and easy to respond to

**Show Value:**
- Quantify when possible (hours, %, dates)
- Connect work to client's goals
- Share insights beyond the deliverable
- Demonstrate proactive thinking

**Respect Time:**
- Front-load important info
- Use bullet points for scannability
- Keep it concise unless monthly deep-dive
- Make it easy to forward internally

## Smart Features

### **Auto-populate from Project Data**
- Pull hours from time log
- Reference recent deliverables
- Include upcoming milestones from project file
- Calculate percentage complete

### **Context-aware Recommendations**
- If behind schedule: Acknowledge and explain
- If ahead: Highlight and suggest next steps
- If blocked: Clearly state what's needed
- If opportunity: Present with rationale

### **Follow-up Tracking**
- Note when update sent
- Set reminder for next update
- Track client response time
- Flag if no response after X days

## Integration

**With `/project-status`:**
- Pull current status data
- Use health score to adjust tone
- Include relevant metrics

**With `/log-time`:**
- Accurate hours this period
- Uninvoiced hours summary

**With `/update-contact`:**
- Log that update was sent
- Track communication frequency

**With `/invoice-prep`:**
- If monthly update, mention invoice coming
- "Invoice for [hours] will be sent separately"

## Important Notes

- Default to positive, forward-looking tone
- Always end with clear next steps
- Make it easy for client to respond (or not need to)
- Be honest about challenges but solution-oriented
- Save sent updates to project folder for records
- Use as opportunity to strengthen relationship
- Look for upsell/expansion opportunities to mention
- Track update frequency per client preference

## Example Workflow

```
User: /client-update Xtract

You: [Analyzes Xtract project]

Generated Update:
- 12 hours logged this week
- Completed data pipeline deliverable
- 60% overall progress
- On track for end-of-month milestone

Draft email created. Key points:
✅ Data pipeline completed (major milestone)
🎯 Focus next week: Integration testing
📅 Demo scheduled for Nov 20
💡 Opportunity to expand scope to Phase 2

Edit email? (y/n) or Send checklist shown above
```
