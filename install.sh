#!/bin/bash
# GitHub Codespaces dotfiles 자동 설치 스크립트
# 어느 레포에서 Codespace를 열든 자동으로 실행됨

set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "[dotfiles] 설치 시작..."

# ────────────────────────────────────────
# 1. Claude Code CLI 전역 설치
# ────────────────────────────────────────
echo "[dotfiles] Claude Code CLI 설치 중..."
npm install -g @anthropic-ai/claude-code
echo "[dotfiles] Claude Code CLI 설치 완료 ✅"

# ────────────────────────────────────────
# 2. 전역 CLAUDE.md 복사
# ────────────────────────────────────────
echo "[dotfiles] CLAUDE.md 설정 중..."
mkdir -p ~/.claude
cp "$DOTFILES_DIR/CLAUDE.md" ~/.claude/CLAUDE.md
echo "[dotfiles] CLAUDE.md 적용 완료 ✅"

# ────────────────────────────────────────
# 3. 전역 .gitignore 설정
# ────────────────────────────────────────
echo "[dotfiles] .gitignore 설정 중..."
cat > ~/.gitignore_global << 'EOF'
.env
.env.local
.env*.local
node_modules/
.DS_Store
.next/
.cloudflare/
dist/
EOF

git config --global core.excludesfile ~/.gitignore_global
echo "[dotfiles] .gitignore 설정 완료 ✅"

# ────────────────────────────────────────
# 4. git 기본 설정
# ────────────────────────────────────────
# 아래 주석 해제 후 본인 정보로 수정
git config --global user.name "Did-you-walk-today"
git config --global user.email "wjdrldnd10@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase false

# ────────────────────────────────────────
# 5. 완료 보고
# ────────────────────────────────────────
echo ""
echo "================================"
echo "  dotfiles 설치 완료 ✅"
echo "================================"
echo "  - Claude Code CLI : $(claude --version 2>/dev/null || echo '설치됨')"
echo "  - CLAUDE.md       : ~/.claude/CLAUDE.md"
echo "  - .gitignore      : ~/.gitignore_global"
echo "================================"
echo ""
echo "다음 단계:"
echo "  1. npm install"
echo "  2. claude (Claude Code 실행)"
