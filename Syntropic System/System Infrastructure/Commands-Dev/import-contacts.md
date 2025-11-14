# Import Contacts

Import contacts from CSV files, LinkedIn exports, or spreadsheets into structured Obsidian notes.

## Instructions

When the user runs `/import-contacts [file-path]`, help them import contact data:

## 1. Detect Source Type

Identify the source format:
- **LinkedIn Export**: CSV with columns like First Name, Last Name, Company, Position, URL
- **Custom Spreadsheet**: User-defined columns
- **Apple Contacts/vCard**: VCF format
- **Other CSV**: Generic comma-separated values

## 2. Read and Parse the File

Use the Read tool to examine the file and:
- Identify column headers
- Detect delimiter (comma, tab, semicolon)
- Count total records
- Show sample of first 3 rows to user

Ask user to confirm column mapping if ambiguous.

## 3. Data Mapping

Map source columns to contact schema:

**Standard Schema Fields:**
```yaml
type: contact
name: [Full Name or First + Last]
company: [Company Name]
title: [Job Title/Position]
email: [Email Address]
phone: [Phone Number]
linkedin: [LinkedIn URL]
twitter: [Twitter/X handle]
location: [City, State/Country]
tags: [to be inferred]
relationship_strength: [to be inferred or asked]
introduced_by: [if known]
last_contact: [if available]
notes: [any additional notes]
```

## 4. Intelligent Enhancements

For each contact, attempt to:

**Infer Tags:**
- If company matches portfolio company → add `[portfolio]`
- Job titles: "CEO/Founder" → `[founder]`, "Investor" → `[investor]`, "Engineer" → `[engineer]`
- Industry keywords: "fintech", "ai", "security", etc.

**Link to Existing Entities:**
- Check if company exists in vault → create `[[Company Name]]` link
- Check if contact already exists → ask about merging
- Look for mutual connections → add to `introduced_by`

**Relationship Strength (if not provided):**
- Ask user: "For [Name], is this: strong / medium / weak / unknown?"
- Or batch process: "Mark all as 'medium' by default? (y/n)"

## 5. Generate Contact Files

For each contact, create a file at:
`/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt/Contacts/[First Last].md`

**File Format:**
```markdown
---
type: contact
name: John Doe
company: "[[Acme Corp]]"
title: CEO & Founder
email: john@acme.com
linkedin: https://linkedin.com/in/johndoe
tags: [founder, enterprise-software, warm-intro]
relationship_strength: strong
last_contact: 2025-11-11
introduced_by: "[[Jane Smith]]"
location: San Francisco, CA
---

# John Doe

## Quick Notes
[Space for user to add context]

## Recent Interactions
-

## Relevant To
- Projects:
- Companies: [[Acme Corp]]

## Follow-up Actions
- [ ]
```

## 6. Import Summary

After processing, provide:

```markdown
# Contact Import Summary

✅ **Successfully Imported:** X contacts
⚠️ **Skipped (Duplicates):** Y contacts
❌ **Failed:** Z contacts

## Created Files:
- [[John Doe]] - Acme Corp, CEO
- [[Jane Smith]] - TechCo, CTO
- [[Bob Wilson]] - StartupXYZ, Founder
[...]

## Suggested Next Steps:
1. Review imported contacts for accuracy
2. Add relationship context and notes
3. Link contacts to relevant projects
4. Update `last_contact` dates if known
5. Run `/find-connections [company]` to explore relationships

## Potential Company Links Found:
- 3 contacts at XORQ (Portfolio)
- 2 contacts at companies similar to DataFlint
- 5 contacts in AI/ML space (relevant to Neurometric, XORQ)

## Tags Applied:
- founder: 12 contacts
- investor: 5 contacts
- engineer: 8 contacts
- enterprise-software: 15 contacts
[...]
```

## 7. Handle Edge Cases

**Duplicate Detection:**
- Check if file with same name already exists
- Check if LinkedIn URL already exists in vault
- Ask user: "Contact [Name] may already exist. Merge? (y/n)"

**Missing Data:**
- If no email/LinkedIn, note it in the file but still create
- Suggest: "Consider adding LinkedIn URLs for better linking"

**Company Creation:**
- If company doesn't exist in vault, ask: "Create company note for [Company]? (y/n)"
- If yes, create basic company stub with YAML frontmatter

## 8. LinkedIn-Specific Handling

LinkedIn exports typically have:
- First Name, Last Name
- Company, Position
- Connected On (date)
- Email Address (often blank)
- Profile URL

**Special handling:**
- Use "Connected On" as `last_contact` date
- Note if email is missing → suggest outreach via LinkedIn
- Prioritize contacts connected more recently

## Example Usage

```
User: /import-contacts ~/Downloads/linkedin-connections.csv
```

You would:
1. Read the CSV
2. Confirm it's a LinkedIn export format
3. Show preview of first 3 records
4. Ask about batch settings (default relationship strength, tags)
5. Create contact files with proper schema
6. Link to existing companies where possible
7. Generate import summary with actionable next steps

```
User: /import-contacts ~/Documents/client-contacts.xlsx
```

You would:
1. Read the Excel file
2. Show column headers
3. Ask user to map columns to schema
4. Proceed with import using mapped fields

## Important Notes

- Always create a backup or list what will be created before executing
- Ask for confirmation before creating many files
- Use Glob/Grep to check for existing contacts before creating duplicates
- Be helpful with data cleaning (standardize phone formats, fix LinkedIn URLs)
- Suggest creating a `Contacts/` folder if it doesn't exist
- After import, suggest running `/find-connections` to discover relationships

## Required Tools

- Read: To parse CSV/Excel files
- Write: To create contact files
- Glob: To check for duplicates
- Grep: To search for existing mentions
- Bash: For file operations if needed
