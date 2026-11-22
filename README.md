# Linux Tool Box

A small Bash menu for package-installation experiments and checking system information with Fastfetch.

## Requirements

- A Linux system with Bash
- `sudo` access for package installation
- The package manager required by the selected option (`apt`, `pacman`, or `snap`)

## Run

From the project directory, run:

```bash
bash main.sh
```

Choose an option from the menu:

| Option | Action |
| --- | --- |
| 1 | Prompt for an APT package |
| 2 | Prompt for a Pacman package |
| 3 | Attempt to install a Snap package |
| 4 | Install Fastfetch and run it |

The scripts are located alongside `main.sh`; the menu resolves their paths relative to its own location, so it can also be launched from another working directory.

## Important notes

- Package installation requires administrator privileges and may ask for your password.
- Use only the option supported by your Linux distribution. APT is commonly used on Debian-based systems; Pacman is used on Arch-based systems.
- The Snap menu entry is marked as coming soon, though the current menu attempts `sudo snap install` if Snap is available.
- The APT and Pacman installer scripts are still under development and may not install packages correctly.
- The Fastfetch script currently attempts both APT and Pacman installation commands before running Fastfetch. This may fail or be inappropriate on systems that do not use both package managers.

## Project files

- `main.sh` — interactive menu
- `aptpack.sh` — APT package installer
- `pacmanpkg.sh` — Pacman package installer
- `fastfetchpkg.sh` — Fastfetch installation and launch
