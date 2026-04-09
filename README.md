# Dotfiles

Personal Arch Linux (EndeavourOS) dotfiles using GNU Stow for modular, reproducible system configuration.

---

## 🧠 Philosophy

- Minimal but intentional
- Fully reproducible setup
- Modular configs (each tool isolated)
- No hidden dependencies

---

## ⚙️ Structure

```shell

dotfiles/
├── zsh/
│   └── .zshrc
├── nvim/
│   └── .config/nvim/
├── git/
│   └── .gitconfig
├── tmux/
│   └── .tmux.conf
├── scripts/
│   └── install.sh

````

---

## 🚀 Installation

```bash
git clone https://github.com/seamoonpandey/dotfiles ~/dotfiles
cd ~/dotfiles
chmod +x scripts/install.sh
./scripts/install.sh
````

---

## 🔧 Manual Setup (if needed)

Install required tools:

```bash
sudo pacman -S git stow zsh tmux base-devel
```

Apply configs:

```bash
cd ~/dotfiles
stow */
```

---

## 📦 Install Script

`scripts/install.sh`:

- Updates system
- Installs core packages
- Installs `yay` (AUR helper)
- Applies dotfiles via `stow`
- Sets `zsh` as default shell

---

## 🔄 Reproducibility

To restore packages:

```bash
pacman -Qqe > pkglist.txt
pacman -Qqm > aurlist.txt
```

Restore:

```bash
sudo pacman -S --needed - < pkglist.txt
yay -S --needed - < aurlist.txt
```

---

## ⚠️ Notes

- Do NOT commit sensitive files (`.env`, keys, tokens)
- Uses symlinks via GNU Stow (not copies)
- Designed for Arch-based systems

---

## 🧩 Extending

You can add modules like:

- `kitty/` → terminal config
- `kde/` → KDE Plasma settings
- `ai/` → CUDA / ML environment configs

Apply:

```bash
stow <module>
```

---

## 🛠 Philosophy Going Forward

- Keep configs modular
- Keep system reproducible
- Automate everything possible
- Avoid manual setup drift

---

## 📜 License

Personal use. Modify freely.
