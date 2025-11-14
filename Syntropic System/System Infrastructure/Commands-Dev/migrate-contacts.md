# Migrate Contacts

Upgrade existing contact files to use standardized YAML schema and enhance with structured data.

## Instructions

When the user runs `/migrate-contacts [folder or file]`, help them standardize existing contact information.

## 1. Discovery Phase

**Scan for existing contacts:**
- Search for files with contact information in:
  - `Biz Dev/` folder
  - `Consulting/` folder
  - `Personal/` folder
  - `Kinectome/` folder
  - Any files with people's names
- Identify files that have:
  - Email addresses
  - Phone numbers
  - LinkedIn URLs
  - Company affiliations
  - Contact notes

**Present findings:**
```markdown
# Contact Migration Analysis

Found potential contacts in:
- 15 files in Biz Dev/ folder
- 8 files in Consulting/ folder
- 23 mentions in daily notes
- 5 files in Personal/ folder

## Files with Contact Information:
1. [[Scott David]] - Has email, company info
2. [[Phil Dixon]] - Has basic notes
3. [[Brian Rivera]] - Has company, role
[...]

## Recommended Migration:
- ✅ High Priority: 10 contacts (complete info, active relationships)
- ⚠️ Medium Priority: 15 contacts (partial info)
- 💤 Low Priority: 8 contacts (minimal info or inactive)
```

## 2. Contact Schema Standard

**Full YAML schema:**
```yaml
---
type: contact
name: Full Name
company: "[[Company Name]]"
title: Job Title
email: email@example.com
phone: +1-555-0123
linkedin: https://linkedin.com/in/username
twitter: @username
location: City, State/Country
tags: [founder, investor, warm-intro, fintech]
relationship_strength: strong | medium | weak
last_contact: 2025-11-11
introduced_by: "[[Person Name]]"
relevant_companies: [[Company A]], [[Company B]]
relevant_projects: [[Project X]], [[Project Y]]
notes: Quick context notes
status: active | dormant | archived
---
```

## 3. Migration Process

For each contact file:

**A. Extract Existing Information:**
- Read current file content
- Identify all structured data (emails, companies, dates)
- Note any context or relationship information

**B. Enhance with Inferencing:**
- **Tags**: Infer from job title, company, content
- **Relationship Strength**: Ask user or infer from context
- **Relevant Companies**: Look for portfolio company mentions
- **Status**: Default to "active" unless context suggests dormant

**C. Create/Update File:**
- Add YAML frontmatter with all discovered data
- Preserve existing content in body
- Organize into standard sections

## Important Notes

- Always preserve original content - migration should be additive
- Ask user for confirmation on batch changes
- Test with 2-3 contacts before batch processing
- After migration, run `/find-connections` to verify improved functionality
