# Server Performance Stats

A Bash script that prints basic server performance statistics on a Linux system.

## Requirements
- Linux / WSL (Ubuntu)
- Bash
- Standard utilities: `top`, `free`, `df`, `ps`

## What it Shows
- Total CPU usage
- Total memory usage (used vs total, with percentage)
- Total disk usage (used vs total, with percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

## Run
```bash
chmod +x server-stats.sh
./server-stats.sh
