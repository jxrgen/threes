#!/bin/bash
LOG="/home/jxrgen/opencode/threes/progress.log"
DIR="/home/jxrgen/opencode/threes"

echo "=== $(date '+%Y-%m-%d %H:%M:%S') ===" >> "$LOG"
echo "Git status:" >> "$LOG"
cd "$DIR" && git status --short >> "$LOG" 2>&1
echo "Remote:" >> "$LOG"
cd "$DIR" && git remote -v >> "$LOG" 2>&1
echo "Last commit:" >> "$LOG"
cd "$DIR" && git log --oneline -1 >> "$LOG" 2>&1
echo "Files:" >> "$LOG"
ls -la "$DIR" >> "$LOG" 2>&1
echo "" >> "$LOG"
