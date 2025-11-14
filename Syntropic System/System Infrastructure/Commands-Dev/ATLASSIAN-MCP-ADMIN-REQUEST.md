# Atlassian MCP Integration - Admin Approval Request

**Status:** Awaiting admin approval for OAuth authentication
**Date:** 2025-11-12
**Blocker:** SOC2 compliance policy requires admin approval for third-party OAuth integrations

---

## 🎯 What I'm Requesting

Permission to authenticate the **Atlassian MCP Server** with my Claude Code CLI to integrate Jira and Confluence into my local Obsidian workspace.

---

## 📋 Technical Details for Admin

### What is This?

- **Official Atlassian MCP Server**: Maintained by Atlassian, not a third-party tool
- **Server URL**: `https://mcp.atlassian.com/v1/sse`
- **Provider**: Atlassian (hosted on Cloudflare infrastructure)
- **Protocol**: Model Context Protocol (MCP) - standardized by Anthropic

### What Does It Access?

- **Jira Cloud**: Read/write access to Jira issues, projects, sprints
- **Confluence Cloud**: Read/write access to Confluence pages and spaces
- **Authentication Method**: OAuth 2.0 with user-level permissions

### Security & Compliance

✅ **All traffic encrypted** via HTTPS using TLS 1.2 or later
✅ **OAuth 2.0** ensures secure authentication and access control
✅ **Respects user permissions** - only accesses data I already have permission to see
✅ **Atlassian-hosted** - no third-party intermediary
✅ **Official integration** - announced by Atlassian in partnership with Anthropic

### What It Does NOT Do

❌ Does not store data on external servers (runs locally)
❌ Does not bypass Jira/Confluence permissions
❌ Does not grant access to other users' data
❌ Does not create backdoor access

---

## 💼 Business Justification

### Current Pain Points

1. **Context Switching**: Switching between Obsidian, Jira, Confluence, and Claude disrupts workflow
2. **Manual Updates**: Manually copying Jira tasks into daily briefs is time-consuming
3. **Disconnected Data**: Portfolio management system doesn't integrate with project tracking

### Benefits After Integration

1. **Unified Workspace**: Jira tasks appear automatically in daily briefs
2. **Time Savings**: 3-5 hours/week saved on manual task tracking and updates
3. **Better Context**: AI can reference Jira issues when helping with work
4. **Improved Accuracy**: Single source of truth for task status

### Use Cases

- Pull Jira tasks into daily brief automatically
- Query Jira issues from Claude Code without opening browser
- Reference Confluence documentation in AI conversations
- Update Jira issues from command line

---

## 🔧 Technical Implementation

### What's Already Done

```bash
# MCP server installed locally
claude mcp add --transport sse atlassian https://mcp.atlassian.com/v1/sse
```

### What Requires Admin Approval

The OAuth authentication flow:
1. Trigger OAuth from Claude Code CLI
2. Browser opens to Atlassian login
3. Grant permissions to Atlassian MCP Server
4. OAuth token stored locally on my machine

### What Admins Can Control

- **Workspace Access**: Which Jira/Confluence workspaces I can connect
- **Scope Limitation**: Can restrict to read-only if needed
- **Revocation**: Can revoke OAuth tokens at any time from Atlassian admin console
- **Audit Logs**: All API access logged in Atlassian audit logs

---

## 📚 Official Documentation

### Atlassian Resources

- **Official Announcement**: https://www.atlassian.com/blog/announcements/remote-mcp-server
- **Setup Guide**: https://support.atlassian.com/atlassian-rovo-mcp-server/docs/getting-started-with-the-atlassian-remote-mcp-server/
- **Security Details**: https://support.atlassian.com/atlassian-rovo-mcp-server/docs/security/

### Anthropic Resources

- **Claude Code MCP Docs**: https://docs.claude.com/en/docs/claude-code/mcp
- **Model Context Protocol**: https://modelcontextprotocol.io/introduction

---

## ✅ Approval Checklist for Admin

**What the admin needs to verify:**

- [ ] User has legitimate business need for Jira/Confluence integration
- [ ] User already has access to the Jira/Confluence workspaces in question
- [ ] OAuth flow follows company security policies
- [ ] Integration is official Atlassian/Anthropic partnership (not third-party)
- [ ] Audit logging is enabled in Atlassian workspace
- [ ] User understands data handling policies

**What the admin needs to approve:**

- [ ] Permission to complete OAuth flow for Atlassian MCP Server
- [ ] Access to Jira workspace: [Your Workspace Name]
- [ ] Access to Confluence workspace: [Your Workspace Name]
- [ ] Scope: Read/Write (or Read-Only if preferred)

---

## 🔐 Security Questions Admins Might Ask

### Q: Where is the data stored?
**A:** Data stays in Jira/Confluence. The MCP server only facilitates API calls from my local machine to Atlassian's servers. No data is stored by the MCP server itself.

### Q: Who can access my Jira/Confluence data through this?
**A:** Only me. OAuth tokens are stored locally on my machine and are tied to my Atlassian account. They respect my existing Jira/Confluence permissions.

### Q: Can this be revoked?
**A:** Yes. Admin can revoke OAuth tokens at any time from Atlassian admin console, or I can disconnect the integration from Claude Code.

### Q: Is this audited?
**A:** Yes. All API calls appear in Atlassian audit logs, showing which resources were accessed and when.

### Q: What if my machine is compromised?
**A:** OAuth tokens are stored in system keychain (macOS) or equivalent secure storage. If compromised, revoke tokens from Atlassian admin console immediately.

### Q: Does this use AI on our data?
**A:** Claude Code uses AI locally on my machine. When I ask Claude to interact with Jira/Confluence, API calls are made to Atlassian servers. No Jira/Confluence data is sent to Anthropic unless I explicitly include it in a prompt.

---

## 🚀 Next Steps

### After Admin Approval

1. Complete OAuth authentication flow
2. Test connection and verify access
3. Build custom commands for workflow integration
4. Document usage and best practices

### Estimated Time to Complete

- **OAuth authentication**: 5 minutes
- **Testing and verification**: 10 minutes
- **Command creation**: 30-45 minutes
- **Total**: 45-60 minutes after approval granted

---

## 📞 Contact for Questions

**Employee**: Joshua Shane
**Email**: joshua@elbowspeak.com
**Team**: [Your Team Name]
**Manager**: [Your Manager Name]

**IT/Security Contact**: [Your IT Admin Name/Email]

---

## 📎 Attachments

**Supporting documents:**
- Atlassian official blog post (link above)
- Claude Code documentation (link above)
- Security whitepaper from Atlassian (if required)

---

**Status**: Awaiting approval
**Priority**: Medium (workflow optimization, not blocking critical work)
**Timeline**: Can proceed with other work while waiting for approval

---

*This integration will save 3-5 hours/week once operational.*
