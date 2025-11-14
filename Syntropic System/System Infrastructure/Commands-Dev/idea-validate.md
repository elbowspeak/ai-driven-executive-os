# Idea Validate

Turn raw ideas into structured validation frameworks with actionable next steps.

## Instructions

When the user runs `/idea-validate [idea]`, create a comprehensive validation analysis to determine if an idea is worth pursuing.

## Usage

```
/idea-validate AI-powered portfolio reporting tool
/idea-validate New consulting service for early-stage startups
/idea-validate Content series on agentic AI trends
/idea-validate [any idea from Ideas/ folder or new idea]
```

## Purpose

The Ideas/ folder is full of potential. This command helps you:
- Validate ideas systematically (not gut feel)
- Identify which ideas to pursue vs. shelf
- Connect ideas to execution opportunities
- Build momentum from ideas → action

## Validation Framework

### 1. **Clarify the Idea**
- What exactly is this idea?
- What problem does it solve?
- Who is it for?
- What would success look like?

### 2. **Market Validation**
- Is there demand for this?
- Who else is doing something similar?
- What's the competitive landscape?
- What's the market size/opportunity?

### 3. **Execution Feasibility**
- What skills/resources needed?
- How long would this take?
- What's the cost (time, money, opportunity)?
- Do you have what's needed, or can you get it?

### 4. **Strategic Fit**
- Does this align with your goals?
- How does it connect to existing work (portfolio, consulting, network)?
- What opportunities does it unlock?
- What's the risk if you don't do this?

### 5. **Decision Framework**
- Opportunity score (1-10)
- Feasibility score (1-10)
- Strategic fit score (1-10)
- Overall recommendation (Pursue / Maybe / Shelf)

## Output Format

Create file: `Ideas/Validated/[Idea_Name]_Validation_[Date].md`

