#!/bin/bash
# Network Intelligence Query Tool
# Runs queries on LinkedIn contacts and saves results to vault

VAULT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
CONTACTS_DIR="$VAULT_DIR/Contacts/LinkedIn"
QUERIES_DIR="$VAULT_DIR/Consulting/Biz Dev/Network/Queries"
DATE=$(date +%Y-%m-%d)
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Create queries directory if needed
mkdir -p "$QUERIES_DIR"

# Parse command line arguments
QUERY_TYPE="${1:-overview}"
QUERY_PARAM="${2:-}"

# Function to create markdown header
create_header() {
    local title="$1"
    local description="$2"

    cat << EOF
# $title

**Date:** $TIMESTAMP
**Total Network Size:** $(find "$CONTACTS_DIR" -type f -name "*.md" | wc -l | tr -d ' ') contacts

$description

---

EOF
}

# Function to list contacts with details
list_contacts() {
    local files="$1"
    local count=0

    echo ""
    echo "## Contacts Found"
    echo ""

    for file in $files; do
        if [ -f "$file" ]; then
            ((count++))
            local name=$(grep "^name:" "$file" | sed 's/name: //')
            local company=$(grep "^company:" "$file" | sed 's/company: "\(.*\)"/\1/')
            local title=$(grep "^title:" "$file" | sed 's/title: //')
            local linkedin=$(grep "^linkedin:" "$file" | sed 's/linkedin: //')

            echo "### $count. $name"
            echo ""
            echo "- **Company:** $company"
            echo "- **Title:** $title"
            echo "- **LinkedIn:** $linkedin"
            echo "- **File:** [[$(basename "$file" .md)]]"
            echo ""
        fi
    done

    echo "---"
    echo ""
    echo "**Total Results:** $count contacts"
}

# Query types
case "$QUERY_TYPE" in
    overview)
        OUTPUT_FILE="$QUERIES_DIR/Network-Overview-$DATE.md"

        create_header "Network Overview" "Complete breakdown of your professional network." > "$OUTPUT_FILE"

        cat >> "$OUTPUT_FILE" << 'EOF'
## By Role

EOF

        echo "- **Founders/CEOs:** $(grep -l "tags:.*founder" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Investors:** $(grep -l "tags:.*investor" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Leadership:** $(grep -l "tags:.*leadership" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Engineers:** $(grep -l "tags:.*engineer" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"

        cat >> "$OUTPUT_FILE" << 'EOF'

## Top Companies

