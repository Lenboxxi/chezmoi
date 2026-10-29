<div align="center">

# 🏠 dotfiles

**My macOS setup, managed with [chezmoi](https://www.chezmoi.io).**

One command turns a fresh Mac into a familiar, fast, good-looking terminal setup.

[![chezmoi](https://img.shields.io/badge/managed%20with-chezmoi-8aadf4?style=for-the-badge&logo=git&logoColor=white&labelColor=24273a)](https://www.chezmoi.io)
[![macOS](https://img.shields.io/badge/macOS-only-c6a0f6?style=for-the-badge&logo=apple&logoColor=white&labelColor=24273a)](https://www.apple.com/macos)
[![zsh](https://img.shields.io/badge/shell-zsh-a6da95?style=for-the-badge&logo=gnubash&logoColor=white&labelColor=24273a)](https://www.zsh.org)
[![starship](https://img.shields.io/badge/prompt-starship-f5a97f?style=for-the-badge&logo=starship&logoColor=white&labelColor=24273a)](https://starship.rs)
[![catppuccin](https://img.shields.io/badge/theme-catppuccin%20macchiato-f5bde6?style=for-the-badge&labelColor=24273a)](https://catppuccin.com)

</div>

---

## ✨ Highlights

- 🚀 **Fast shell startup** - plugins via [antidote](https://antidote.sh), `nvm` loads lazily on first use.
- 🎨 **Catppuccin Macchiato prompt** - [starship](https://starship.rs) with Kubernetes context, gcloud project and git info.
- 📂 **Smarter navigation** - [zoxide](https://github.com/ajeetdsouza/zoxide) replaces `cd` and jumps to folders by partial name.
- 👀 **Prettier output** - [eza](https://eza.rocks) for `ls`, [bat](https://github.com/sharkdp/bat) for `cat`.
- 🍺 **Reproducible apps** - every tool is declared in a global `Brewfile`.
- 🤖 **Claude Code ready** - global instructions and a custom `ship` skill for committing and pushing.

## 🚀 Quick start

Install [Homebrew](https://brew.sh) first, then:

```sh
# Install chezmoi, clone this repo and apply the dotfiles
brew install chezmoi
chezmoi init --apply Lenboxxi

# Install everything from ~/.Brewfile
brew bundle --global
```

Open a new terminal and you are done 🎉

> [!TIP]
> Set your terminal font to **JetBrainsMono Nerd Font** (installed by the Brewfile) so icons in the prompt and in `ls` render correctly.

## 🗂️ What's inside

```text
.
├── dot_Brewfile                  → ~/.Brewfile            CLI tools and apps
├── dot_zshrc                     → ~/.zshrc               shell entry point
├── dot_zsh_plugins.txt           → ~/.zsh_plugins.txt     antidote plugin list
├── dot_config/
│   ├── starship.toml             → ~/.config/starship.toml
│   └── zsh_custom/               → ~/.config/zsh_custom/  aliases and functions
└── dot_claude/
    ├── CLAUDE.md                 → ~/.claude/CLAUDE.md    global agent instructions
    └── skills/ship/SKILL.md      → ~/.claude/skills/ship  "ship it" skill
```

Every file in `~/.config/zsh_custom/` is sourced automatically, so adding a new alias or function is as simple as dropping in a new `.sh` file.

## 🍺 Software

| Tool | Purpose |
| --- | --- |
| [antidote](https://antidote.sh) | zsh plugin manager |
| [bat](https://github.com/sharkdp/bat) | `cat` with syntax highlighting |
| [chezmoi](https://www.chezmoi.io) | dotfile manager |
| [eza](https://eza.rocks) | modern `ls` |
| [gh](https://cli.github.com) | GitHub CLI |
| [starship](https://starship.rs) | cross-shell prompt |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | smarter `cd` |
| [Claude Code](https://claude.com/claude-code) | AI coding assistant in the terminal |
| [iTerm2](https://iterm2.com) | terminal emulator |
| [Visual Studio Code](https://code.visualstudio.com) | code editor |
| JetBrains Mono Nerd Font | font with icon glyphs |

## 🔌 zsh plugins

| Plugin | What it does |
| --- | --- |
| [oh-my-zsh `lib`](https://github.com/ohmyzsh/ohmyzsh/tree/master/lib) | sensible defaults for history, completion and key bindings |
| [oh-my-zsh `git`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) | short git aliases like `gst`, `gco`, `gp` |
| [oh-my-zsh `sudo`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo) | press `Esc` twice to prefix the last command with `sudo` |
| [zsh-nvm](https://github.com/lukechilds/zsh-nvm) | installs and lazy-loads `nvm` |
| [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use) | reminds you of aliases you forgot |
| [zsh-completions](https://github.com/zsh-users/zsh-completions) | extra completion definitions |
| [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) | fish-like suggestions from history |
| [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) | colors commands while you type |

## ⌨️ Aliases and functions

| Command | Runs | Description |
| --- | --- | --- |
| `ls` | `eza --icons --group-directories-first` | list with icons |
| `l` | `eza -la --icons --git ...` | everything, including hidden files and git status |
| `ll` | `eza -l --icons --git ...` | long listing with git status |
| `lt` | `eza --tree --level=2 --icons` | two-level tree view |
| `cat` | `bat --paging=never` | syntax-highlighted file output |
| `cd <name>` | `zoxide` | jump to a frequently used folder by partial name |
| `good-morning` | `brew update && brew upgrade && brew cleanup` | ☕ keep Homebrew fresh |
| `csi` | `claude "ship it"` | commit and push the current branch via Claude Code |
| `csim` | `claude "ship it, ... push directly to main"` | same, but straight to `main` |

## 🔄 Daily workflow

```sh
chezmoi edit ~/.zshrc   # edit a managed file
chezmoi diff            # preview what would change
chezmoi apply           # write changes to $HOME
chezmoi cd              # jump into this repo to commit and push
chezmoi update          # pull the latest changes and apply them
```

---

<div align="center">

Made with ☕ and 🐚 &nbsp;·&nbsp; themed with 🐱 [Catppuccin](https://catppuccin.com)

</div>
