#!/usr/bin/env python3
"""
LinkedIn Connections Importer
Imports LinkedIn CSV export into structured Obsidian contact files
"""

import csv
import os
import sys
from pathlib import Path
import re

def sanitize_filename(name):
    """Convert name to safe filename"""
    # Remove special characters, keep alphanumeric, spaces, hyphens
    name = re.sub(r'[^\w\s-]', '', name)
    # Replace spaces with underscores
    name = name.replace(' ', '_')
    # Remove multiple underscores
    name = re.sub(r'_+', '_', name)
    return name.strip('_')

def create_contact_file(contact, output_dir):
    """Create an Obsidian contact file with YAML frontmatter"""

    first_name = contact.get('First Name', '').strip()
    last_name = contact.get('Last Name', '').strip()
    full_name = f"{first_name} {last_name}".strip()

    if not full_name:
        return None  # Skip if no name

    company = contact.get('Company', '').strip()
    title = contact.get('Position', '').strip()
    linkedin = contact.get('URL', '').strip()
    email = contact.get('Email Address', '').strip()
    connected_on = contact.get('Connected On', '').strip()

    # Create filename
    filename = sanitize_filename(full_name) + '.md'
    filepath = output_dir / filename

    # Skip if file already exists
    if filepath.exists():
        return None

    # Create YAML frontmatter
    yaml_company = f'"{company}"' if company else '""'
    yaml_email = email if email else ''

    # Build tags based on title
    tags = ['linkedin']
    if title:
        title_lower = title.lower()
        if any(word in title_lower for word in ['ceo', 'founder', 'co-founder']):
            tags.append('founder')
        if any(word in title_lower for word in ['cto', 'vp', 'director', 'head', 'lead']):
            tags.append('leadership')
        if any(word in title_lower for word in ['investor', 'vc', 'venture', 'partner']):
            tags.append('investor')
        if any(word in title_lower for word in ['engineer', 'developer', 'architect']):
            tags.append('engineer')

    tags_str = ', '.join(tags)

    # Create file content
    content = f"""---
type: contact
name: {full_name}
company: {yaml_company}
title: {title}
email: {yaml_email}
linkedin: {linkedin}
tags: [{tags_str}]
relationship_strength: weak
last_contact: {connected_on}
source: linkedin_import
---

# {full_name}

## Quick Notes

## Recent Interactions

## Relevant To
- Companies: {company if company else ''}

## Follow-up Actions
- [ ]
"""

    # Write file
    try:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        return full_name
    except Exception as e:
        print(f"Error creating {filename}: {e}")
        return None

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 import-linkedin-contacts.py <path-to-connections.csv>")
        sys.exit(1)

    csv_path = sys.argv[1]
    vault_path = Path("/Users/elbowspeak1/Documents/Obsidian Vault/Doikayt")
    output_dir = vault_path / "Contacts" / "LinkedIn"

    # Create output directory
    output_dir.mkdir(parents=True, exist_ok=True)

    print(f"Importing LinkedIn connections from: {csv_path}")
    print(f"Output directory: {output_dir}")
    print()

    imported = []
    skipped = []
    errors = []

    try:
        with open(csv_path, 'r', encoding='utf-8') as f:
            # Skip the notes header (first 3 lines)
            for _ in range(3):
                next(f)

            reader = csv.DictReader(f)
            total = 0

            for row in reader:
                total += 1
                result = create_contact_file(row, output_dir)

                if result:
                    imported.append(result)
                    if total % 100 == 0:
                        print(f"Processed {total} contacts... ({len(imported)} imported)")
                elif result is None and row.get('First Name'):
                    skipped.append(f"{row.get('First Name')} {row.get('Last Name')}")

        print()
        print("=" * 60)
        print("IMPORT COMPLETE")
        print("=" * 60)
        print(f"✅ Successfully imported: {len(imported)} contacts")
        print(f"⚠️  Skipped (duplicates): {len(skipped)} contacts")
        print(f"❌ Errors: {len(errors)}")
        print()
        print(f"Contacts saved to: {output_dir}")
        print()
        print("Next steps:")
        print("1. Review contacts in Obsidian")
        print("2. Update relationship_strength for strong connections")
        print("3. Add notes and context to key contacts")
        print("4. Run /find-connections to explore network")

    except Exception as e:
        print(f"Error processing CSV: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
