# Update Contact

Quick workflow to log interactions and update contact information.

## Instructions

When the user runs `/update-contact [name]`, provide a streamlined interaction logging workflow.

## Process

1. **Find the contact** - Search vault for contact file
2. **Show current status** - Display last interaction, relationship strength
3. **Log new interaction** - Add timestamped note
4. **Update fields** - Prompt for field updates (last_contact, relationship_strength, etc.)
5. **Suggest actions** - Based on interaction, suggest follow-ups

## Interaction Format

Add to contact file under "Recent Interactions":
```markdown
## Recent Interactions
- 2025-11-11: [Type] - [Brief description]
  - Context: [Additional details]
  - Outcome: [Result/next steps]
  - Follow-up: [[Action item]]
```

## Interaction Types
- Call
- Email
- Meeting (in-person)
- Meeting (virtual)
- Introduction made
- Event/Conference
- LinkedIn message
- Other

## Auto-Updates

After logging interaction:
- Update `last_contact` date in YAML
- Suggest relationship strength change if appropriate
- Check if follow-up action needed
- Link to any mentioned companies/projects

## Quick Mode

For rapid logging:
```
/update-contact John Doe
> Type: Call
> Notes: Discussed DataFlint partnership opportunity
> Follow-up: Send intro to DataFlint founder
✅ Updated! Next action created.
```

## Important Notes

- Always update `last_contact` timestamp in YAML
- Preserve all previous interaction history
- Link to relevant projects/companies mentioned
- Create follow-up tasks when appropriate
