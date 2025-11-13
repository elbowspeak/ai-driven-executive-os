# Daily Prioritization

Your daily operating system. Run each morning to get focused priorities and context for the day.

## Instructions

When the user runs `/daily`, generate a comprehensive daily brief with prioritized focus areas and **save it as a file**.

**File Location:** `/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/Daily/YYYY-MM-DD.md`

**Important:** Always use the Write tool to create the daily brief file so the user can reference it in Obsidian throughout the day.

## Analysis Process

### 1. **Check Today's Context**
- Current date and day of week
- Look for daily note: `YYYY-MM-DD.md` in vault root
- Check if any meetings or events mentioned in daily note
- Review any tasks or todos in daily note

### 2. **Portfolio Company Priorities**
Scan `Biz Dev/Encoded Portfolio Companies/`:
- Companies with upcoming board meetings (check for date mentions)
- Companies not updated recently (> 30 days)
- Companies with recent activity needing response
- Action items from previous portfolio reviews

### 3. **Relationship Follow-ups**
Check contacts for:
- **Urgent** (strong relationships > 60 days dormant)
- **This Week** (medium relationships > 45 days)
- **Scheduled** (follow-up actions with dates)
- **Introductions** (pending intro requests)

### 4. **Consulting/Project Work**
Scan `Consulting/` folder:
- Active projects with deliverables this week
- Client check-ins needed
- Time-sensitive consulting work
- Revenue-generating activities

### 5. **Opportunities & Ideas**
Quick scan for:
- Deal flow signals (new companies to evaluate)
- Market research to complete
- Strategic initiatives in progress

## Output Format

```markdown
# Daily Brief - [Day of Week], [Date]

Good morning! Here's your focus for today.

---

## 🎯 TOP 3 PRIORITIES

**1. [Highest Priority Item]**
- Why: [Reason this is critical]
- Action: [Specific next step]
- Time: [Estimated time needed]

**2. [Second Priority]**
- Why: [Reason]
- Action: [Step]
- Time: [Estimate]

**3. [Third Priority]**
- Why: [Reason]
- Action: [Step]
- Time: [Estimate]

**Total Estimated Time:** X hours

---

## 📅 TODAY'S CALENDAR
[If daily note exists with meetings, list them]
[If no daily note, prompt: "No daily note found. Meetings today?"]

**Meeting Prep Needed:**
- [ ] [Meeting 1] - Run `/prep-meeting [topic/person]`
- [ ] [Meeting 2] - Review [[Contact Name]] notes

---

## 🏢 PORTFOLIO ATTENTION
[Based on /portfolio-update data]

**Needs Response Today:**
- [Company]: [Specific item requiring attention]

**This Week:**
- [Company]: Board meeting [Date] - prep needed
- [Company]: Update overdue (last: [date])

**All Clear:** ConfigHub, DataFlint, IPXO [or whatever companies don't need attention]

---

## 🤝 RELATIONSHIP ACTIONS

**Urgent Reconnections:**
- [[Contact Name]] - [Company/Role]
  - Last contact: [X days ago]
  - Why important: [Portfolio connection/Strategic value]
  - Suggested: Quick email re: [specific topic]

**This Week:**
- [[Contact Name]] - Follow up on [previous discussion]
- [[Contact Name]] - Intro to [[Portfolio Company]]

**Scheduled:**
- [Any follow-up actions with today's date]

---

## 💼 CONSULTING/REVENUE WORK

**Active Today:**
- [[Client/Project]]: [Specific deliverable or call]
- [[Client/Project]]: [Action needed]

**This Week:**
- [Upcoming client work]
- [Billing/invoicing needed]

---

## 💡 OPPORTUNITIES

**New Signals:**
- [Any deal flow or market signals detected]
- [Research to complete]
- [Strategic initiatives to advance]

---

## 📋 QUICK WINS (If Time Permits)

- [ ] Log interaction with [recent contact]
- [ ] Update [company] files with [recent activity]
- [ ] Review [idea] for validation
- [ ] [Other low-effort, high-value tasks]

---

## 🧭 FOCUS GUIDANCE

**Energy Allocation:**
- 🔥 High energy (morning): [Top priority items requiring deep thinking]
- ⚡ Medium energy (afternoon): [Meetings, calls, relationship work]
- 🌙 Low energy (evening): [Admin, logging, planning]

**Success Metric for Today:**
If you complete [specific top priority], today is a win.

**Remember:**
[Any strategic reminder or context relevant to current focus]

---

## 🔄 END OF DAY

At end of day, consider:
- [ ] Run `/update-contact` for people you spoke with
- [ ] Log any portfolio updates
- [ ] Review tomorrow's priorities
- [ ] Note any wins or blockers

---

*Run `/weekly` every Friday for comprehensive weekly review*
*Run `/prep-meeting [topic]` before important meetings*
*Run `/relationship-health` monthly for network check*
```

