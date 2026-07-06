#!/usr/bin/env bash
# 把幻灯片源文件（claude.ai Artifact 格式，无 html/head 骨架）包壳成
# 标准 HTML 输出到 docs/，供 GitHub Pages 使用。改完源文件跑一次即可。
# 仅 Pages 版注入不蒜子(busuanzi)观看计数，源文件保持零外部依赖。
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p docs

wrap() { # $1=源文件 $2=lang $3=页面标题 $4=计数文案前缀 $5=计数文案后缀
  [ -f "$1" ] || { echo "跳过（不存在）: $1"; return; }
  {
    printf '<!doctype html>\n<html lang="%s">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1">\n<title>%s</title>\n</head>\n<body>\n' "$2" "$3"
    cat "$1"
    printf '\n<div id="pv" style="position:fixed;left:2.2vw;bottom:2.4vh;z-index:10;font-size:12px;color:#5E6B8C;font-variant-numeric:tabular-nums"><span id="busuanzi_container_page_pv" style="display:none">%s<span id="busuanzi_value_page_pv"></span>%s</span></div>\n' "$4" "$5"
    printf '<script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>\n'
    printf '</body>\n</html>\n'
  } > "docs/$1"
  echo "✓ docs/$1"
}

wrap ai-training-deck.html    zh-CN "AI 革命进行时 · 第一讲"                "观看 " " 次"
wrap ai-training-deck.en.html en    "The AI Revolution, Live · Lecture 1"  "" " views"
wrap basic-tools-deck.html    zh-CN "基础工具培训 · 第二讲"                  "观看 " " 次"
wrap basic-tools-deck.en.html en    "Essential Tools Bootcamp · Lecture 2" "" " views"
