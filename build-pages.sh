#!/usr/bin/env bash
# 把幻灯片源文件（claude.ai Artifact 格式，无 html/head 骨架）包壳成
# 标准 HTML 输出到 docs/，供 GitHub Pages 使用。改完源文件跑一次即可。
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p docs

wrap() { # $1=源文件 $2=页面标题
  {
    printf '<!doctype html>\n<html lang="zh-CN">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1">\n<title>%s</title>\n</head>\n<body>\n' "$2"
    cat "$1"
    printf '\n</body>\n</html>\n'
  } > "docs/$1"
  echo "✓ docs/$1"
}

wrap ai-training-deck.html "AI 革命进行时 · 第一讲"
wrap basic-tools-deck.html "基础工具培训 · 第二讲"
