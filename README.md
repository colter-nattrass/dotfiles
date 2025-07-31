# 💻 Colter's Dotfiles (Nix + Home Manager)

This repository contains my personal development environment configuration using [Nix](https://nixos.org/) and [Home Manager](https://nix-community.github.io/home-manager/), with support for modular tooling like `zsh`, `VSCode`, `dbt`, `ClickHouse`, `terraform`, and `python`.

---

## 📦 Features

- 🧑‍💻 Shell config with `zsh` + `oh-my-zsh`
- 🛠 VSCode user settings
- 🐍 Python + virtualenv/pyenv
- 🏗 dbt + ClickHouse tools
- ☁️ Terraform & AWS CLI
- 🧙 Managed via `flake.nix` with Home Manager
- 🔄 Shareable, reproducible dotfiles

---

## 🗂 Folder Structure

```
.dotfiles/
├── flake.nix
├── flake.lock
├── home/
│   ├── colter.nix                 # Entry point for your user
│   └── shared/
│       ├── shell.nix              # zsh + oh-my-zsh setup
│       ├── devtools.nix           # python, dbt, terraform, clickhouse
│       └── vscode.nix             # VSCode extensions and config
├── config/
│   └── vscode/
│       └── settings.json          # VSCode settings
└── README.md
```

---

## 🚀 Getting Started

### 1. Install Nix with Flakes enabled

```bash
sh <(curl -L https://nixos.org/nix/install)
```

Then enable Flakes:

```bash
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```

### 2. Clone this repo

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 3. Activate with Home Manager

```bash
home-manager switch --flake .#colter
```

---

## 🧪 Prerequisites

- Nix (with flakes enabled)
- Home Manager (`nix profile install home-manager` or via flake)
- A `zsh` shell
- Optional: `pyenv`, `direnv`, etc.

---

## 👯‍♂️ Sharing With Others

If you'd like to share this with teammates or others:

- Add additional user files in `home/` (e.g., `home/cassi.nix`)
- Parameterize shared configs via `shared/*.nix`
- Avoid absolute paths in settings like `vscode/settings.json`
- Use `.envrc` or host-specific overrides if needed

---

## 🧼 TODOs / Improvements

- [ ] Add secrets/SSH setup module
- [ ] Add `direnv` and `.envrc` bootstrap
- [ ] Modularize language-specific configs (e.g., Python, Terraform)

