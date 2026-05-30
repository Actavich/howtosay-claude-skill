#!/bin/sh
# install.sh — howtosay Claude skill installer
# Usage:
#   ./install.sh                         → installs to ./claude/skills/howtosay/
#   ./install.sh ~/myproject             → installs to ~/myproject/claude/skills/howtosay/
#   ./install.sh --update                → re-downloads to update an existing install

set -e

REPO="https://raw.githubusercontent.com/actavich/howtosay-claude-skill/main"
SKILL_FILE="SKILL.md"

# Resolve target directory
if [ "$1" = "--update" ]; then
  TARGET_BASE="."
elif [ -n "$1" ]; then
  TARGET_BASE="$1"
else
  TARGET_BASE="."
fi

TARGET_DIR="$TARGET_BASE/claude/skills/howtosay"

echo "→ Installing howtosay skill to $TARGET_DIR"

mkdir -p "$TARGET_DIR"
curl -fsSL "$REPO/$SKILL_FILE" -o "$TARGET_DIR/$SKILL_FILE"

echo "✓ Done. Skill installed at $TARGET_DIR/$SKILL_FILE"
echo ""
echo "The skill activates automatically on any message starting with /howtosay."
