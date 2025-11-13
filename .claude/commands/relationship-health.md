# Relationship Health

Analyze relationship health across your network and suggest reconnection opportunities.

## Instructions

When the user runs `/relationship-health [optional: filter]`, analyze contact engagement patterns.

## Analysis Dimensions

### 1. **Recency** - When did you last connect?
- 🟢 **Active** (< 30 days)
- 🟡 **Cooling** (30-90 days)
- 🟠 **At Risk** (90-180 days)
- 🔴 **Dormant** (> 180 days)

### 2. **Relationship Strength**
From YAML frontmatter:
- **Strong**: High-value relationships
- **Medium**: Regular contacts
- **Weak**: Loose connections

### 3. **Strategic Value**
Based on:
- Links to portfolio companies
- Links to active projects
- Tags indicating relevance (founder, investor, technical)
- Network position (connector vs. specialist)

## Output Format

```markdown
# Relationship Health Report - [Date]

## 📊 Executive Summary
- Total contacts analyzed: X
- Active relationships: Y
- Relationships needing attention: Z
- High-value dormant contacts: N

---

## 🔴 HIGH PRIORITY - Reconnect Now
Strong relationships that have gone dormant

### [Contact Name] - [[Company]]
**Last Contact:** [Date] (X days ago)
**Relationship:** Strong
**Why Important:**
- [Portfolio connection / Project relevance / Strategic value]

**Suggested Approach:**
- [ ] Send email re: [specific topic]
- [ ] LinkedIn check-in about [recent news]
- [ ] Intro to [portfolio company] for [reason]

**Context Reminder:**
[Last interaction summary from contact file]

---

## 🟠 MEDIUM PRIORITY - Schedule Soon
Medium relationships cooling off or strong relationships at risk

### [Contact Name] - [[Company]]
[Similar format]

---

## 🟡 MONITORING - Keep on Radar
Active relationships or acceptable cadence

### [Contact Name] - [[Company]]
**Last Contact:** [Date]
**Status:** ✅ Healthy / 📅 Check in next month

---

## 🌟 SUPER CONNECTORS
Contacts who link you to many others

### [Contact Name]
**Connections facilitated:** X people
**Network value:** High
**Last contact:** [Date]
**Action:** [Maintain regular cadence]

---

## 📈 Relationship Trends

**By Category:**
- Portfolio-related: X active / Y dormant
- Consulting clients: X active / Y dormant
- Investors: X active / Y dormant
- Industry experts: X active / Y dormant

**Engagement Patterns:**
- Average days between contacts: X
- Most engaged category: [Category]
- Least engaged category: [Category]

**Warning Signs:**
- X strong relationships dormant > 6 months
- Y portfolio contacts not engaged in 3 months
- Z super connectors not contacted in 2 months

---

## 🎯 This Week's Action Plan

**Monday:**
- [ ] Reach out to [High Priority Contact 1]
- [ ] Send intro for [Contact A] → [Contact B]

**Wednesday:**
- [ ] Check in with [High Priority Contact 2]
- [ ] Follow up on [Previous conversation]

**Friday:**
- [ ] Connect with [Medium Priority Contact]
- [ ] Schedule for next week: [Contact list]

---

## 💡 Reconnection Templates

**For Dormant Strong Relationships:**
"Hi [Name], realized it's been a while since we connected. [Specific reference to last conversation or their recent activity]. Would love to catch up on [relevant topic]. Coffee next week?"

**For Portfolio Connections:**
"Hi [Name], thought of you regarding [Portfolio Company]. They're working on [relevant thing that matches contact's interest]. Worth a conversation?"

**For Strategic Reactivation:**
"Hi [Name], saw [their recent activity/news]. Reminded me of our conversation about [topic]. How's [their project/company] progressing?"

---

## 🔧 Maintenance Recommendations

Based on analysis:
- Update relationship_strength for X contacts (appear stronger/weaker than marked)
- Add missing last_contact dates for Y contacts
- Tag Z contacts with more specific categories
- Create follow-up actions for N dormant high-value contacts
```

## Filter Options

**By relationship strength:**
```
/relationship-health strong
```
Only analyze strong relationships

**By category:**
```
/relationship-health portfolio
/relationship-health investors
/relationship-health founders
```

**By status:**
```
/relationship-health dormant
/relationship-health active
```

## Intelligent Suggestions

For each reconnection suggestion, provide:
- **Context**: What you last discussed
- **Hook**: Recent news/event to reference
- **Value**: What you can offer them
- **Ask**: Specific request or discussion topic

## Important Notes

- Prioritize strong relationships that have gone dormant
- Consider strategic value (portfolio connections > casual contacts)
- Suggest specific, actionable reconnection approaches
- Reference actual context from contact files
- Identify patterns (e.g., "You haven't connected with any investors in 4 months")
- Flag super connectors who need regular maintenance
- Consider seasonal patterns (holidays, industry events)

## Required Analysis

- Read all contact files with YAML frontmatter
- Parse last_contact dates
- Check relationship_strength field
- Analyze tags for strategic value
- Cross-reference with portfolio companies and projects
- Calculate time since last contact
- Prioritize by relationship_strength + strategic_value + recency
