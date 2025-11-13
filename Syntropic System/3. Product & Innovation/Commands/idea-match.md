# Idea Match

Find portfolio companies, network connections, and execution opportunities for your ideas.

## Instructions

When the user runs `/idea-match [idea or topic]`, scan the vault to find connections between the idea and existing resources (portfolio companies, contacts, projects, content).

## Usage

```
/idea-match AI-powered portfolio reporting
/idea-match content series on agentic AI
/idea-match consulting service for early-stage startups
/idea-match [idea from Ideas/ folder]
```

## Purpose

Great ideas fail without execution. Execution requires connections:
- Portfolio companies that could use/benefit from this
- Network contacts who could help
- Consulting clients who might pay for this
- Content opportunities to build on this
- Projects that complement this

This command finds those connections automatically.

## Matching Process

### 1. **Understand the Idea**
- What is this idea about?
- What problem does it solve?
- Who would it help?
- What skills/resources does it need?

### 2. **Scan Portfolio Companies**
Look for companies that:
- Could use this idea/solution
- Are in related space (could partner)
- Face similar problems
- Have complementary offerings

### 3. **Scan Network Contacts**
Look for people who:
- Have expertise in this area
- Have done something similar
- Could be customers/users
- Could provide introductions
- Could collaborate

### 4. **Scan Existing Projects**
Look for:
- Consulting projects this could extend
- Content series this could fit into
- Research already done on this topic
- Tools/systems that complement this

### 5. **Identify Synergies**
- How could this help multiple areas at once?
- What's the leverage opportunity?
- What unlock

s other opportunities?

## Output Format

