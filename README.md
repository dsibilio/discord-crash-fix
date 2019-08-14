# Restore Discord on crash
![test](https://i.imgur.com/WBNM2py.png)

This message might be all too common for Discord users on Linux: `Oops! We're sorry, it looks like Discord crashed. If you'd like to help resolve this issue, please send a report.`

In absence of an actual fix, this repository serves as a workaround to restart Discord automatically as soon as it crashes.

## Usage

> **NOTE**: the following should work on all UNIX-like distros that use D-Bus to manage their notification system

Simply move inside the repository folder and run
```bash
./start.sh
```

## How do I stop this

If, for any reason, you want to stop the script from running you can simply issue the following command:
```bash
pgrep restartDiscord | while read pid; do pkill -P $pid; done
```
