#!/usr/bin/env bash
# ==============================================================================
# Melora Hi-Res Music Streaming Player - Linux Universal Installer
# ==============================================================================
set -e

BOLD='\033[1m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${CYAN}${BOLD}"
echo "   __  ___     __                 "
echo "  /  |/  /__  / /__  _______ _    "
echo " / /|_/ / _ \/ / _ \/ __/ _ \`/    "
echo "/_/  /_/\___/_/\___/_/  \_,_/     "
echo "  Hi-Res Lossless Music Experience"
echo -e "${NC}"
echo -e "${BOLD}Installing Melora on Linux...${NC}\n"

# 1. Check for Flatpak (Preferred Universal Method)
if command -v flatpak >/dev/null 2>&1; then
    echo -e "${GREEN}==>${NC} Flatpak detected. Installing Melora from Flathub..."
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    flatpak install -y flathub com.github.KRTirtho.Spotube
    echo -e "\n${GREEN}${BOLD}✓ Melora has been installed successfully!${NC}"
    echo -e "You can launch Melora from your application menu or run:"
    echo -e "  ${CYAN}flatpak run com.github.KRTirtho.Spotube${NC}\n"
    exit 0
fi

# 2. Check for Arch Linux (yay / pamac / paru)
if command -v yay >/dev/null 2>&1; then
    echo -e "${GREEN}==>${NC} Arch Linux (yay) detected. Installing from AUR..."
    yay -S --noconfirm spotube-bin
    echo -e "\n${GREEN}${BOLD}✓ Melora installed successfully from AUR!${NC}\n"
    exit 0
elif command -v pamac >/dev/null 2>&1; then
    echo -e "${GREEN}==>${NC} Manjaro / Pamac detected. Installing from AUR..."
    pamac install --no-confirm spotube-bin
    echo -e "\n${GREEN}${BOLD}✓ Melora installed successfully!${NC}\n"
    exit 0
elif command -v paru >/dev/null 2>&1; then
    echo -e "${GREEN}==>${NC} Paru detected. Installing from AUR..."
    paru -S --noconfirm spotube-bin
    echo -e "\n${GREEN}${BOLD}✓ Melora installed successfully!${NC}\n"
    exit 0
fi

# 3. Check for Snap
if command -v snap >/dev/null 2>&1; then
    echo -e "${GREEN}==>${NC} Snap detected. Installing Melora via Snap Store..."
    sudo snap install spotube
    echo -e "\n${GREEN}${BOLD}✓ Melora installed successfully via Snap!${NC}\n"
    exit 0
fi

# 4. Fallback if no package manager is present
echo -e "${YELLOW}==> Flatpak, Snap, or AUR helpers not found.${NC}"
echo "We recommend installing Flatpak to get 1-command native updates:"
echo ""
echo "  For Ubuntu / Debian / Mint:"
echo "    sudo apt update && sudo apt install -y flatpak"
echo ""
echo "  For Fedora:"
echo "    sudo dnf install -y flatpak"
echo ""
echo "  For Arch Linux:"
echo "    sudo pacman -S flatpak"
echo ""
echo "Then simply re-run this command or run:"
echo "  flatpak install flathub com.github.KRTirtho.Spotube"
echo ""