## Intelligence & Prioritization Logic

### **Priority Scoring System**

Assign priority scores based on:

**Revenue Impact (0-10):**
- Client deliverable due: 10
- Portfolio company board meeting: 8
- Strategic intro that could close deal: 7
- Research/planning: 3

**Time Sensitivity (0-10):**
- Due today: 10
- Due this week: 7
- Due this month: 4
- No deadline: 2

**Strategic Value (0-10):**
- Core investment thesis: 10
- Portfolio company success: 9
- Network building: 6
- Admin/maintenance: 3

**Effort vs. Impact:**
- Quick win (5 min, high impact): Prioritize
- Deep work (2+ hours, high impact): Schedule
- Time sink (1+ hour, low impact): Defer or delegate
- Admin (any time, low impact): Batch for low-energy time

### **Smart Suggestions**

Based on patterns, suggest:

**If Monday:**
- "Plan week before diving into tasks"
- "Review portfolio for weekly themes"
- "Schedule key calls for Tuesday-Thursday"

**If Friday:**
- "Consider running `/weekly` for week review"
- "Wrap up loose ends before weekend"
- "Plan next week's priorities"

**If Multiple Portfolio Items:**
- "Consider batching portfolio work - run `/portfolio-update` first"
- "Group board meeting prep by company stage"

**If Many Relationships Dormant:**
- "Consider running `/relationship-health` for full analysis"
- "Batch reconnection emails"

## Contextual Intelligence

**Pull from vault:**
- Recent daily notes (check for incomplete todos)
- Portfolio company recent updates
- Contact last_contact dates
- Project statuses
- Any files modified in last 24 hours (might indicate active work)

**Infer priorities:**
- If portfolio company mentioned in recent daily notes → likely active focus
- If contact updated recently → probably have follow-up
- If consulting folder modified → active client work
- If idea files changed → strategy work in progress

## Interactive Elements

**Ask clarifying questions if needed:**
- "I see 5 urgent items. Which is highest priority?"
- "You have 3 hours of priority work but meeting-heavy day. Move anything to tomorrow?"
- "No daily note found. Want me to create one with today's priorities?"

**Offer drill-downs:**
- "For more portfolio detail, run `/portfolio-update`"
- "For specific company prep, run `/prep-meeting [company]`"
- "For relationship analysis, run `/relationship-health`"

## Daily Note Integration

**If daily note exists (YYYY-MM-DD.md):**
- Read existing content
- Identify meetings/events
- Check for todos
- Add daily brief as new section (or create separate brief)

**If no daily note:**
- Offer to create one with the brief
- Ask about meetings/priorities
- Suggest creating daily note habit

## Important Notes

- Keep brief focused - max 3 top priorities
- Be specific with actions ("Email John about XORQ intro" not "Follow up with contacts")
- Estimate time to help with planning
- Provide context reminders (what was last discussed, why it matters)
- Adapt tone to day of week (Monday = planning, Wednesday = execution, Friday = wrapping)
- Surface quick wins for momentum
- Balance portfolio/revenue/network work
- End with clear success metric for the day

## Usage Pattern

**Ideal workflow:**
```
Morning:
1. Open Obsidian
2. Run `/daily`
3. Review priorities
4. Schedule blocks for top 3 items
5. Execute

End of day:
1. Check off completed items
2. Log interactions
3. Note tomorrow's focus
```

**Weekly reset:**
- Friday: `/weekly` for review
- Monday: `/daily` to start week fresh
