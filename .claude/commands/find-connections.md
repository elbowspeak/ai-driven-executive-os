# Find Connections

Search the Obsidian vault for relevant connections to help with the user's query.

## Instructions

When the user runs `/find-connections [query]`, you should:

1. **Parse the query** - Understand what they're looking for:
   - A company name (e.g., "XORQ", "DataFlint")
   - A project (e.g., "Kinectome", "Active Inference")
   - A topic (e.g., "AI agents", "cybersecurity", "data infrastructure")
   - A person's name

2. **Search the vault** systematically:
   - Search `Biz Dev/` folder for company-related contacts
   - Search `Consulting/` folder for client connections
   - Search individual contact files (look for YAML frontmatter with contact info)
   - Search for mentions in daily notes and project files

3. **Identify connection types**:
   - **Direct contacts**: People who work at or are associated with the target
   - **Warm intros**: People who know the target (look for "introduced_by" fields)
   - **Topic experts**: People with relevant expertise
   - **Related companies**: Companies in similar space or with partnerships

4. **Present results in this format**:

```
🎯 Connections for: [Query]

👤 DIRECT CONTACTS
- Name (Company/Title)
  - Last contact: [date]
  - Relationship: [strength]
  - File: [[Link to note]]
  - Context: [brief note about relevance]

🤝 WARM INTRO PATHS
- Target Person
  - Via: Contact A → Contact B → Target
  - Strength: Strong/Medium/Weak
  - Suggested approach: [brief suggestion]

💡 RELEVANT EXPERTISE
- Expert Name (Topic/Company)
  - Why relevant: [explanation]
  - File: [[Link]]

🏢 RELATED COMPANIES/PROJECTS
- Company/Project Name
  - Relationship: [how it relates]
  - Key contacts: [list]

📋 SUGGESTED ACTIONS
- [ ] Reach out to X about Y
- [ ] Schedule intro call with Z
- [ ] Review notes from last conversation with A
```

5. **Be proactive**:
   - If no direct connections found, suggest who might know someone
   - Look for 2-degree connections
   - Suggest companies/projects that might have relevant contacts
   - Recommend adding specific contact information if gaps identified

6. **Context awareness**:
   - Check when contacts were last reached out to (avoid suggesting recent contacts)
   - Consider relationship strength (prioritize "strong" relationships)
   - Look at relevant tags and topics

## Example Usage

```
User: /find-connections XORQ
```

You would search for:
- XORQ company files
- Mentions of XORQ founders/employees
- People who work in data infrastructure
- Portfolio companies with related tech
- Any warm intro paths to XORQ team

```
User: /find-connections cybersecurity expert
```

You would search for:
- Contacts with cybersecurity background
- Tenzai (portfolio company in security)
- Related consulting projects
- People who could advise on security topics

## Important Notes

- Always use the Grep and Read tools to search the vault - don't rely on memory
- Check multiple locations: Biz Dev, Consulting, Personal, Kinectome folders
- Look for both direct file names and content mentions
- Prioritize recent interactions and strong relationships
- Suggest creating contact notes if important connections are missing structured data
