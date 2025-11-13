---
title: "Maciek-roboblog/Claude-Code-Usage-Monitor: Real-time Claude Code usage monitor with predictions and warnings"
source: "https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor"
author:
  - "[[Maciek-roboblog]]"
published:
created: 2025-10-28
description: "Real-time Claude Code usage monitor with predictions and warnings - Maciek-roboblog/Claude-Code-Usage-Monitor"
tags:
  - "clippings"
---
/ **[Claude-Code-Usage-Monitor](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor)** Public

Real-time Claude Code usage monitor with predictions and warnings

[MIT license](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/LICENSE)

A beautiful real-time terminal monitoring tool for Claude AI token usage with advanced analytics, machine learning-based predictions, and Rich UI. Track your token consumption, burn rate, cost analysis, and get intelligent predictions about session limits.

[![Claude Token Monitor Screenshot](https://raw.githubusercontent.com/Maciek-roboblog/Claude-Code-Usage-Monitor/main/doc/scnew.png)](https://raw.githubusercontent.com/Maciek-roboblog/Claude-Code-Usage-Monitor/main/doc/scnew.png)

---

- [✨ Key Features](https://github.com/Maciek-roboblog/#-key-features)
- [🚀 Installation](https://github.com/Maciek-roboblog/#-installation)
	- [⚡ Modern Installation with uv (Recommended)](https://github.com/Maciek-roboblog/#-modern-installation-with-uv-recommended)
	- [📦 Installation with pip](https://github.com/Maciek-roboblog/#-installation-with-pip)
	- [🛠️ Other Package Managers](https://github.com/Maciek-roboblog/#%EF%B8%8F-other-package-managers)
- [📖 Usage](https://github.com/Maciek-roboblog/#-usage)
	- [Get Help](https://github.com/Maciek-roboblog/#get-help)
	- [Basic Usage](https://github.com/Maciek-roboblog/#basic-usage)
	- [Configuration Options](https://github.com/Maciek-roboblog/#configuration-options)
	- [Available Plans](https://github.com/Maciek-roboblog/#available-plans)
- [🙏 Please Help Test This Release!](https://github.com/Maciek-roboblog/#-please-help-test-this-release)
- [✨ Features & How It Works](https://github.com/Maciek-roboblog/#-features--how-it-works)
	- [Current Features](https://github.com/Maciek-roboblog/#current-features)
	- [Understanding Claude Sessions](https://github.com/Maciek-roboblog/#understanding-claude-sessions)
	- [Token Limits by Plan](https://github.com/Maciek-roboblog/#token-limits-by-plan)
	- [Smart Detection Features](https://github.com/Maciek-roboblog/#smart-detection-features)
- [🚀 Usage Examples](https://github.com/Maciek-roboblog/#-usage-examples)
	- [Common Scenarios](https://github.com/Maciek-roboblog/#common-scenarios)
	- [Best Practices](https://github.com/Maciek-roboblog/#best-practices)
- [🔧 Development Installation](https://github.com/Maciek-roboblog/#-development-installation)
- [Troubleshooting](https://github.com/Maciek-roboblog/#troubleshooting)
	- [Installation Issues](https://github.com/Maciek-roboblog/#installation-issues)
	- [Runtime Issues](https://github.com/Maciek-roboblog/#runtime-issues)
- [📞 Contact](https://github.com/Maciek-roboblog/#-contact)
- [📚 Additional Documentation](https://github.com/Maciek-roboblog/#-additional-documentation)
- [📝 License](https://github.com/Maciek-roboblog/#-license)
- [🤝 Contributors](https://github.com/Maciek-roboblog/#-contributors)
- [🙏 Acknowledgments](https://github.com/Maciek-roboblog/#-acknowledgments)
- **🔮 ML-based predictions** - P90 percentile calculations and intelligent session limit detection
- **🔄 Real-time monitoring** - Configurable refresh rates (0.1-20 Hz) with intelligent display updates
- **📊 Advanced Rich UI** - Beautiful color-coded progress bars, tables, and layouts with WCAG-compliant contrast
- **🤖 Smart auto-detection** - Automatic plan switching with custom limit discovery
- **📋 Enhanced plan support** - Updated limits: Pro (44k), Max5 (88k), Max20 (220k), Custom (P90-based)
- **⚠️ Advanced warning system** - Multi-level alerts with cost and time predictions
- **💼 Professional Architecture** - Modular design with Single Responsibility Principle (SRP) compliance
- **🎨 Intelligent theming** - Scientific color schemes with automatic terminal background detection
- **⏰ Advanced scheduling** - Auto-detected system timezone and time format preferences
- **📈 Cost analytics** - Model-specific pricing with cache token calculations
- **🔧 Pydantic validation** - Type-safe configuration with automatic validation
- **📝 Comprehensive logging** - Optional file logging with configurable levels
- **🧪 Extensive testing** - 100+ test cases with full coverage
- **🎯 Error reporting** - Optional Sentry integration for production monitoring
- **⚡ Performance optimized** - Advanced caching and efficient data processing

The **Custom plan** is now the default option, specifically designed for 5-hour Claude Code sessions. It monitors three critical metrics:

- **Token usage** - Tracks your token consumption
- **Messages usage** - Monitors message count
- **Cost usage** - The most important metric for long sessions

The Custom plan automatically adapts to your usage patterns by analyzing all your sessions from the last 192 hours (8 days) and calculating personalized limits based on your actual usage. This ensures accurate predictions and warnings tailored to your specific workflow.

## 🚀 Installation

**Why uv is the best choice:**

- ✅ Creates isolated environments automatically (no system conflicts)
- ✅ No Python version issues
- ✅ No "externally-managed-environment" errors
- ✅ Easy updates and uninstallation
- ✅ Works on all platforms

The fastest and easiest way to install and use the monitor:

```
# Install directly from PyPI with uv (easiest)
uv tool install claude-monitor

# Run from anywhere
claude-monitor  # or cmonitor, ccmonitor for short
```
```
# Clone and install from source
git clone https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor.git
cd Claude-Code-Usage-Monitor
uv tool install .

# Run from anywhere
claude-monitor
```

If you don't have uv installed yet, get it with one command:

```
# On Linux/macOS:
curl -LsSf https://astral.sh/uv/install.sh | sh

# On Windows:
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"

# After installation, restart your terminal
```
```
# Install from PyPI
pip install claude-monitor

# If claude-monitor command is not found, add ~/.local/bin to PATH:
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc  # or restart your terminal

# Run from anywhere
claude-monitor  # or cmonitor, ccmonitor for short
```

> **⚠️ PATH Setup**: If you see WARNING: The script claude-monitor is installed in '/home/username/.local/bin' which is not on PATH, follow the export PATH command above.
> 
> **⚠️ Important**: On modern Linux distributions (Ubuntu 23.04+, Debian 12+, Fedora 38+), you may encounter an "externally-managed-environment" error. Instead of using --break-system-packages, we strongly recommend:
> 
> 1. **Use uv instead** (see above) - it's safer and easier
> 2. **Use a virtual environment** - python3 -m venv myenv && source myenv/bin/activate
> 3. **Use pipx** - pipx install claude-monitor
> 
> See the Troubleshooting section for detailed solutions.

```
# Install with pipx
pipx install claude-monitor

# Run from anywhere
claude-monitor  # or claude-code-monitor, cmonitor, ccmonitor, ccm for short
```

#### conda/mamba

```
# Install with pip in conda environment
pip install claude-monitor

# Run from anywhere
claude-monitor  # or cmonitor, ccmonitor for short
```

## 📖 Usage

### Get Help

```
# Show help information
claude-monitor --help
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| \--plan | string | custom | Plan type: pro, max5, max20, or custom |
| \--custom-limit-tokens | int | None | Token limit for custom plan (must be > 0) |
| \--view | string | realtime | View type: realtime, daily, or monthly |
| \--timezone | string | auto | Timezone (auto-detected). Examples: UTC, America/New\_York, Europe/London |
| \--time-format | string | auto | Time format: 12h, 24h, or auto |
| \--theme | string | auto | Display theme: light, dark, classic, or auto |
| \--refresh-rate | int | 10 | Data refresh rate in seconds (1-60) |
| \--refresh-per-second | float | 0.75 | Display refresh rate in Hz (0.1-20.0) |
| \--reset-hour | int | None | Daily reset hour (0-23) |
| \--log-level | string | INFO | Logging level: DEBUG, INFO, WARNING, ERROR, CRITICAL |
| \--log-file | path | None | Log file path |
| \--debug | flag | False | Enable debug logging |
| \--version, -v | flag | False | Show version information |
| \--clear | flag | False | Clear saved configuration |

#### Plan Options

| Plan | Token Limit | Cost Limit | Description |
| --- | --- | --- | --- |
| pro | 19,000 | $18.00 | Claude Pro subscription |
| max5 | 88,000 | $35.00 | Claude Max5 subscription |
| max20 | 220,000 | $140.00 | Claude Max20 subscription |
| custom | P90-based | (default) $50.00 | Auto-detection with ML analysis |

#### Command Aliases

The tool can be invoked using any of these commands:

- claude-monitor (primary)
- claude-code-monitor (full name)
- cmonitor (short)
- ccmonitor (short alternative)
- ccm (shortest)

The monitor automatically saves your preferences to avoid re-specifying them on each run:

**What Gets Saved:**

- View type (--view)
- Theme preferences (--theme)
- Timezone settings (--timezone)
- Time format (--time-format)
- Refresh rates (--refresh-rate, --refresh-per-second)
- Reset hour (--reset-hour)
- Custom token limits (--custom-limit-tokens)

**Configuration Location:** ~/.claude-monitor/last\_used.json

**Usage Examples:**

```
# First run - specify preferences
claude-monitor --plan pro --theme dark --timezone "America/New_York"

# Subsequent runs - preferences automatically restored
claude-monitor --plan pro

# Override saved settings for this session
claude-monitor --plan pro --theme light

# Clear all saved preferences
claude-monitor --clear
```

**Key Features:**

- ✅ Automatic parameter persistence between sessions
- ✅ CLI arguments always override saved settings
- ✅ Atomic file operations prevent corruption
- ✅ Graceful fallback if config files are damaged
- ✅ Plan parameter never saved (must specify each time)

### Basic Usage

```
# Default (Custom plan with auto-detection)
claude-monitor

# Alternative commands
claude-code-monitor  # Full descriptive name
cmonitor             # Short alias
ccmonitor            # Short alternative
ccm                  # Shortest alias

# Exit the monitor
# Press Ctrl+C to gracefully exit
```

#### Development mode

If running from source, use python -m claude\_monitor from the src/ directory.

### Configuration Options

```
# Custom plan with P90 auto-detection (Default)
claude-monitor --plan custom

# Pro plan (~44,000 tokens)
claude-monitor --plan pro

# Max5 plan (~88,000 tokens)
claude-monitor --plan max5

# Max20 plan (~220,000 tokens)
claude-monitor --plan max20

# Custom plan with explicit token limit
claude-monitor --plan custom --custom-limit-tokens 100000
```
```
# Reset at 3 AM
claude-monitor --reset-hour 3

# Reset at 10 PM
claude-monitor --reset-hour 22
```
```
# Real-time monitoring with live updates (Default)
claude-monitor --view realtime

# Daily token usage aggregated in table format
claude-monitor --view daily

# Monthly token usage aggregated in table format
claude-monitor --view monthly
```
```
# Adjust refresh rate (1-60 seconds, default: 10)
claude-monitor --refresh-rate 5

# Adjust display refresh rate (0.1-20 Hz, default: 0.75)
claude-monitor --refresh-per-second 1.0

# Set time format (auto-detected by default)
claude-monitor --time-format 24h  # or 12h

# Force specific theme
claude-monitor --theme dark  # light, dark, classic, auto

# Clear saved configuration
claude-monitor --clear
```

#### Timezone Configuration

The default timezone is **auto-detected from your system**. Override with any valid timezone:

```
# Use US Eastern Time
claude-monitor --timezone America/New_York

# Use Tokyo time
claude-monitor --timezone Asia/Tokyo

# Use UTC
claude-monitor --timezone UTC

# Use London time
claude-monitor --timezone Europe/London
```
```
# Enable debug logging
claude-monitor --debug

# Log to file
claude-monitor --log-file ~/.claude-monitor/logs/monitor.log

# Set log level
claude-monitor --log-level WARNING  # DEBUG, INFO, WARNING, ERROR, CRITICAL
```

### Available Plans

| Plan | Token Limit | Best For |
| --- | --- | --- |
| **custom** | P90 auto-detect | Intelligent limit detection (default) |
| **pro** | ~19,000 | Claude Pro subscription |
| **max5** | ~88,000 | Claude Max5 subscription |
| **max20** | ~220,000 | Claude Max20 subscription |

- **P90 Analysis**: Custom plan uses 90th percentile calculations from your usage history
- **Cost Tracking**: Model-specific pricing with cache token calculations
- **Limit Detection**: Intelligent threshold detection with 95% confidence

### Major Changes

- Modular design with Single Responsibility Principle (SRP) compliance
- Pydantic-based configuration with type safety and validation
- Advanced error handling with optional Sentry integration
- Comprehensive test suite with 100+ test cases

#### Enhanced Functionality

- **P90 Analysis**: Machine learning-based limit detection using 90th percentile calculations
- **Updated Plan Limits**: Pro (44k), Max5 (88k), Max20 (220k) tokens
- **Cost Analytics**: Model-specific pricing with cache token calculations
- **Rich UI**: WCAG-compliant themes with automatic terminal background detection
- \--refresh-per-second: Configurable display refresh rate (0.1-20 Hz)
- \--time-format: Automatic 12h/24h format detection
- \--custom-limit-tokens: Explicit token limits for custom plans
- \--log-file and --log-level: Advanced logging capabilities
- \--clear: Reset saved configuration
- Command aliases: claude-code-monitor, cmonitor, ccmonitor, ccm for convenience

#### Breaking Changes

- Package name changed from claude-usage-monitor to claude-monitor
- Default plan changed from pro to custom (with auto-detection)
- Minimum Python version increased to 3.9+
- Command structure updated (see examples above)

The new version features a complete rewrite with modular architecture following Single Responsibility Principle (SRP):

| Component | Description |
| --- | --- |
| **CLI Module** | Pydantic-based |
| **Settings/Config** | Type-safe |
| **Error Handling** | Sentry-ready |
| **Rich Terminal UI** | Adaptive Theme |

---

| Component | Key Responsibilities |
| --- | --- |
| **Central Control Hub** | Session Mgmt · Real-time Data Flow · Component Coordination |
| **Data Manager** | Cache Mgmt · File I/O · State Persist |
| **Session Monitor** | Real-time · 5 hr Windows · Token Track |
| **UI Controller** | Rich Display · Progress Bars · Theme System |
| **Analytics** | P90 Calculator · Burn Rate · Predictions |

---

| Component | Core Features |
| --- | --- |
| **Core Models** | Session Data · Config Schema · Type Safety |
| **Analysis Engine** | ML Algorithms · Statistical · Forecasting |
| **Terminal Themes** | Auto-detection · WCAG Colors · Contrast Opt |
| **Claude API Data** | Token Tracking · Cost Calculator · Session Blocks |

---

**🔄 Data Flow:**Claude Config Files → Data Layer → Analysis Engine → UI Components → Terminal Display

### Current Features

- Configurable update intervals (1-60 seconds)
- High-precision display refresh (0.1-20 Hz)
- Intelligent change detection to minimize CPU usage
- Multi-threaded orchestration with callback system
- **Progress Bars**: WCAG-compliant color schemes with scientific contrast ratios
- **Data Tables**: Sortable columns with model-specific statistics
- **Layout Manager**: Responsive design that adapts to terminal size
- **Theme System**: Auto-detects terminal background for optimal readability
- **Realtime View** (Default): Live monitoring with progress bars, current session data, and burn rate analysis
- **Daily View**: Aggregated daily statistics showing Date, Models, Input/Output/Cache tokens, Total tokens, and Cost
- **Monthly View**: Monthly aggregated data for long-term trend analysis and budget planning
- **P90 Calculator**: 90th percentile analysis for intelligent limit detection
- **Burn Rate Analytics**: Multi-session consumption pattern analysis
- **Cost Projections**: Model-specific pricing with cache token calculations
- **Session Forecasting**: Predicts when sessions will expire based on usage patterns
- **Background Detection**: Automatically determines terminal theme (light/dark)
- **System Integration**: Auto-detects timezone and time format preferences
- **Plan Recognition**: Analyzes usage patterns to suggest optimal plans
- **Limit Discovery**: Scans historical data to find actual token limits

Claude Code operates on a **5-hour rolling session window system**:

1. **Session Start**: Begins with your first message to Claude
2. **Session Duration**: Lasts exactly 5 hours from that first message
3. **Token Limits**: Apply within each 5-hour session window
4. **Multiple Sessions**: Can have several active sessions simultaneously
5. **Rolling Windows**: New sessions can start while others are still active

**Example Session Timeline:**10:30 AM - First message (Session A starts at 10 AM) 03:00 PM - Session A expires (5 hours later)

12:15 PM - First message (Session B starts 12PM) 05:15 PM - Session B expires (5 hours later 5PM)

The monitor calculates burn rate using sophisticated analysis:

1. **Data Collection**: Gathers token usage from all sessions in the last hour
2. **Pattern Analysis**: Identifies consumption trends across overlapping sessions
3. **Velocity Tracking**: Calculates tokens consumed per minute
4. **Prediction Engine**: Estimates when current session tokens will deplete
5. **Real-time Updates**: Adjusts predictions as usage patterns change

| Plan | Limit (Tokens) | Cost Limit | Messages | Algorithm |
| --- | --- | --- | --- | --- |
| **Claude Pro** | 19,000 | $18.00 | 250 | Fixed limit |
| **Claude Max5** | 88,000 | $35.00 | 1,000 | Fixed limit |
| **Claude Max20** | 220,000 | $140.00 | 2,000 | Fixed limit |
| **Custom** | P90-based | (default) $50.00 | 250+ | Machine learning |

- **P90 Analysis**: Uses 90th percentile of your historical usage
- **Confidence Threshold**: 95% accuracy in limit detection
- **Cache Support**: Includes cache creation and read token costs
- **Model-Specific**: Adapts to Claude 3.5, Claude 4, and future models

### Technical Requirements

#### Dependencies (v3.0.0)

```
# Core dependencies (automatically installed)
pytz>=2023.3                # Timezone handling
rich>=13.7.0                # Rich terminal UI
pydantic>=2.0.0             # Type validation
pydantic-settings>=2.0.0    # Configuration management
numpy>=1.21.0               # Statistical calculations
sentry-sdk>=1.40.0          # Error reporting (optional)
pyyaml>=6.0                 # Configuration files
tzdata                      # Windows timezone data
```

#### Python Requirements

- **Minimum**: Python 3.9+
- **Recommended**: Python 3.11+
- **Tested on**: Python 3.9, 3.10, 3.11, 3.12, 3.13

When using the default Pro plan:

1. **Detection**: Monitor notices token usage exceeding 7,000
2. **Analysis**: Scans previous sessions for actual limits
3. **Switch**: Automatically changes to custom\_max mode
4. **Notification**: Displays clear message about the change
5. **Continuation**: Keeps monitoring with new, higher limit

The auto-detection system:

1. **Scans History**: Examines all available session blocks
2. **Finds Peaks**: Identifies highest token usage achieved
3. **Validates Data**: Ensures data quality and recency
4. **Sets Limits**: Uses discovered maximum as new limit
5. **Learns Patterns**: Adapts to your actual usage capabilities

### Common Scenarios

**Scenario**: You start work at 9 AM and want tokens to reset aligned with your schedule.

```
# Set custom reset time to 9 AM
./claude_monitor.py --reset-hour 9

# With your timezone
./claude_monitor.py --reset-hour 9 --timezone US/Eastern
```

**Benefits**:

- Reset times align with your work schedule
- Better planning for daily token allocation
- Predictable session windows

**Scenario**: You often work past midnight and need flexible reset scheduling.

```
# Reset at midnight for clean daily boundaries
./claude_monitor.py --reset-hour 0

# Late evening reset (11 PM)
./claude_monitor.py --reset-hour 23
```

**Strategy**:

- Plan heavy coding sessions around reset times
- Use late resets to span midnight work sessions
- Monitor burn rate during peak hours

**Scenario**: Your token limits seem to change, and you're not sure of your exact plan.

```
# Auto-detect your highest previous usage
claude-monitor --plan custom_max

# Monitor with custom scheduling
claude-monitor --plan custom_max --reset-hour 6
```

**Approach**:

- Let auto-detection find your real limits
- Monitor for a week to understand patterns
- Note when limits change or reset

**Scenario**: You're working across different timezones or traveling.

```
# US East Coast
claude-monitor --timezone America/New_York

# Europe
claude-monitor --timezone Europe/London

# Asia Pacific
claude-monitor --timezone Asia/Singapore

# UTC for international team coordination
claude-monitor --timezone UTC --reset-hour 12
```

**Scenario**: You just want to see current status without configuration.

```
# Just run it with defaults
claude-monitor

# Press Ctrl+C after checking status
```

**Scenario**: Analyzing your token usage patterns over different time periods.

```
# View daily usage breakdown with detailed statistics
claude-monitor --view daily

# Analyze monthly token consumption trends
claude-monitor --view monthly --plan max20

# Export daily usage data to log file for analysis
claude-monitor --view daily --log-file ~/daily-usage.log

# Review usage in different timezone
claude-monitor --view daily --timezone America/New_York
```

**Use Cases**:

- **Realtime**: Live monitoring of current session and burn rate
- **Daily**: Analyze daily consumption patterns and identify peak usage days
- **Monthly**: Long-term trend analysis and monthly budget planning

**Start with Default (Recommended for New Users)**

```
# Pro plan detection with auto-switching
claude-monitor
```
- Monitor will detect if you exceed Pro limits
- Automatically switches to custom\_max if needed
- Shows notification when switching occurs

**Known Subscription Users**

```
# If you know you have Max5
claude-monitor --plan max5

# If you know you have Max20
claude-monitor --plan max20
```

**Unknown Limits**

```
# Auto-detect from previous usage
claude-monitor --plan custom_max
```

### Best Practices

1. **Start Early in Sessions**
```
# Begin monitoring when starting Claude work (uv installation)
   claude-monitor

   # Or development mode
   ./claude_monitor.py
```
- Gives accurate session tracking from the start
- Better burn rate calculations
- Early warning for limit approaches
1. **Use Modern Installation (Recommended)**
```
# Easy installation and updates with uv
   uv tool install claude-monitor
   claude-monitor --plan max5
```
- Clean system installation
- Easy updates and maintenance
- Available from anywhere
1. **Custom Shell Alias (Legacy Setup)**
```
# Add to ~/.bashrc or ~/.zshrc (only for development setup)
   alias claude-monitor='cd ~/Claude-Code-Usage-Monitor && source venv/bin/activate && ./claude_monitor.py'
```
1. **Monitor Burn Rate Velocity**
	- Watch for sudden spikes in token consumption
	- Adjust coding intensity based on remaining time
	- Plan big refactors around session resets
2. **Strategic Session Planning**
```
# Plan heavy usage around reset times
   claude-monitor --reset-hour 9
```
- Schedule large tasks after resets
- Use lighter tasks when approaching limits
- Leverage multiple overlapping sessions
1. **Timezone Awareness**
```
# Always use your actual timezone
   claude-monitor --timezone Europe/Warsaw
```
- Accurate reset time predictions
- Better planning for work schedules
- Correct session expiration estimates

#### Optimization Tips

1. **Terminal Setup**
	- Use terminals with at least 80 character width
	- Enable color support for better visual feedback (check COLORTERM environment variable)
	- Consider dedicated terminal window for monitoring
	- Use terminals with truecolor support for best theme experience
2. **Workflow Integration**
```
# Start monitoring with your development session (uv installation)
   tmux new-session -d -s claude-monitor 'claude-monitor'

   # Or development mode
   tmux new-session -d -s claude-monitor './claude_monitor.py'

   # Check status anytime
   tmux attach -t claude-monitor
```
1. **Multi-Session Strategy**
	- Remember sessions last exactly 5 hours
	- You can have multiple overlapping sessions
	- Plan work across session boundaries

#### Real-World Workflows

**Large Project Development**

```
# Setup for sustained development
claude-monitor --plan max20 --reset-hour 8 --timezone America/New_York
```

**Daily Routine**:

1. **8:00 AM**: Fresh tokens, start major features
2. **10:00 AM**: Check burn rate, adjust intensity
3. **12:00 PM**: Monitor for afternoon session planning
4. **2:00 PM**: New session window, tackle complex problems
5. **4:00 PM**: Light tasks, prepare for evening session

**Learning & Experimentation**

```
# Flexible setup for learning
claude-monitor --plan pro
```

**Sprint Development**

```
# High-intensity development setup
claude-monitor --plan max20 --reset-hour 6
```

For contributors and developers who want to work with the source code:

```
# Clone the repository
git clone https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor.git
cd Claude-Code-Usage-Monitor

# Install in development mode
pip install -e .

# Run from source
python -m claude_monitor
```

The new version includes a comprehensive test suite:

- **100+ test cases** with full coverage
- **Unit tests** for all components
- **Integration tests** for end-to-end workflows
- **Performance tests** with benchmarking
- **Mock objects** for isolated testing
```
# Run tests
cd src/
python -m pytest

# Run with coverage
python -m pytest --cov=claude_monitor --cov-report=html

# Run specific test modules
python -m pytest tests/test_analysis.py -v
```

### Prerequisites

1. **Python 3.9+** installed on your system
2. **Git** for cloning the repository

Using a virtual environment is **strongly recommended** because:

- **🛡️ Isolation**: Keeps your system Python clean and prevents dependency conflicts
- **📦 Portability**: Easy to replicate the exact environment on different machines
- **🔄 Version Control**: Lock specific versions of dependencies for stability
- **🧹 Clean Uninstall**: Simply delete the virtual environment folder to remove everything
- **👥 Team Collaboration**: Everyone uses the same Python and package versions

If you don't have venv module available:

```
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install python3-venv

# Fedora/RHEL/CentOS
sudo dnf install python3-venv

# macOS (usually comes with Python)
# If not available, install Python via Homebrew:
brew install python3

# Windows (usually comes with Python)
# If not available, reinstall Python from python.org
# Make sure to check "Add Python to PATH" during installation
```

Alternatively, use the virtualenv package:

```
# Install virtualenv via pip
pip install virtualenv

# Then create virtual environment with:
virtualenv venv
# instead of: python3 -m venv venv
```

#### Step-by-Step Setup

```
# 1. Clone the repository
git clone https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor.git
cd Claude-Code-Usage-Monitor

# 2. Create virtual environment
python3 -m venv venv
# Or if using virtualenv package:
# virtualenv venv

# 3. Activate virtual environment
# On Linux/Mac:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate

# 4. Install Python dependencies
pip install pytz
pip install rich>=13.0.0
# 5. Make script executable (Linux/Mac only)
chmod +x claude_monitor.py

# 6. Run the monitor
python claude_monitor.py
```

#### Daily Usage

After initial setup, you only need:

Create an alias for quick access:

```
# Add to ~/.bashrc or ~/.zshrc
alias claude-monitor='cd ~/Claude-Code-Usage-Monitor && source venv/bin/activate && ./claude_monitor.py'

# Then just run:
claude-monitor
```

## Troubleshooting

### Installation Issues

#### "externally-managed-environment" Error

On modern Linux distributions (Ubuntu 23.04+, Debian 12+, Fedora 38+), you may encounter:

```
error: externally-managed-environment
× This environment is externally managed
```

**Solutions (in order of preference):**

1. **Use uv (Recommended)**
```
# Install uv first
   curl -LsSf https://astral.sh/uv/install.sh | sh

   # Then install with uv
   uv tool install claude-monitor
```
1. **Use pipx (Isolated Environment)**
```
# Install pipx
   sudo apt install pipx  # Ubuntu/Debian
   # or
   python3 -m pip install --user pipx

   # Install claude-monitor
   pipx install claude-monitor
```
1. **Use virtual environment**
```
python3 -m venv myenv
   source myenv/bin/activate
   pip install claude-monitor
```
1. **Force installation (Not Recommended)**
```
pip install --user claude-monitor --break-system-packages
```

⚠️ **Warning**: This bypasses system protection and may cause conflicts. We strongly recommend using a virtual environment instead.

If claude-monitor command is not found after pip installation:

1. **Check if it's a PATH issue**
```
# Look for the warning message during pip install:
   # WARNING: The script claude-monitor is installed in '/home/username/.local/bin' which is not on PATH
```
1. **Add to PATH**
```
# Add this to ~/.bashrc or ~/.zshrc
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

   # Reload shell
   source ~/.bashrc  # or source ~/.zshrc
```
1. **Verify installation location**
```
# Find where pip installed the script
   pip show -f claude-monitor | grep claude-monitor
```
1. **Run directly with Python**
```
python3 -m claude_monitor
```

If you have multiple Python versions:

1. **Check Python version**
```
python3 --version
   pip3 --version
```
1. **Use specific Python version**
```
python3.11 -m pip install claude-monitor
   python3.11 -m claude_monitor
```
1. **Use uv (handles Python versions automatically)**
```
uv tool install claude-monitor
```

### Runtime Issues

If you encounter the error No active session found, please follow these steps:

1. **Initial Test**: Launch Claude Code and send at least two messages. In some cases, the session may not initialize correctly on the first attempt, but it resolves after a few interactions.
2. **Configuration Path**: If the issue persists, consider specifying a custom configuration path. By default, Claude Code uses ~/.config/claude. You may need to adjust this path depending on your environment.
```
CLAUDE_CONFIG_DIR=~/.config/claude ./claude_monitor.py
```

## 📞 Contact

Have questions, suggestions, or want to collaborate? Feel free to reach out!

**📧 Email**: [maciek@roboblog.eu](https://github.com/Maciek-roboblog/)

Whether you need help with setup, have feature requests, found a bug, or want to discuss potential improvements, don't hesitate to get in touch. I'm always happy to help and hear from users of the Claude Code Usage Monitor!

- **[Development Roadmap](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/DEVELOPMENT.md)** - ML features, PyPI package, Docker plans
- **[Contributing Guide](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/CONTRIBUTING.md)** - How to contribute, development guidelines
- **[Troubleshooting](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/TROUBLESHOOTING.md)** - Common issues and solutions

## 📝 License

[MIT License](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/LICENSE) - feel free to use and modify as needed.

## 🤝 Contributors

- [@adawalli](https://github.com/adawalli)
- [@taylorwilsdon](https://github.com/taylorwilsdon)
- [@moneroexamples](https://github.com/moneroexamples)

Want to contribute? Check out our [Contributing Guide](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/CONTRIBUTING.md)!

## 🙏 Acknowledgments

### Sponsors

A special thanks to our supporters who help keep this project going:

**Ed** - *Buy Me Coffee Supporter*

> "I appreciate sharing your work with the world. It helps keep me on track with my day. Quality readme, and really good stuff all around!"

## Star History

[![Star History Chart](https://camo.githubusercontent.com/48797629b930136756331e33943102bd75b66ed18f4d3a3f352949900c8aee62/68747470733a2f2f6170692e737461722d686973746f72792e636f6d2f7376673f7265706f733d4d616369656b2d726f626f626c6f672f436c617564652d436f64652d55736167652d4d6f6e69746f7226747970653d44617465)](https://www.star-history.com/#Maciek-roboblog/Claude-Code-Usage-Monitor&Date)

---

**⭐ Star this repo if you find it useful! ⭐**

[Report Bug](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/issues) • [Request Feature](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/issues) • [Contribute](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/blob/main/CONTRIBUTING.md)

## Releases 11

[\+ 10 releases](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/releases)

## Sponsor this project

- [**Maciek-roboblog** Maciej](https://github.com/Maciek-roboblog)
- [buymeacoffee.com/ **maciekroboblog**](https://buymeacoffee.com/maciekroboblog)
- [thanks.dev/ **u/gh/maciek-roboblog**](https://thanks.dev/u/gh/maciek-roboblog)

[Learn more about GitHub Sponsors](https://github.com/sponsors)

## Languages

- [Python 100.0%](https://github.com/Maciek-roboblog/Claude-Code-Usage-Monitor/search?l=python)