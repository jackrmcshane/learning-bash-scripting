# Section 5: Bash in the Real World

# vid1: troubleshooting

* check the user's bash version:
```bash
[[ ! $BASH_VERSINFO -ge 4 ]] & echo "You'll need to update to Bash 4+." && exit
```

* check if the user has nonstandard tools your script uses:
```bash
[[ ! -a $(which nmap) ]] && echo "This script uses `nmap`, which was not found on the system. Please install and try again." && exit
```
