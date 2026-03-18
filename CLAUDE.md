# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repository managing development environment configurations for macOS, Linux (Ubuntu 24.04+/Debian 12+), and WSLv2. The primary tool is the `dots` script which installs/manages configs.

## Common Commands

### Installation
```bash
./dots install pkg     # Install system packages (homebrew on macOS, apt on Linux)
./dots install base    # Copy configs to ~/.config/ (nvim, tmux, kitty, ranger, xenv)
./dots install cloud   # Copy cloud credentials to ~/.aws/, ~/.azure/, etc.
./dots show            # Display current configuration status
./dots backup          # Backup current user configurations
./dots restore         # Restore from backup
```

### Testing (Docker-based)
```bash
make              # Build Docker image (dotenv:latest)
make run          # Run container with dotfiles mounted at /data
make shell        # Open shell in running container
make stop         # Stop running container
make logs         # View container logs
make clean        # Remove data volume
```

### Linting
```bash
make ruff         # Run Python linting (ruff check)
make ruff-fix     # Auto-fix Python issues
```

## Architecture

### Core Structure
- `dots` — Main bash script; handles install/remove/backup/restore for `base`, `cloud`, and `pkg` components
- `config/` — Tool-specific configuration directories, each installed to `~/.config/<tool>/`
- `env/` — Shell profile files (`gitconfig`, `bash_profile`)
- `cloud/` — Cloud provider configs (AWS, Azure, GCP), installed to `~/.<provider>/`
- `Dockerfile` — Debian Trixie Slim image that validates installation via `./dots install base`

### Shell Initialization Chain
`~/.bash_profile` → `~/.config/xenv/xbashrc` → individual env scripts (goenv.sh, pyenv.sh, rustenv.sh, gitenv.sh, genai.sh, aliases)

### Neovim Setup (`config/nvim/`)
Lua-based config using `lazy.nvim`. Key plugin categories:
- LSP: `nvim-lspconfig`
- AI: Copilot, CopilotChat, ChatGPT, Ollama, Avante, MCPHub
- Navigation: Telescope, Treesitter
- UI: catppuccin theme, alpha (startup), gitsigns

### Tmux (`config/tmux/tmux.conf`)
- Prefix: `Ctrl-A`
- Splits: `|` (horizontal), `-` (vertical)
- Pane navigation: `hjkl` or `Alt+arrows`
- Plugins managed via tpm: tmux-sensible, vim-tmux-navigator, catppuccin, tmux-resurrect

### Environment Files (`config/xenv/`)
- `env.sh` — API key placeholders (OpenAI, HuggingFace, Gemini, Azure, Anthropic)
- `genai.sh` — AI tools (Gemini CLI, etc.) setup
- `aliases` — Defines `vim→nvim`, tmux shortcuts, ranger

### Testing Strategy
The Dockerfile serves as the integration test: it installs all system dependencies and runs `./dots install base` to verify configs can be installed cleanly. Run `make` + `make run` to test changes in an isolated environment.