```markdown
# Idea Matching: [Idea Name]
**Date:** [YYYY-MM-DD]
**Idea:** [Brief description]
**Match Confidence:** [High / Medium / Low]

---

## 🎯 IDEA SUMMARY

**What is this idea?**
[One-line description]

**Who/what could this help?**
[Target audience or use case]

**What connections are we looking for?**
- Portfolio companies that could use this
- Network contacts who could help
- Existing work this builds on
- Opportunities this unlocks

---

## 🏢 PORTFOLIO COMPANY MATCHES

### High Relevance Matches

#### [[Portfolio Company 1]]
**Relevance:** ⭐⭐⭐ High
**Why this matches:**
- [Specific reason this company could use/benefit from idea]
- [Their pain point this addresses]
- [Opportunity for them]

**Potential application:**
[Exactly how they could use this idea]

**Value proposition:**
[Why they'd care about this]

**Next steps:**
- [ ] Reach out to [Founder/Contact] about this
- [ ] Share concept and get feedback
- [ ] Explore partnership/pilot opportunity

---

#### [[Portfolio Company 2]]
**Relevance:** ⭐⭐⭐ High
[Same format]

---

### Medium Relevance Matches

#### [[Portfolio Company 3]]
**Relevance:** ⭐⭐ Medium
**Why this matches:**
[Less direct but still relevant connection]

**Potential application:**
[How they could benefit, even if not core use case]

**Next steps:**
- [ ] Mention in next check-in call
- [ ] See if they know others who'd benefit

---

### Portfolio Insights

**Pattern across portfolio:**
[Any trends? Multiple companies with same need?]

**Strongest fit:**
[[Company X]] because [specific reason]

**Recommendation:**
Start with [[Company Y]] as pilot - they have [specific advantage for testing]

---

## 🤝 NETWORK MATCHES

### Expertise Connections

**People with relevant expertise:**

#### [[Contact 1]] - [Title/Role]
**Why they're relevant:**
- Expertise in [specific area]
- Has done [similar thing]
- Could provide [specific help]

**Relationship strength:** Strong / Medium / Weak
**Last contact:** [Date or "X days ago"]

**What to ask them:**
- [Specific question 1]
- [Specific question 2]

**Action:**
- [ ] Reach out about this idea
- [ ] Get their perspective on [specific aspect]

---

#### [[Contact 2]] - [Title/Role]
**Why they're relevant:**
[Same format]

---

### Potential Customer/User Connections

**People who might use/buy this:**

#### [[Contact 3]] - [Title/Company]
**Why they're a potential customer:**
- They have [problem this solves]
- They've mentioned needing [this type of solution]
- Their company fits profile

**Next steps:**
- [ ] Validate demand: "Would you use something like this?"
- [ ] Get feedback on concept
- [ ] Gauge willingness to pay (if relevant)

---

### Collaboration Opportunities

**People who could partner/collaborate:**

#### [[Contact 4]] - [Title/Role]
**Collaboration potential:**
- They're working on [complementary thing]
- They have [skills/resources you need]
- Mutual benefit: [what each party gets]

**Next steps:**
- [ ] Propose collaboration
- [ ] Explore partnership structure

---

### Network Insights

**Total relevant contacts:** [X people]
**Expertise available:** [List key skills in network]
**Strongest connection:** [[Contact Y]] - [why]
**Recommendation:** Start with [[Contact Z]] because [reason]

---

## 💼 CONSULTING/PROJECT MATCHES

### Active Consulting Projects

#### [[Project/Client 1]]
**Relevance:** ⭐⭐⭐ High
**Connection:**
- Current project involves [related work]
- Client needs [what this idea provides]
- Could become service extension

**Opportunity:**
- Expand scope to include this
- Test idea with paying client
- Build case study

**Next steps:**
- [ ] Propose to client as add-on
- [ ] Pilot with this project
- [ ] Document results for future clients

---

### Service Extension Opportunities

**Could this become a consulting service?**
[Assessment: Strong fit / Maybe / Not really]

**Potential clients who'd pay for this:**
- [[Client/Company 1]] - [why they'd pay]
- [[Client/Company 2]] - [why they'd pay]

**Pricing model:**
[Project-based? Retainer? Product?]

**Next steps:**
- [ ] Validate willingness to pay with 3 potential clients
- [ ] Create service offering document
- [ ] Pilot with one paying client

---

## 📝 CONTENT OPPORTUNITIES

### Existing Content This Extends

**Related content you've created:**
- [[Content piece 1]] - [how this idea builds on it]
- [[Content piece 2]] - [connection]

**Opportunity:**
Create series or expand on existing themes

### New Content Opportunities

**Content you could create from this idea:**
1. **LinkedIn post series** (5-7 posts)
   - Post 1: [Topic/angle]
   - Post 2: [Topic/angle]
   - Post 3: [Topic/angle]

2. **Investment memo** (if relevant)
   - Market analysis for this space
   - Competitive landscape
   - Investment thesis

3. **Portfolio highlight** (if relevant)
   - Showcase portfolio company using similar approach
   - Lessons learned from execution

**Thought leadership angle:**
[How this positions you as expert in X]

**Next steps:**
- [ ] Draft first post in series
- [ ] Build content calendar
- [ ] Cross-promote with idea execution

---

## 🔗 EXISTING WORK CONNECTIONS

### Research You've Done

**Related research in vault:**
- [[Market map: X]] - [relevant findings]
- [[Competitive analysis: Y]] - [insights]
- [[Research: Z]] - [supporting data]

**How this research supports the idea:**
[Specific connections]

### Tools/Systems You've Built

**Existing systems that complement this:**
- [System 1] - [how they work together]
- [System 2] - [integration opportunity]

**Leverage opportunity:**
[Can you build on what exists vs. starting from scratch?]

---

## 💡 SYNERGY OPPORTUNITIES

### Multi-Purpose Applications

**This idea could simultaneously:**
1. Help [[Portfolio Company X]] with [specific problem]
2. Become consulting service for [client type]
3. Create content for thought leadership
4. Open doors to [new opportunity]

**Leverage score:** [High / Medium / Low]
**Why:** [Reasoning]

### Network Effects

**If you execute on this idea:**
- Attracts [type of people] to your network
- Positions you as expert in [area]
- Opens doors to [specific opportunities]
- Enables [future possibilities]

### Resource Sharing

**Can execution serve multiple purposes?**
- Research for this idea → content for portfolio company
- Tool you build → consulting service offering
- Case study from execution → thought leadership

**Efficiency gain:**
[How much more valuable is this idea because of connections?]

---

## 🎯 EXECUTION LEVERAGE

### Highest Impact Opportunities

**Top 3 matches to pursue first:**
1. **[[Match 1]]** - [Why start here]
2. **[[Match 2]]** - [Why this second]
3. **[[Match 3]]** - [Why this third]

### Quick Wins

**Low-effort, high-value actions:**
1. [Action 1] - [15 min, validates key assumption]
2. [Action 2] - [30 min, gets critical feedback]
3. [Action 3] - [1 hour, tests core concept]

### Pilot Candidate

**Best place to test this idea:**
[[Portfolio Company / Client / Project X]]

**Why:**
- They have the problem acutely
- They're willing to experiment
- You have strong relationship
- Success here unlocks others

**Pilot plan:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

---

## 📋 RECOMMENDED ACTIONS

### Immediate (This Week)
- [ ] Reach out to [[Contact 1]] for expertise/feedback
- [ ] Discuss with [[Portfolio Company X]] as potential pilot
- [ ] Validate demand with [[Potential Customer Y]]
- [ ] Review [[Related Research Z]] for supporting data

### Near-Term (This Month)
- [ ] Propose to [[Client A]] as consulting service extension
- [ ] Create content series based on this idea
- [ ] Build small prototype/proof of concept
- [ ] Connect with [[Contact B]] for collaboration discussion

### Long-Term (This Quarter)
- [ ] Launch pilot with [[Best Match Company]]
- [ ] Document case study for portfolio/content
- [ ] Expand to [[Additional Company 1]] and [[Additional Company 2]]
- [ ] Build full service offering (if consulting opportunity)

---

## 🔍 GAPS & MISSING CONNECTIONS

### What's Missing?

**Expertise you don't have in network:**
- [Skill/expertise gap 1]
- [Skill/expertise gap 2]

**How to fill:**
- Run `/find-connections [expertise needed]` to search deeper
- Ask existing contacts for intros
- Join communities where these experts are

**Resources you need but don't have:**
- [Resource 1] - [How to acquire]
- [Resource 2] - [How to acquire]

**Portfolio/client gaps:**
- No perfect fit? Consider [[Company Y]] as stretch candidate
- Or pivot idea to better match portfolio needs

---

## 💎 MATCH QUALITY ASSESSMENT

### Overall Match Strength: [Strong / Moderate / Weak]

**Reasoning:**
[Why this assessment]

**Strongest matches:**
- [[Portfolio Company X]]: ⭐⭐⭐
- [[Contact Y]]: ⭐⭐⭐
- [[Project Z]]: ⭐⭐

**Weakest links:**
- [Area where connections are thin]
- [Gap to address]

### Recommendation

**Should you pursue this idea given the connections found?**
[Yes / Maybe / No]

**Key factors:**
- [Factor 1 supporting decision]
- [Factor 2 supporting decision]
- [Factor 3 supporting decision]

**Next command to run:**
- If pursuing: `/idea-archive [idea]` to create execution plan
- If not sure: `/idea-validate [idea]` for full validation

---

## 🔗 RELATED COMMANDS

**To deepen connections:**
- `/find-connections [specific person or company]` - Find intro paths
- `/connect-dots [focus area]` - Broader synergy discovery
- `/portfolio-update` - See which companies most need this now
- `/research [topic]` - Gather market context
- `/competitive-analysis [company]` - Understand competitive landscape

---

*Idea matching completed: [Date]*
*Connections found: [X portfolio, Y network, Z projects]*
*Next: Review top matches and take immediate actions*
```

