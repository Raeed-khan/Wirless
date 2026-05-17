<p align="center">
<pre align="center">
  _____            ______ ______ _____  
 |  __ \    /\    |  ____|  ____|  __ \ 
 | |__) |  /  \   | |__  | |__  | |  | |
 |  _  /  / / \  |  __| |  __| | |  | |
 | | \ \ / ____ \ | |____| |____| |__| |
 |_|  \_\/_/    \_\______|______|_____/ 
                                        
  ᴄᴇʀᴛɪꜰɪᴇᴅ ᴇᴛʜɪᴄᴀʟ ʜᴀᴄᴋᴇʀ
</pre>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.0.0-orange?style=for-the-badge">
  <img src="https://img.shields.io/badge/Type-Wireless%20Auditing-red?style=for-the-badge">
  <img src="https://img.shields.io/badge/Platform-Kali%20Linux-blue?style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Developer-Raeed%20Khan-green?style=flat-square">
  <img src="https://img.shields.io/badge/Department-BBA%20University%20of%20Buner-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Architecture-Automation%20Suite-darkcyan?style=flat-square">
</p>

---

## About RAEED-SYSTEMS

**RAEED-SYSTEMS** is a lightweight, menu-driven Wireless Interface Diagnostics & Automation Suite. Designed specifically for network security research and local lab validation environments, this framework automates complex wireless tasks like monitor mode activation, environmental scanning, and dual-mode deauthentication testing (Targeted & Mass Attack).

> **Note:** Developed by **Raeed Khan** as part of an academic research initiative at the *University of Buner, KPK*.

---

## Core Features

* **Automated Interface Diagnostics:** Instantly switches wireless cards into Monitor Mode (`airmon-ng`) with pre-execution environment checks.
* **Process Management:** Clears conflicting network management daemons automatically to prevent packet dropping.
* **Targeted Diagnostics:** Allows full granular monitoring and specific 802.11 frame analysis on specific BSSID and channels.
* **Dual-Attack Vectors:**
    * *Targeted Deauth:* Precision localized validation packets using `aireplay-ng`.
    * *Mass Deauth:* Automated multi-channel hopping jam/deauth framework utilizing `mdk4` to validate network resilience across all nearby access points.

---

## System Requirements

The framework requires a Linux environment (Preferably **Kali Linux**) with a wireless network adapter capable of **Monitor Mode** and **Packet Injection** (e.g., adapters running Alfa, Realtek, or Atheros chipsets).

### Dependencies
- `aircrack-ng` suite
- `mdk4`
- `bash` (Root/Sudo access required)

---

## Installation & Usage

### 1. Clone the Repository
```bash
git clone [https://github.com/Raeed-khan/R-phisher.git](https://github.com/Raeed-khan/R-phisher.git)
cd R-phisher

```

*(Note: Change directory name depending on your repository folder structure)*

### 2. Grant Executable Permissions

```bash
chmod +x wifi.sh

```

### 3. Launch the Framework

```bash
sudo ./wifi.sh

```

---

## Framework Blueprint (Main Menu)

```text
[1] Enable Monitor Mode (airmon-ng start)
[2] Kill Conflicting Processes (check kill)
[3] Survey Nearby Wireless Networks (airodump-ng)
[4] Target Specific BSSID Diagnostics
[5] Run Local Signal Test (Single Deauth)
[6] Run Mass Deauth Attack (All APs & Clients via MDK4)
[7] Exit Framework

```

---

## Disclaimer

---

```