EOF

        grep "^company:" "$CONTACTS_DIR"/*.md | sed 's/.*company: "\(.*\)"/\1/' | sort | uniq -c | sort -rn | head -10 | while read count company; do
            echo "- **$company** - $count connections" >> "$OUTPUT_FILE"
        done

        cat >> "$OUTPUT_FILE" << 'EOF'

## By Expertise

EOF

        echo "- **AI/ML:** $(grep -i "title:.*\(AI\|machine learning\|ML\)" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Cybersecurity:** $(grep -i "title:.*\(security\|cybersecurity\)" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Data Science:** $(grep -i "title:.*data.*scien" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"
        echo "- **Product Management:** $(grep -i "title:.*product" "$CONTACTS_DIR"/*.md | wc -l | tr -d ' ') contacts" >> "$OUTPUT_FILE"

        echo "" >> "$OUTPUT_FILE"
        echo "---" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
        echo "*Run specific queries with: \`bash Scripts/automation/network-query.sh [query-type] [parameter]\`*" >> "$OUTPUT_FILE"

        echo "✓ Overview saved to: $OUTPUT_FILE"
        ;;

    founders)
        KEYWORD="${QUERY_PARAM:-}"
        if [ -n "$KEYWORD" ]; then
            OUTPUT_FILE="$QUERIES_DIR/Founders-$KEYWORD-$DATE.md"
            FILES=$(grep -l "tags:.*founder" "$CONTACTS_DIR"/*.md | xargs grep -il "$KEYWORD")
            DESCRIPTION="Founders and CEOs with \"$KEYWORD\" in their profile."
        else
            OUTPUT_FILE="$QUERIES_DIR/All-Founders-$DATE.md"
            FILES=$(grep -l "tags:.*founder" "$CONTACTS_DIR"/*.md)
            DESCRIPTION="All founders and CEOs in your network."
        fi

        create_header "Founders Query" "$DESCRIPTION" > "$OUTPUT_FILE"
        list_contacts "$FILES" >> "$OUTPUT_FILE"

        echo "✓ Founders query saved to: $OUTPUT_FILE"
        ;;

    investors)
        KEYWORD="${QUERY_PARAM:-}"
        if [ -n "$KEYWORD" ]; then
            OUTPUT_FILE="$QUERIES_DIR/Investors-$KEYWORD-$DATE.md"
            FILES=$(grep -l "tags:.*investor" "$CONTACTS_DIR"/*.md | xargs grep -il "$KEYWORD")
            DESCRIPTION="Investors with \"$KEYWORD\" in their profile."
        else
            OUTPUT_FILE="$QUERIES_DIR/All-Investors-$DATE.md"
            FILES=$(grep -l "tags:.*investor" "$CONTACTS_DIR"/*.md)
            DESCRIPTION="All investors in your network."
        fi

        create_header "Investors Query" "$DESCRIPTION" > "$OUTPUT_FILE"
        list_contacts "$FILES" >> "$OUTPUT_FILE"

        echo "✓ Investors query saved to: $OUTPUT_FILE"
        ;;

    company)
        if [ -z "$QUERY_PARAM" ]; then
            echo "Error: Please provide a company name"
            echo "Usage: bash Scripts/automation/network-query.sh company \"Company Name\""
            exit 1
        fi

        OUTPUT_FILE="$QUERIES_DIR/Company-$(echo "$QUERY_PARAM" | tr ' ' '-')-$DATE.md"
        FILES=$(grep -i "company:.*$QUERY_PARAM" "$CONTACTS_DIR"/*.md | cut -d: -f1 | uniq)
        DESCRIPTION="Contacts at **$QUERY_PARAM**."

        create_header "Company Query: $QUERY_PARAM" "$DESCRIPTION" > "$OUTPUT_FILE"
        list_contacts "$FILES" >> "$OUTPUT_FILE"

        echo "✓ Company query saved to: $OUTPUT_FILE"
        ;;

    keyword)
        if [ -z "$QUERY_PARAM" ]; then
            echo "Error: Please provide a keyword"
            echo "Usage: bash Scripts/automation/network-query.sh keyword \"AI\""
            exit 1
        fi

        OUTPUT_FILE="$QUERIES_DIR/Keyword-$(echo "$QUERY_PARAM" | tr ' ' '-')-$DATE.md"
        FILES=$(grep -il "$QUERY_PARAM" "$CONTACTS_DIR"/*.md)
        DESCRIPTION="Contacts with \"$QUERY_PARAM\" in their profile (title, company, or notes)."

        create_header "Keyword Query: $QUERY_PARAM" "$DESCRIPTION" > "$OUTPUT_FILE"
        list_contacts "$FILES" >> "$OUTPUT_FILE"

        echo "✓ Keyword query saved to: $OUTPUT_FILE"
        ;;

    *)
        echo "Unknown query type: $QUERY_TYPE"
        echo ""
        echo "Available query types:"
        echo "  overview              - Complete network breakdown"
        echo "  founders [keyword]    - Find founders (optionally filter by keyword)"
        echo "  investors [keyword]   - Find investors (optionally filter by keyword)"
        echo "  company \"Name\"       - Find all contacts at a company"
        echo "  keyword \"term\"       - Search for any keyword"
        echo ""
        echo "Examples:"
        echo "  bash Scripts/automation/network-query.sh overview"
        echo "  bash Scripts/automation/network-query.sh founders AI"
        echo "  bash Scripts/automation/network-query.sh company \"Microsoft\""
        echo "  bash Scripts/automation/network-query.sh keyword \"machine learning\""
        exit 1
        ;;
esac

# Open the file in Obsidian (optional)
echo ""
echo "View in Obsidian: Network/Queries/$(basename "$OUTPUT_FILE")"