```markdown
# Idea Validation: [Idea Name]
**Date:** [YYYY-MM-DD]
**Status:** [Validated / Needs More Research / Shelved]
**Priority:** [High / Medium / Low]

---

## 🎯 IDEA SUMMARY

**One-Line Description:**
[What is this idea in one sentence?]

**Problem It Solves:**
[What pain point does this address?]

**Target Audience:**
[Who is this for? Be specific.]

**Success Looks Like:**
[How do you know if this works?]

---

## 💡 IDEA DETAILS

### What Exactly Is This?
[Expand on the idea. What would you actually build/create/do?]

### Why Now?
[What makes this timely? Why not 6 months ago or 6 months from now?]

### Inspiration/Trigger:**
[What prompted this idea? Conversation? Observation? Pattern you noticed?]

---

## 📊 MARKET VALIDATION

### Demand Signals
**Is there demand for this?**
- [Evidence 1: e.g., "3 people asked me about this"]
- [Evidence 2: e.g., "See similar solutions getting traction"]
- [Evidence 3: e.g., "Market research shows $XM opportunity"]

**Confidence in demand:** [High / Medium / Low]
**Reasoning:** [Why this confidence level?]

### Competitive Landscape
**Who else is doing this or something similar?**
1. **[Competitor/Alternative 1]**
   - What they do
   - How your idea differs
   - What you can learn from them

2. **[Competitor/Alternative 2]**
   [Same format]

**Competitive advantage:**
[What makes your approach better/different/defensible?]

### Market Size & Opportunity
**If this is a business/service:**
- TAM (Total addressable market): [Estimate]
- SAM (Serviceable available market): [Estimate]
- Realistic reach in Year 1: [Estimate]

**If this is content/personal:**
- Potential audience: [Size estimate]
- Engagement potential: [High/Medium/Low]
- Value created: [How does this help others?]

**Market validation score:** [1-10]
**Reasoning:** [Why this score?]

---

## 🛠️ EXECUTION FEASIBILITY

### Skills & Resources Needed
**What skills are required?**
- [Skill 1] - You have: ✅ / ⚠️ Partial / ❌ Need to acquire
- [Skill 2] - You have: ✅ / ⚠️ Partial / ❌ Need to acquire
- [Skill 3] - You have: ✅ / ⚠️ Partial / ❌ Need to acquire

**What resources are required?**
- Time: [X hours/week for Y weeks]
- Money: [$X upfront, $Y recurring]
- Tools/infrastructure: [What's needed?]
- People: [Need help from anyone?]

### Execution Plan (High-Level)
**Phase 1: [e.g., Research & Validation]**
- Time: [X weeks]
- Key milestones: [What gets done?]
- Success criteria: [How do you know phase 1 worked?]

**Phase 2: [e.g., Build/Create]**
- Time: [X weeks]
- Key milestones: [What gets done?]
- Success criteria: [How do you know phase 2 worked?]

**Phase 3: [e.g., Launch/Ship]**
- Time: [X weeks]
- Key milestones: [What gets done?]
- Success criteria: [How do you know phase 3 worked?]

### Timeline & Commitment
**Total time to MVP/Launch:** [X weeks/months]
**Weekly time commitment:** [X hours/week]
**Total hours invested:** [Y hours]

**Is this realistic given your current commitments?**
[Honest assessment]

### Cost Analysis
**Financial investment:**
- Upfront: $[X]
- Ongoing: $[Y]/month
- Total Year 1: $[Z]

**Opportunity cost:**
- What would you NOT do if you pursue this?
- Is that trade-off worth it?

**Feasibility score:** [1-10]
**Reasoning:** [Why this score?]

---

## 🎯 STRATEGIC FIT

### Alignment with Goals
**Your current goals:**
- [Goal 1]
- [Goal 2]
- [Goal 3]

**How this idea aligns:**
- [Connection to Goal 1]: [Strong / Medium / Weak]
- [Connection to Goal 2]: [Strong / Medium / Weak]
- [Connection to Goal 3]: [Strong / Medium / Weak]

**Strategic alignment score:** [1-10]

### Connection to Existing Work

**Portfolio connections:**
- Could help [[Portfolio Company X]] with [specific thing]
- Validates thesis in [area]
- Opens doors for [opportunity]

**Consulting connections:**
- Could become service offering
- Helps current clients with [problem]
- Demonstrates expertise in [area]

**Network connections:**
- Attracts [type of people] to your network
- Positions you as expert in [topic]
- Opens doors to [opportunities]

**Content/Thought leadership:**
- Establishes credibility in [area]
- Creates content opportunities ([X posts, Y articles])
- Builds personal brand around [theme]

### Opportunity Unlocked
**What becomes possible if you do this?**
- [Opportunity 1]
- [Opportunity 2]
- [Opportunity 3]

**What's the risk if you DON'T do this?**
- [Risk 1: e.g., "Someone else captures this opportunity"]
- [Risk 2: e.g., "Window closes in 6 months"]
- [Risk 3: e.g., "Opportunity cost of not learning X"]

**Strategic fit score:** [1-10]
**Reasoning:** [Why this score?]

---

## 🔍 RISK ANALYSIS

### Execution Risks
**What could go wrong?**
1. **[Risk 1: e.g., Takes longer than expected]**
   - Likelihood: High / Medium / Low
   - Impact: High / Medium / Low
   - Mitigation: [How to reduce this risk]

2. **[Risk 2: e.g., Market demand weaker than expected]**
   - Likelihood: High / Medium / Low
   - Impact: High / Medium / Low
   - Mitigation: [How to reduce this risk]

### Opportunity Costs
**What won't you do if you pursue this?**
- [Alternative 1 you'd pass on]
- [Alternative 2 you'd pass on]

**Are those trade-offs worth it?**
[Honest assessment]

### Worst-Case Scenario
**What's the worst that could happen?**
[Describe worst case]

**Can you live with that outcome?**
[Yes/No and reasoning]

---

## 📈 VALIDATION SCORING

### Opportunity Score (1-10): [X]
**Factors:**
- Market demand: [High/Medium/Low]
- Competitive advantage: [Strong/Moderate/Weak]
- Upside potential: [High/Medium/Low]

**Reasoning:** [Why this score?]

---

### Feasibility Score (1-10): [X]
**Factors:**
- Skills match: [Strong/Moderate/Weak]
- Resource availability: [Sufficient/Tight/Lacking]
- Time commitment: [Manageable/Challenging/Unrealistic]

**Reasoning:** [Why this score?]

---

### Strategic Fit Score (1-10): [X]
**Factors:**
- Goal alignment: [Strong/Moderate/Weak]
- Leverage existing work: [High/Medium/Low]
- Opportunity unlocked: [Significant/Moderate/Minimal]

**Reasoning:** [Why this score?]

---

### **TOTAL SCORE: [X/30]**

**Score interpretation:**
- **25-30:** Strong opportunity, pursue immediately
- **20-24:** Good opportunity, pursue if capacity allows
- **15-19:** Maybe pursue, needs more validation or wait for better timing
- **10-14:** Weak opportunity, likely shelf unless circumstances change
- **<10:** Shelf this idea

---

## ✅ RECOMMENDATION

### **Decision:** [PURSUE / MAYBE / SHELF]

**Reasoning:**
[2-3 paragraphs explaining the decision]

**Key factors:**
- [Factor 1 influencing decision]
- [Factor 2 influencing decision]
- [Factor 3 influencing decision]

---

### If PURSUE:

**Next Steps:**
1. [ ] [Specific action 1]
2. [ ] [Specific action 2]
3. [ ] [Specific action 3]

**Timeline:**
- Start: [Date or "immediately"]
- Key milestones: [Dates and deliverables]
- Ship/Launch: [Target date]

**Success Metrics:**
[How will you measure if this worked?]

**Who to involve:**
- Run `/find-connections [topic]` to identify people who could help
- Run `/connect-dots [topic]` to find portfolio/network synergies

**Move to:** `Ideas/In_Execution/` folder

---

### If MAYBE:

**What needs to happen for this to become a YES?**
1. [Condition 1: e.g., "Validate demand with 5 customer conversations"]
2. [Condition 2: e.g., "Free up 10 hrs/week by finishing X project"]
3. [Condition 3: e.g., "Test key assumption via prototype"]

**Revisit by:** [Date]

**Keep in:** `Ideas/Validated/` folder with status: "Needs More Research"

---

### If SHELF:

**Why shelving?**
[Clear reasoning]

**Could this become viable later?**
[What would need to change?]

**Revisit if:**
- [Condition 1 changes]
- [Condition 2 changes]
- [Condition 3 changes]

**Move to:** `Ideas/Shelved/` folder

---

## 🔗 RELATED

**Similar ideas in vault:**
- [[Related Idea 1]]
- [[Related Idea 2]]

**Portfolio companies this could help:**
- [[Portfolio Company X]] - [How]
- [[Portfolio Company Y]] - [How]

**Network connections to leverage:**
Run `/find-connections [topic]` to identify who could help

**Content opportunities:**
- LinkedIn post series: [Topic]
- Investment memo: [If relevant]
- Portfolio highlight: [If relevant]

---

## 💭 OPEN QUESTIONS

**Questions to answer before proceeding:**
1. [Question 1]
2. [Question 2]
3. [Question 3]

**Who to ask:**
- [Person 1] about [specific question]
- [Person 2] about [specific question]

---

*Validation completed: [Date]*
*Run `/idea-match` to find portfolio/network connections*
*Run `/idea-archive` if pursuing, to move to execution*
```

