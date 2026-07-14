<div align="center">

# GTA Online Heist Saving Glitch

**Temporarily blocks GTA Online cloud saving using Windows Firewall.**

[![Version](https://img.shields.io/badge/Version-1.0-yellow?style=for-the-badge\&logo=windows\&logoColor=white)](https://github.com/louzkk/gta-online-save-blocker)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)
[![Discord](https://img.shields.io/badge/Discord-yellow?style=for-the-badge\&logo=Discord\&logoColor=white)](https://discord.gg/QJPdw2UrVt)
[![Download](https://img.shields.io/badge/Download-yellow?style=for-the-badge\&logo=Github\&logoColor=white)](https://github.com/louzkk/gta-online-save-blocker/releases)

</div>

A simple AutoHotkey script that creates a temporary Windows Firewall rule to block GTA Online communication with Rockstar's save server.
**Useful for repeating heists without replaying setup missions or waiting for the cooldown.**

**Requirements:** Windows and Administrator privileges.

---

## Usage
| Bind       | Action                 |
| -------------- | ---------------------- |
| **Ctrl + F9**  | Enable No Saving Mode  |
| **Ctrl + F12** | Disable No Saving Mode |

Enable **No Saving Mode** (**Ctrl + F9**) while GTA Online is running in **Windowed** or **Borderless Window** mode. After completing the heist, you'll see the normal ending followed by a connection error. Return to **Story Mode**, disable **No Saving Mode** (**Ctrl + F12** or close the script), then reconnect to **GTA Online**.

A status tooltip will be displayed in the top-left corner of the game window.

<p align="center">
  <img src="ahk-image-example1.png" width="49%">
  <img src="ahk-image-example2.png" width="49%">
</p>

---

## Notes
* No game files are modified.
* The firewall rule is automatically removed when the script exits.
* Administrator privileges are required.
* Rockstar may change the save server IP in future updates.
* Use at your own risk. I am not responsible for bans.

---

<div align="center">
Maintained by: <a href="https://github.com/louzkk">louzkk 🇧🇷</a>
</div>
