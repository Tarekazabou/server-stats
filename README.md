# server-stats

A tiny, dependency-light shell script that prints basic server statistics: uptime, disk usage, memory usage, top memory-consuming processes, network sockets, and CPU usage.

## Prerequisites

- A POSIX shell (Bash recommended)
- Standard GNU utilities: `uptime`, `df`, `free`, `ps`, `netstat`, `awk`, `sed`, `head`

Notes: On some systems `netstat` is provided by the `net-tools` package.

## Installation

1. Make the script executable:

	 chmod +x server-stats.sh

2. (Optional) Move it to a directory on your PATH:

	 sudo mv server-stats.sh /usr/local/bin/server-stats

## Usage

Run the script from the project directory or from anywhere if installed on your PATH:

```
./server-stats.sh
# or, if installed
server-stats
```

The script prints sections for uptime, disk usage, memory usage, the top 5 memory-consuming processes, basic network socket info, and overall CPU usage percentage.

## Example output

Server Statistics
==================
Uptime:
	10:23:45 up 5 days,  3:12,  2 users,  load average: 0.15, 0.10, 0.05

Disk Usage:
	Filesystem      Size  Used Avail Use% Mounted on
	/dev/sda1        50G   20G   28G  42% /

... (truncated)

## Contributing

Feel free to open issues or submit PRs to add options, formatting, or more detailed checks.

## License

MIT
# server-stats