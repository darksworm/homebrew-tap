# Homebrew Tap for AeroSwitch

This is a [Homebrew](https://brew.sh) tap for [AeroSwitch](https://github.com/darksworm/aeroswitch), a fast and lightweight window switcher for AeroSpace users.

## Installation

```bash
# Add the tap
brew tap darksworm/aerospace

# Install AeroSwitch
brew install aeroswitch
```

## Usage

After installation, configure AeroSwitch in your AeroSpace configuration:

```toml
# ~/.aerospace.toml

# Auto-start AeroSwitch with AeroSpace
[[on-window-detected]]
if.app-id = 'com.apple.loginwindow'
run = '/opt/homebrew/bin/aeroswitch --background'

# Bind Cmd+Tab to open window switcher
[mode.main.binding]
cmd-tab = 'exec-and-forget /opt/homebrew/bin/aeroswitch --activate'
```

Then restart AeroSpace and press Cmd+Tab to open the window switcher!

## About

AeroSwitch provides a fast, searchable window switcher for users of the [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling window manager. Features include:

- 🔍 Smart search by app name or window title
- ⌨️ Keyboard-driven navigation
- 🎨 Beautiful translucent UI with app icons
- 🚀 Lightning-fast fuzzy search
- 🔄 Support for both focus and summon workspace strategies

## Links

- **Source Code**: https://github.com/darksworm/aeroswitch
- **Documentation**: https://github.com/darksworm/aeroswitch#readme
- **AeroSpace**: https://github.com/nikitabobko/AeroSpace