---
title: "KunihiroS/claude-code-mcp: MCP Server connects with claude code local command."
source: "https://github.com/KunihiroS/claude-code-mcp"
author:
  - "[[KunihiroS]]"
published:
created: 2025-10-28
description: "MCP Server connects with claude code local command. - KunihiroS/claude-code-mcp"
tags:
  - "clippings"
---
MCP Server connects with claude code local command.

[modelcontextprotocol.io/introduction](https://modelcontextprotocol.io/introduction "https://modelcontextprotocol.io/introduction")

[MIT license](https://github.com/KunihiroS/claude-code-mcp/blob/main/LICENSE)

<table><thead><tr><th colspan="2"><span>Name</span></th><th colspan="1"><span>Name</span></th><th><p><span>Last commit message</span></p></th><th colspan="1"><p><span>Last commit date</span></p></th></tr></thead><tbody><tr><td colspan="3"><p><span><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">### Git Commit Messages</a></span></p><p><span><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">f706a4d</a> ·</span></p><p><a href="https://github.com/KunihiroS/claude-code-mcp/commits/main/"><span><span><span>32 Commits</span></span></span></a></p></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/tree/main/claude-code-server">claude-code-server</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/tree/main/claude-code-server">claude-code-server</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/6cc0cba808e4047906e1ed375ab051c3c8385080">Enhance CLAUDE_BIN validation and security checks; update version to …</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/.gitignore">.gitignore</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/.gitignore">.gitignore</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/a41e5cfd457844be6d552011879820de1294ec01">Initial commit</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/Dockerfile">Dockerfile</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/Dockerfile">Dockerfile</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">### Git Commit Messages</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/LICENSE">LICENSE</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/LICENSE">LICENSE</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/ae32b210a39c9c026cb56ecab4caf5aa3515fd3b">Add MIT License and refactor environment variable loading logic for c…</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/README.md">README.md</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/README.md">README.md</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">### Git Commit Messages</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/package.json">package.json</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/package.json">package.json</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">### Git Commit Messages</a></p></td><td></td></tr><tr><td colspan="2"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/pnpm-lock.yaml">pnpm-lock.yaml</a></p></td><td colspan="1"><p><a href="https://github.com/KunihiroS/claude-code-mcp/blob/main/pnpm-lock.yaml">pnpm-lock.yaml</a></p></td><td><p><a href="https://github.com/KunihiroS/claude-code-mcp/commit/f706a4dee8471d7a8daa93a73a36c5109f672736">### Git Commit Messages</a></p></td><td></td></tr><tr><td colspan="3"></td></tr></tbody></table>

## claude-code-mcp Project

### Security Update

- Update @anthropic-ai/claude-code version.

## Overview

The claude-code-mcp project is an MCP server for Claude Code.

It calls the locally installed Claude Code command and provides the following tools: `explain_code`, `review_code`, `fix_code`, `edit_code`, `test_code`, `simulate_command`, and `your_own_query`. The server is implemented using Node.js and the MCP SDK, receiving JSON format requests from clients via stdio. Internally, it adopts Base64 encoding to smoothly process special characters (newlines, quotation marks, etc.) in natural language text, resulting in improved stability and flexibility. Its main roles are receiving requests, encoding input, generating and executing commands, and returning execution results in JSON format. This project has been confirmed to work in Claude Code CLI environments (Ubuntu/WSL2, etc.).

[![claude-code-mcp MCP server](https://camo.githubusercontent.com/4e162cc35790bbb3de83907139ee82ea3841a2b6ecf670384d35040ceac2a339/68747470733a2f2f676c616d612e61692f6d63702f736572766572732f404b756e696869726f532f636c617564652d636f64652d6d63702f6261646765)](https://glama.ai/mcp/servers/@KunihiroS/claude-code-mcp)

💡 MCP Host with less capable LLM, can tame and make use of Claude power💪! With claude-code-mcp, you can also call Claude Code from Claude Desktop!! 😇😜😎 (unconfirmed)

## Functions

The main roles of the server are:

- **Request Reception:** Receive JSON format tool requests from clients (e.g. `code`, `context`, `focus_areas`, etc.).
- **Input Processing:** Internally Base64 encode the received natural language text.
- **Tool Selection and Command Generation:** Based on the tool name in the request, assemble a command string for the query using a fixed template or free format (`your_own_query`).
- **Command Execution:** Use Node.js's `child_process.spawn` to execute the assembled command and get the result from standard output.
- **Result Return:** Return the execution result to the client in JSON format.

## Getting Started

### Prerequisites

- Node.js (>= v18 recommended, tested with v22.14.0)
- npm (or yarn)
- Claude Code command installed and auth completed.[https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview)

There are several ways to use `claude-code-mcp`:

**1\. Using npx (Recommended for quick use)**

You can run the server directly without installation using `npx`:

```
npx @kunihiros/claude-code-mcp
```

**2\. Global Installation**

Install the package globally:

```
npm install -g claude-code-mcp
```

Then, you can run it as a command:

```
claude-code-mcp
```

**3\. Local Installation (For development)**

Clone the repository and install dependencies:

```
git clone https://github.com/KunihiroS/claude-code-mcp.git
cd claude-code-mcp/claude-code-server
npm install
npm run build
```

You can then run the built script directly:

```
node build/index.js
```

### Configuration

**Environment Variables:**

Regardless of the installation method, you need to configure the environment variables. Create **one** of the following files:

1. **Using MCP Host Settings (Recommended for `npx`):** Configure environment variables directly within your MCP Host's settings (see "MCP Host Configuration" below). This is the easiest way when using `npx`.
2. **Using a `.env` file:** Create a `.env` file in the directory where you run the `npx @kunihiros/claude-code-mcp` command.
3. **Using a global config file:** Create a `.claude-code-mcp.env` file in your home directory (`~/.claude-code-mcp.env`).

If using a file (`.env` or `~/.claude-code-mcp.env`), add the following content, adjusting the `CLAUDE_BIN` path:

```
# .env or ~/.claude-code-mcp.env
CLAUDE_BIN=/path/to/your/claude/executable  # REQUIRED: Set the full path to your Claude CLI
LOG_LEVEL=info                             # Optional: Set log level (e.g., debug, info, warn, error)
```

**MCP Host Configuration (Recommended for `npx`):**

Add the following to your MCP Host application settings (e.g., Claude Desktop settings). This method allows you to set environment variables directly.

```
"claude-code-server": {
      "command": "npx",
      "args": [
        "-y",
        "@kunihiros/claude-code-mcp"
      ],
      "env": {
        "CLAUDE_BIN": "/path/to/your/claude/executable", // REQUIRED: Set the absolute path
        "LOG_LEVEL": "info"                             // Optional: Set log level
      },
      "disabled": false
    }
```

*(Restarting the host application might be required.)*

**Alternative MCP Host Configuration (Global Install / Local Dev):**

If you installed the package globally or are running it locally from the cloned repository, and the `claude-code-mcp` command is in your system's PATH, you can use:

```
"claude-code-server": {
      "command": "claude-code-mcp",
      "disabled": false
    }
```

In this case, you **must** configure environment variables using a `.env` file or the global `~/.claude-code-mcp.env` file as described above.

This server uses the following environment variables (set via MCP Host `env` settings, `.env`, or `~/.claude-code-mcp.env`):

- `CLAUDE_BIN`: Specifies the path to the Claude CLI executable. **(Required)** Example: `/home/linuxbrew/.linuxbrew/bin/claude` or `C:\Users\YourUser\AppData\Local\bin\claude.exe`
- `LOG_LEVEL`: Specifies the log level. (Optional, defaults to `info`). Possible values: `debug`, `info`, `warn`, `error`.

## Available Tools

The `claude-code-mcp` server provides the following tools:

- `explain_code`: Provides a detailed explanation of the given code.
- `review_code`: Reviews the given code.
- `fix_code`: Fixes bugs or issues in the given code.
- `edit_code`: Edits the given code based on instructions.
- `test_code`: Generates tests for the given code.
- `simulate_command`: Simulates the execution of a given command.
- `your_own_query`: Sends a custom query with context.

## Note

- Log file (`claude-code-mcp.log`) location:
	- Attempts to create in the project root first.
	- Falls back to the user's home directory (`~/.claude-code-mcp.log`).
	- Finally falls back to `/tmp/claude-code-mcp.log`.
- Log rotation is not implemented yet (be careful with log file size).
- Primarily tested with Claude CLI on Ubuntu/WSL2.

## License

This project is licensed under the MIT License - see below for details.

```
MIT License

Copyright (c) 2024 KunihiroS

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Disclaimer

This software is provided for educational and research purposes only. This project is not officially associated with or endorsed by Anthropic. Claude is a trademark of Anthropic.

The project uses the Claude CLI as a dependency, but is an independent, community-driven effort. Users should ensure they comply with Anthropic's terms of service when using this project.

The maintainers of this project are not responsible for any misuse of the software or violations of the terms of service of any third-party APIs or services.

## Releases 1

## Packages

No packages published  

## Languages

- [JavaScript 98.4%](https://github.com/KunihiroS/claude-code-mcp/search?l=javascript)
- [Dockerfile 1.6%](https://github.com/KunihiroS/claude-code-mcp/search?l=dockerfile)