# Meeting Prep Intelligence

Comprehensive brief for any meeting - pull all relevant context, history, and strategic guidance.

## Instructions

When the user runs `/prep-meeting [person/company/topic]`, generate a complete meeting preparation brief.

## Usage Formats

```
/prep-meeting John Doe
/prep-meeting XORQ
/prep-meeting EncodedVC discussion
/prep-meeting board meeting ConfigHub
```

## Analysis Process

### 1. **Identify Meeting Type**

Determine what kind of meeting:
- **Contact Meeting**: Meeting with a specific person
- **Company Meeting**: Portfolio company, prospect, or board meeting
- **Topic Meeting**: Discussion about a subject (e.g., "cybersecurity market")
- **Mixed**: Multiple people or companies

### 2. **Gather Intelligence**

**For Contact Meetings:**
- Find contact file and read complete history
- Check relationship strength and last contact
- Review recent interactions and context
- Identify relevant portfolio companies or projects
- Find mutual connections
- Check their company/LinkedIn for recent updates

**For Company Meetings:**
- Read all company files (Overview, Summary, Analysis, etc.)
- Review recent updates and activity
- Check competitive landscape
- Identify key questions or decisions
- Review previous board meeting notes
- Find relevant contacts at the company

**For Topic Meetings:**
- Search vault for relevant research
- Identify portfolio companies in that space
- Find contacts with expertise
- Gather market intelligence
- Review related ideas or initiatives

### 3. **Strategic Analysis**

- **Objectives**: What should this meeting accomplish?
- **Opportunities**: What value can be created?
- **Risks**: What to be careful about?
- **Asks**: What specific requests to make?
- **Offers**: What value can you provide?

## Output Format

```markdown
# Meeting Prep: [Person/Company/Topic]
**Date:** [If known]
**Type:** [Contact/Company/Topic/Board Meeting]

---

## 🎯 MEETING OBJECTIVES

**Primary Goal:**
[What success looks like for this meeting]

**Secondary Goals:**
- [Additional objective 1]
- [Additional objective 2]

---

## 👤 WHO (Contact Intelligence)

### [Person Name]
**Title:** [Role]
**Company:** [[Company Name]]
**LinkedIn:** [URL if available]

**Relationship:**
- **Strength:** Strong / Medium / Weak
- **Last Contact:** [Date - X days ago]
- **Introduced By:** [[Person]] [if applicable]
- **Context:** [How you know them]

**Recent Activity:**
[LinkedIn posts, company news, anything relevant]

### Other Attendees
[If multi-person meeting, list each with brief context]

---

## 📚 CONTEXT & HISTORY

### Previous Interactions
**[Most Recent Date]:**
- What discussed: [Summary]
- Outcome: [Result]
- Follow-ups: [What was supposed to happen]

**[Earlier Date]:**
- [Summary]

**Key Themes:**
- [Recurring topic or interest]
- [Their priorities or challenges]

### Relationship Map
**Mutual Connections:**
- [[Person A]] - [How they're connected]
- [[Person B]] - [Relevance]

**Potential Introductions:**
- Could intro them to: [[Portfolio Company/Person]] for [reason]
- Could ask them for intro to: [Target person/company]

---

## 🏢 COMPANY CONTEXT

[If person works at a relevant company]

**[[Company Name]]**
**What They Do:** [Brief description]
**Stage:** [Startup/Growth/Enterprise/Public]
**Recent News:** [Funding, product launches, etc.]

**Relevance to Portfolio:**
- Potential customer for: [[Portfolio Company X]]
- Competitive to: [[Portfolio Company Y]]
- Partnership opportunity: [Specific synergy]

**Strategic Value:**
[Why this company/person matters to your work]

---

## 💡 TALKING POINTS

### Opening
"[Suggested opening based on context - reference recent activity or last conversation]"

### Core Discussion
1. **[Topic 1]**
   - Your perspective: [Brief take]
   - Their likely interest: [Why it matters to them]
   - Supporting evidence: [Data point or example]

2. **[Topic 2]**
   [Similar format]

3. **[Topic 3]**
   [Similar format]

### Value You Can Provide
- Intro to [[Person/Company]] for [specific reason]
- Insight on [topic they care about]
- Advice on [challenge they mentioned]
- Access to [resource, network, knowledge]

---

## ❓ QUESTIONS TO ASK

### Discovery
- [Question to understand their current priorities]
- [Question about their challenges or goals]
- [Question about their market or space]

### Strategic
- [Question that surfaces opportunities]
- [Question that identifies how to help]

### Specific
- [Follow-up on previous conversation]
- [Clarification on something they mentioned]

**Avoid:** [Questions that could be awkward or topics to skip]

---

## 🎁 VALUE PROPOSITIONS

What you can offer based on their needs:

**If they need [X]:**
→ You can provide: [Specific help]

**If they're interested in [Y]:**
→ You can connect: [[Person/Company]]

**If they're working on [Z]:**
→ You can share: [Insight, research, experience]

---

## 🤝 SPECIFIC ASKS/OFFERS

### Your Asks
- [ ] [Specific request 1]
- [ ] [Specific request 2]
- [ ] [If appropriate timing]

### Your Offers
- [ ] [Specific offer 1 - intro, advice, resource]
- [ ] [Specific offer 2]
- [ ] [Follow-up commitment]

---

## 🎯 PORTFOLIO CONNECTIONS

[If relevant to portfolio companies]

**Immediate Opportunities:**
- **[[Portfolio Company]]** - [How this contact could help]
  - Potential: Customer / Advisor / Investor / Partner
  - Approach: [How to position]
  - Timing: [Now / Build relationship first / Future]

**Longer-term:**
- [[Portfolio Company]] - [Possible future connection]

---

## ⚠️ IMPORTANT NOTES

**Remember:**
- [Key context about their situation]
- [Something personal they mentioned]
- [Sensitivity or concern to be aware of]

**Don't:**
- [Topic to avoid]
- [Mistake to prevent]

**Timing:**
- [If there's urgency or time-sensitive element]

---

## 📋 MEETING CHECKLIST

**Before Meeting:**
- [ ] Review their LinkedIn for recent activity
- [ ] Check company news [if applicable]
- [ ] Prepare specific portfolio company materials [if doing intro]
- [ ] Have calendar ready for scheduling follow-up
- [ ] Bring/prepare: [Specific materials]

**During Meeting:**
- [ ] Reference [specific previous discussion point]
- [ ] Ask about [their initiative/project]
- [ ] Make offer to [specific value proposition]
- [ ] Get answer on [follow-up from last time]
- [ ] Suggest next steps

**After Meeting:**
- [ ] Run `/update-contact [name]` to log interaction
- [ ] Send follow-up email within 24 hours
- [ ] Make introductions promised
- [ ] Add to calendar: [Next touchpoint]

---

## 🎤 SUGGESTED FLOW

**First 5 minutes:** Rapport
- [Specific opener based on their recent activity]
- [Personal connection or shared interest]

**Next 15-20 minutes:** Discovery & Discussion
- [Core topics to cover]
- [Your insights and their questions]

**Last 10 minutes:** Value Exchange
- [Your offer or ask]
- [Their interest or request]

**Close:** Next Steps
- [Specific commitment or follow-up]
- [Schedule next interaction if appropriate]

**Total Time Estimate:** [Based on meeting type]

---

## 🧠 STRATEGIC CONTEXT

**Why This Meeting Matters:**
[High-level strategic importance]

**Success Metrics:**
- ✅ [Outcome 1 that means meeting was valuable]
- ✅ [Outcome 2]
- ✅ [Minimum viable success]

**Follow-up Plan:**
[What happens after this meeting]

---

## 💭 MINDSET

**Go in with:**
- [Attitude or frame that will serve you]
- [What to remember about approach]

**Energy:** [How to show up - enthusiastic, thoughtful, advisory, etc.]

**Remember:**
[One key thing that will make this meeting successful]

---

*After the meeting, run `/update-contact [name]` to log outcomes*
*If new action items, add them to your daily priorities*
```

