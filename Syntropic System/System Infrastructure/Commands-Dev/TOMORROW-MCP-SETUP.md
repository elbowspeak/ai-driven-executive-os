# Tomorrow: Atlassian MCP Setup

**Priority for 2025-11-12**

---

## 🎯 Goal

Integrate Jira and Confluence into Obsidian via MCP (Model Context Protocol) so you can:
- Pull Jira tasks directly into your vault
- Query Jira issues from Claude Code
- Sync Confluence pages for reference
- Update tasks without leaving Obsidian
- Integrate project management with portfolio/consulting work

---

## 📋 What We'll Do

### 1. **Install Atlassian MCP Server**
- Find/install MCP server for Atlassian
- Configure with your Jira/Confluence credentials
- Test connection

### 2. **Configure Integration**
- Set up API tokens
- Define which projects/spaces to sync
- Configure sync frequency

### 3. **Create Commands**
- `/jira-tasks` - Pull your assigned tasks
- `/jira-project [project]` - Show project tasks
- `/confluence-page [page]` - Pull Confluence page
- Integration with `/daily` - Show Jira tasks in daily brief

### 4. **Test & Refine**
- Verify tasks sync correctly
- Test query commands
- Integrate with existing workflow

---

## 🔧 Prerequisites

**What you'll need:**
- Jira workspace URL
- Confluence workspace URL
- API token (we'll generate this)
- Claude Code CLI (already installed ✅)

**Estimated time:** 60-90 minutes

---

## 📚 Resources

**MCP Documentation:**
- https://modelcontextprotocol.io/introduction
- MCP server examples

**Atlassian APIs:**
- Jira REST API
- Confluence REST API

---

## 💡 Benefits Once Set Up

1. **Unified Workspace**
   - All tasks in one place (Obsidian)
   - No context switching to Jira
   - Tasks appear in daily briefs automatically

2. **Better Task Management**
   - Query tasks via natural language
   - Link Jira tasks to portfolio companies
   - Track time across Jira + consulting work

3. **Documentation Integration**
   - Pull Confluence docs into vault
   - Reference documentation in notes
   - Keep everything connected

---

## 🚀 To Start Tomorrow

Just say:
```
"Let's set up the Atlassian MCP integration.
Read TOMORROW-MCP-SETUP.md for context."
```

I'll guide you through:
1. Finding the right MCP server
2. Installing and configuring it
3. Creating integration commands
4. Testing everything

---

**See you tomorrow!** ✨

---

*Note: This file can be deleted after MCP setup is complete*
