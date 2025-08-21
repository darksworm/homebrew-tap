# Homebrew Tap

This is a [Homebrew](https://brew.sh) tap containing formulas for:

- **[AeroSwitch](https://github.com/darksworm/aeroswitch)** - A fast and lightweight window switcher for AeroSpace users
- **[Argonaut](https://github.com/darksworm/argonaut)** - A GitOps CLI tool for managing ArgoCD applications

## Installation

```bash
# Add the tap
brew tap darksworm/homebrew-tap

# Install AeroSwitch
brew install darksworm/homebrew-tap/aeroswitch

# Install Argonaut
brew install darksworm/homebrew-tap/argonaut
```

## Usage

Start AeroSwitch as a background service that runs automatically on login:

```bash
# Start the service and enable auto-start on login
brew services start aeroswitch

# Stop the service
brew services stop aeroswitch

# Check service status
brew services list | grep aeroswitch
```

Then configure the activation keybinding in your AeroSpace configuration:

```toml
# ~/.aerospace.toml
[mode.main.binding]
cmd-tab = 'exec-and-forget /opt/homebrew/bin/aeroswitch --activate'
```

After configuration, restart AeroSpace and press Cmd+Tab to open the window switcher!

### Argonaut Usage

Use Argonaut to manage your ArgoCD applications:

```bash
# Check version
argonaut version

# Connect to ArgoCD and list applications
argonaut apps

# View application details
argonaut app <app-name>

# Sync an application
argonaut sync <app-name>
```

## About

### AeroSwitch
AeroSwitch provides a fast, searchable window switcher for users of the [AeroSpace](https://github.com/nikitabobko/AeroSpace) tiling window manager. Features include:

- 🔍 Smart search by app name or window title
- ⌨️ Keyboard-driven navigation
- 🎨 Beautiful translucent UI with app icons
- 🚀 Lightning-fast fuzzy search
- 🔄 Support for both focus and summon workspace strategies

### Argonaut
Argonaut is a GitOps CLI tool for managing ArgoCD applications with an intuitive interface. Features include:

- 📱 Modern terminal UI for browsing applications
- 🔄 Easy application syncing and management
- 📊 Real-time application status monitoring
- 🎯 Direct integration with ArgoCD APIs
- ⚡ Fast and lightweight CLI experience

## Links

### AeroSwitch
- **Source Code**: https://github.com/darksworm/aeroswitch
- **Documentation**: https://github.com/darksworm/aeroswitch#readme
- **AeroSpace**: https://github.com/nikitabobko/AeroSpace

### Argonaut
- **Source Code**: https://github.com/darksworm/argonaut
- **Documentation**: https://github.com/darksworm/argonaut#readme
- **ArgoCD**: https://argoproj.github.io/cd/
