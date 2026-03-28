#!/bin/bash
# check-prd skill installer for Mac / Linux

set -e

TARGET="$HOME/.claude/skills"

echo "Installing check-prd skill..."
echo "Target: $TARGET"

mkdir -p "$TARGET"
cp check-prd*.md "$TARGET/"

COUNT=$(ls check-prd*.md | wc -l | tr -d ' ')
echo ""
echo "Done! $COUNT files installed to $TARGET"
echo ""
echo "Usage:"
echo "  1. Open Claude Code"
echo "  2. Switch to Opus: /model claude-opus-4-6"
echo "  3. Run: /check-prd your-prd-file.pdf"
