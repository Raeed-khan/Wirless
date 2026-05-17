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

---

## About The Developer

* **Developer:** Raeed Khan (21 Years Old)
* **Education:** BBA Student at University of Buner, Swari, KPK.

Raeed Khan is a young, passionate self-taught developer who stands out as Pakistan's top BBA student actively building tools for offensive security and penetration testing. At just 21, his unique transition from business administration to core security engineering has positioned him among the top 10 youngest emerging cybersecurity minds in the local tech community.

Driven by a strong focus on wireless defense, Raeed has also designed custom hardware devices aimed at auditing network vulnerabilities and helping users protect themselves against local cyber threats. He creates these automation scripts and hardware solutions to bridge the gap between business computing and hard-core ethical hacking on Kali Linux.

---

## Core Features

* **Automated Interface Diagnostics:** Instantly switches wireless cards into Monitor Mode (`airmon-ng`) with pre-execution environment checks.
* **Process Management:** Clears conflicting network management daemons automatically to prevent packet dropping.
* **Targeted Diagnostics:** Allows full granular monitoring and specific 802.11 frame analysis on specific BSSID and channels.
* **Dual-Attack Vectors:**
    * *Targeted Deauth:* Precision localized validation packets using `aireplay-ng`.
    * *Mass Deauth:* Automated multi-channel hopping framework utilizing `mdk4` to validate network resilience across all nearby access points simultaneously.

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
git clone [https://github.com/Raeed-khan/Wirless.git](https://github.com/Raeed-khan/Wirless.git)
cd Wirless

```

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

