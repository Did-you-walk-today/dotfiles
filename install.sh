#!/bin/bash
# GitHub Codespaces dotfiles 자동 설치 스크립트
# 어느 레포에서 Codespace를 열든 자동으로 실행됨

set -e

### Node.js 버전 확인
echo "[dotfiles] Node.js: $(node -v)"
echo "[dotfiles] npm: $(npm -v)"

### Claude Code CLI 설치
echo "[dotfiles] Claude Code CLI 설치 중..."
npm install -g @anthropic-ai/claude-code

### 전역 .gitignore 설정
cat > ~/.gitignore_global << 'EOF'
.env
.env.local
.env*.local
node_modules/
.DS_Store
EOF

git config --global core.excludesfile ~/.gitignore_global

### git 기본 설정 (이름/이메일은 직접 수정)
# git config --global user.name "기웅"
# git config --global user.email "your@email.com"

echo "[dotfiles] 설치 완료"