## Intelligence Gathering Logic

### **Search Strategy**

**For Person Name:**
1. Search for exact match file: `[First Last].md`
2. Search vault content for mentions of name
3. Check email addresses (if in any files)
4. Check LinkedIn URLs
5. Check company affiliations
6. Cross-reference with portfolio companies

**For Company:**
1. Check portfolio companies folder
2. Search for company name in contacts
3. Search for company mentions in notes
4. Check competitive analyses
5. Web search for recent news (if appropriate)

**For Topic:**
1. Search vault for keyword mentions
2. Identify relevant portfolio companies
3. Find experts in your network
4. Gather any previous research
5. Check ideas folder for related thinking

### **Context Synthesis**

**Prioritize:**
- Most recent interactions (top)
- Strategic relevance (highlight)
- Actionable items (checklist)
- Time-sensitive info (flag)

**Infer:**
- Meeting type from context
- Likely objectives from relationship
- Strategic value from portfolio connections
- Best approach from relationship strength

### **Smart Suggestions**

**Personalization:**
- Reference specific previous conversations
- Mention their recent activity (LinkedIn, news)
- Connect to their stated interests
- Use their communication style cues

**Strategic Positioning:**
- How to position portfolio companies
- When to make asks vs. build relationship
- What value to lead with
- How to create reciprocity

## Meeting Type Variations

### **Board Meeting Prep**
Focus on:
- Company performance and metrics
- Strategic decisions needed
- Questions from last meeting
- Competitive updates
- Support needed from you

### **Prospect/Deal Flow**
Focus on:
- Company analysis
- Founder background
- Market opportunity
- Investment thesis fit
- Due diligence questions

### **Portfolio Company Support**
Focus on:
- Current challenges
- Resources you can provide
- Introductions to facilitate
- Strategic guidance
- Progress tracking

### **Network Building**
Focus on:
- Finding common ground
- Understanding their world
- Identifying mutual value
- Creating future opportunities
- Building genuine connection

### **LP Update**
Focus on:
- Portfolio progress
- Key wins and challenges
- Strategic direction
- Fundraising context
- Relationship maintenance

## Important Notes

- Be comprehensive but scannable (use formatting)
- Prioritize actionable intelligence
- Provide specific talking points, not generic advice
- Reference actual vault content, don't make up
- Adapt tone to meeting type (formal board vs. casual coffee)
- Include timing guidance (what to cover in what order)
- Provide both optimistic opportunities and realistic risks
- End with clear success metrics
- Always suggest specific follow-up actions
- Make it easy to execute (checklists, specific questions, etc.)

## Post-Meeting Integration

**Remind user to:**
1. Run `/update-contact [name]` immediately after
2. Log key outcomes and next steps
3. Create follow-up tasks
4. Update relationship strength if changed
5. Make promised introductions
6. Schedule next touchpoint

**Auto-create follow-ups:**
If meeting prep identifies actions, create them in appropriate places:
- Portfolio company action → Company file
- Introduction to make → Both contact files
- Research needed → Ideas folder
- Follow-up meeting → Calendar suggestion