## Matching Strategy

### Cast a Wide Net
- Don't just look for perfect matches
- Adjacent connections can be valuable
- Weak ties often lead to opportunities

### Be Specific
- "Could help with X" is too vague
- "Could reduce their Y by 40%" is actionable
- Specific applications = better matches

### Prioritize by Strength
- ⭐⭐⭐ High relevance: Pursue immediately
- ⭐⭐ Medium relevance: Keep warm, pursue if capacity
- ⭐ Low relevance: Note for future, don't prioritize

### Look for Leverage
- One-to-one help is good
- One-to-many help is better
- Ideas that serve multiple purposes = highest value

## Integration with Workflow

### After `/idea-validate`
If idea scored well in validation, run `/idea-match` to find execution paths.

### Before `/idea-archive`
Matching helps inform execution plan. Know who to involve before you start.

### Standalone Use
Can run on raw ideas to explore possibilities before full validation.

## Example Workflow

```
User: /idea-match AI-powered portfolio reporting tool

You:
1. Understand idea: Tool to auto-generate portfolio health reports
2. Scan portfolio: Which companies could use this?
   - ⭐⭐⭐ ConfigHub: Could report on customer usage patterns
   - ⭐⭐⭐ DataFlint: Reporting is their core business, could partner
   - ⭐⭐ XORQ: Could use for internal metrics
3. Scan network: Who could help?
   - Contact A: Built similar reporting tools, could advise
   - Contact B: Potential customer (runs ops at portfolio company)
   - Contact C: Data visualization expert
4. Scan projects: Where does this fit?
   - Current consulting: 2 clients need better reporting
   - Content: Wrote about portfolio operations recently
   - EncodedVC pitch: This demonstrates capabilities
5. Identify synergies:
   - Build for own portfolio → consulting service → EncodedVC demo
   - High leverage: serves 3 purposes simultaneously
6. Recommendations:
   - Start with own 7 companies as pilot
   - Expand to consulting client as paying validation
   - Use in EncodedVC pitch as proof of concept
   - Approach DataFlint about partnership

Top 3 actions this week:
1. Build prototype for own portfolio (proves concept)
2. Discuss with Client X as potential paid project
3. Show to DataFlint founder for feedback/partnership

Next: /idea-archive to create execution plan with these connections baked in
```

---

## Important Notes

- **Connections change over time:** Re-run periodically as vault grows
- **Quantity ≠ quality:** 3 strong matches > 20 weak ones
- **Act on matches:** Finding connections is useless without follow-through
- **Update vault:** As you execute, document what worked/didn't
- **Weak ties matter:** Don't dismiss medium-relevance matches
- **Ask for intros:** Your network's network is 10x larger

---

*This command turns ideas into execution by finding the resources already in your network*
*The best ideas leverage what you already have*
