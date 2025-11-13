---
name: skill-creator
description: Guide for creating effective skills that extend Claude's capabilities through specialized knowledge, workflows, and tool integrations
keywords: [skill creation, skill design, skill development, claude skills, skill packaging, progressive disclosure]
---

# Skill Creator

## Core Purpose
This skill provides guidance for creating effective skills that extend Claude's capabilities through specialized knowledge, workflows, and tool integrations.

## Key Definitions

**Skills** are modular packages functioning as "onboarding guides" for specific domains. They transform Claude "into a specialized agent equipped with procedural knowledge."

## What Skills Provide

1. **Specialized workflows** - multi-step domain procedures
2. **Tool integrations** - instructions for specific file formats/APIs
3. **Domain expertise** - company-specific knowledge and logic
4. **Bundled resources** - scripts, references, and assets

## Skill Anatomy

### Required Components

**SKILL.md** with:
- YAML frontmatter containing name and description
- Markdown instructions for Claude

### Optional Bundled Resources

**scripts/** - executable code (Python/Bash) for deterministic, reusable tasks
- Use for: data processing, API calls, file manipulation
- Benefits: Reliability, performance, reusability

**references/** - documentation loaded as needed
- Schemas, API specs, style guides
- Company policies and procedures
- Technical documentation

**assets/** - output files not loaded into context
- Templates and boilerplates
- Images and graphics
- Fonts and design resources

## Progressive Disclosure Design

Three-level loading system manages context efficiently:

1. **Metadata (name/description)** - always available
2. **SKILL.md body** - loads when skill triggers
3. **Bundled resources** - loaded as needed

This approach optimizes token usage and maintains performance.

## Six-Step Creation Process

### Step 1: Understand Skill Usage
- Gather concrete examples of desired behavior
- Document specific use cases
- Identify patterns and commonalities
- Clarify success criteria

### Step 2: Plan Reusable Contents
Analyze each example to identify:
- **Repeated procedures** → workflows in SKILL.md
- **Static reference info** → files in references/
- **Deterministic operations** → scripts in scripts/
- **Generated artifacts** → templates in assets/

### Step 3: Initialize Skill
Use the initialization script:
```bash
scripts/init_skill.py <skill-name> --path <directory>
```

This creates the basic folder structure with skeleton files.

### Step 4: Edit Reusable Contents

**For SKILL.md:**
- Use imperative/infinitive form (not second person)
- Prefer objective, instructional language
- Avoid conversational tone
- Be clear and concise
- Structure with headings
- Use examples when helpful

**Example - Good:**
```
Extract data from the Excel file and generate a summary report.
Use the schema in references/data-schema.json for validation.
```

**Example - Avoid:**
```
Hey! You should look at the Excel file and make a cool report.
Check out that schema file if you want.
```

### Step 5: Package Skill
Run validation and packaging:
```bash
scripts/package_skill.py <path>
```

This script:
- Validates SKILL.md structure
- Checks for required metadata
- Verifies file references
- Creates deployment package

### Step 6: Iterate
- Test with real-world scenarios
- Gather user feedback
- Refine instructions based on usage
- Update bundled resources as needed
- Version control your changes

## Writing Guidelines

### Voice and Tone
- ✅ Use imperative: "Extract the data"
- ✅ Use infinitive: "To extract the data"
- ❌ Avoid second person: "You should extract the data"

### Style
- ✅ Objective and instructional
- ✅ Clear and specific
- ❌ Conversational or casual
- ❌ Vague or ambiguous

### Structure
- Start with overview/purpose
- Break into logical sections
- Use headings for organization
- Include examples for clarity
- Reference bundled resources by path

## Best Practices

### Context Efficiency
- Keep SKILL.md focused and concise
- Move detailed specs to references/
- Use scripts for repetitive operations
- Store templates in assets/

### Maintainability
- Version control all skill components
- Document changes and rationale
- Use clear naming conventions
- Keep related skills modular

### Usability
- Test with diverse inputs
- Provide clear examples
- Handle edge cases
- Document limitations

### Progressive Enhancement
- Start simple, add complexity as needed
- Layer advanced features on solid foundation
- Maintain backward compatibility
- Consider skill composition

## Common Patterns

### Data Processing Skill
- SKILL.md: workflow and instructions
- scripts/: processing logic
- references/: schemas and specs
- assets/: output templates

### API Integration Skill
- SKILL.md: API usage guidance
- scripts/: authentication and requests
- references/: API documentation
- assets/: request/response templates

### Document Generation Skill
- SKILL.md: generation workflow
- scripts/: formatting logic
- references/: style guides
- assets/: document templates

### Analysis Skill
- SKILL.md: analysis framework
- scripts/: calculation and modeling
- references/: methodology docs
- assets/: report templates