## Validation Tips

### Be Honest
- Don't convince yourself (that's how bad ideas waste time)
- If score is low, acknowledge it
- Better to shelf early than fail late

### Validate Assumptions
- "I think people want this" → Talk to 5 potential users
- "This will take 2 weeks" → Break down tasks, double the estimate
- "We have competitive advantage" → Actually analyze competitors

### Consider Timing
- Great idea, wrong time = shelf for now
- Good idea, perfect timing = pursue even if imperfect

### Test Cheaply
Before full validation:
- Can you test core assumption in a day?
- Can you build a prototype in a weekend?
- Can you validate demand with 10 conversations?

### Iterate
First pass might be "Maybe" - that's good!
- Identify what would make it "Pursue"
- Do those things
- Re-run validation

## After Validation

### If PURSUE:
```bash
/idea-match [idea]  # Find portfolio/network connections
/idea-archive [idea]  # Move to execution
```

### If MAYBE:
- Document what would change decision
- Set calendar reminder to revisit
- Do small tests to gather more data

### If SHELF:
- Document learnings (why it didn't work)
- Keep for future (conditions might change)
- Celebrate good decision-making (saying no is valuable)

---

## Integration with Vault

### Ideas Folder Structure
```
Ideas/
├── Raw/  (unvalidated ideas, brainstorms)
├── Validated/  (ideas that went through this process)
├── In_Execution/  (ideas being actively worked on)
└── Shelved/  (ideas decided not to pursue)
```

### Workflow
1. Capture ideas in `Ideas/Raw/`
2. Run `/idea-validate` when ready to evaluate
3. Based on recommendation:
   - PURSUE → Run `/idea-match`, then `/idea-archive` to move to execution
   - MAYBE → Keep in `Ideas/Validated/`, set reminder
   - SHELF → Move to `Ideas/Shelved/`

---

## Example Workflow

```
User: /idea-validate AI-powered portfolio reporting tool

You:
1. Clarify the idea (what exactly would this be?)
2. Research market (who else does this? Demand signals?)
3. Assess feasibility (skills needed, time, cost)
4. Evaluate strategic fit (help portfolio? consulting? content?)
5. Score opportunity (X/10), feasibility (Y/10), strategic fit (Z/10)
6. Total score: [X+Y+Z]/30
7. Recommendation: PURSUE if >20, MAYBE if 15-20, SHELF if <15
8. If PURSUE: Specific next steps with timeline
9. Save to: Ideas/Validated/AI_Portfolio_Reporting_Tool_Validation_2025-11-12.md

Key findings:
- Opportunity: High (portfolio needs this, could become consulting service)
- Feasibility: Medium (you have skills but time-intensive)
- Strategic fit: High (aligns with EncodedVC pitch, demonstrates capabilities)
- Recommendation: PURSUE - Start with prototype for your own portfolio

Next: Run /idea-match to find portfolio connections
Then: Run /idea-archive to move to execution with project plan
```

---

## Important Notes

- **Validation ≠ Commitment:** You can validate and still decide not to pursue
- **Score honestly:** Don't inflate scores to justify what you want to do
- **Timing matters:** Great idea + wrong time = wait
- **Test assumptions:** Validation on paper ≠ validation in market
- **Iterate:** First validation might be incomplete, that's okay
- **Celebrate "no":** Shelving bad ideas is success, not failure

---

*This command helps you act on ideas systematically, not impulsively*
*Better decisions = less wasted time = more impact*
