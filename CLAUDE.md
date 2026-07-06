# training — AI 培训幻灯片项目

面向学生的 AI 通识与工具实战培训。交付物是系列网页幻灯片（单文件 HTML，共用同一设计系统）。

远程仓库：https://github.com/ronfi/ai-bootcamp（public；gh 已装在 `~/.local/bin/gh`，登录账号 suemto）
对外演示：GitHub Pages https://ronfi.github.io/ai-bootcamp/ （从 `docs/` 目录提供服务；**改完源文件必须跑 `./build-pages.sh` 重新生成 docs/ 再提交**，脚本负责给 Artifact 格式的源文件包上标准 HTML 骨架，并只在 Pages 版注入不蒜子观看计数——源文件保持零外部依赖）

双语：每讲有英文版 `*.en.html`（与中文版逐行对齐，便于 diff 同步），放映页右下角 EN/中 按钮互切且保持页码（按钮在 claude.ai 域名下自动隐藏）。**改中文版内容后，必须把对应改动同步翻译到 .en.html 同一位置**，再跑构建脚本。

## 交付物

**第一讲《AI 革命进行时》**
- 源文件：`ai-training-deck.html`
- 线上版：https://claude.ai/code/artifact/65fad3da-f2cc-44ad-9876-91f5bb0ca794

**第二讲《基础工具培训》**（终端/tmux/Git/Claude Code/Hermes，39 页，favicon 🧰）
- 源文件：`basic-tools-deck.html`
- 线上版：https://claude.ai/code/artifact/6b39bfd4-4956-4bd2-974f-8b8db64a42f5
- 结构：01 Terminal（含 WSL、vi 生存指南、ssh 进阶：密钥/config/ssh-add、PowerShell 对照、20 条速查小抄）→ 02 tmux → 03 Git/GitHub → 04 Claude Code（安装/斜杠命令/CLAUDE.md/官方 Remote Control/云服务器+tmux 组合拳）→ 05 Hermes（安装/配置接微信/技能记忆，v0.18 口径）→ 回家作业 6 件事
- 新组件：`.term` 仿终端窗口（红黄绿点+`$`提示符青色+注释灰色），实操命令均用它展示；技术命令均经官方文档核实（Claude Code 来自 code.claude.com/docs，Hermes 来自 hermes-agent.nousresearch.com/docs，2026-07-04）

第一讲相关：
  - 更新方式：修改本目录源文件后用 Artifact 工具发布，并**传 `url` 参数指向上面的线上地址**以复用同一 URL（同一会话内从同一路径重发布可省略 url）；favicon 固定为 🚀，label 用 `vN-一句话改动` 格式递增
- 当前 36 页；结构：01 真实的革命（含四次工业革命对比、马斯克等预言、"普通人翅膀"页）→ 02 中美国运之赌 → 03 大模型竞争（开头有"AI 是什么/训练是什么"原理两页）→ 04 资本市场（含字节跳动专题页）与六小虎 → 05 Agent（Claude Code / 龙虾 OpenClaw / Hermes）→ 06 练习
- 第 35 页练习题已定稿：1 数据基建 / 2 投资分析 / 3 视频转写 / 4 Hermes 工具 / 5 自选题

## 设计系统（改动时必须遵守）

- 深色科技风。色板 token 在 `:root`：底色 `#0A0F1E`，面板 `#10182E`，文字三级 `#E9EDF7/#98A4C0/#5E6B8C`
- **国别对照色是全片视觉语言**：美国=青蓝（文本 `--us:#56C8F5`、图表 `--us-bar:#1E9BD2`），中国=暖橙（文本 `--cn:#F5A340`、图表 `--cn-bar:#C97A15`）。图表色 `#1E9BD2/#C97A15` 已通过 dataviz 色板验证器（深色面 OKLCH L 0.48–0.67 区间 + CVD ΔE≈90），换色需重跑 `validate_palette.js --mode dark --surface "#0A0F1E"`
- **字号必须随屏幕缩放**：正文 `clamp(17px,1.65vw,36px)`，一切新增文字用 vw-clamp 或 em，**禁止小上限的固定 px**（曾因 24px 上限被用户投诉全屏字小）；内容区宽度 94vw
- 条形图值标签放在条外右侧，最长条宽度**不得超过 ~74%**，否则标签与相邻栏重叠（第 5 页曾踩坑）
- 点图（LMArena 页）标签用 `bottom:38%/62%` 两行交错防碰撞
- 无外部资源：字体用系统中文栈，图用手写 SVG / CSS，禁止 CDN

## 内容规范（用户明确要求过的）

- **所有数据必须联网核实并在页脚 `.src` 标注来源+日期**；查不到就明说或标"据报道"，不编造。名人引语必须用可查证原话（例：马斯克"3 年超全人类智慧"是讹传，正确为达沃斯 2026-01-22"约 5 年/2030–2031"及 X 2026-06-21"4–5 年"）
- 上市公司市值/股价优先用 `~/stock-report/` 里当日的《AI主线投资报告_YYYYMMDD.html》（用户自己的行情跟踪，含智谱 2513.HK、MiniMax 0100.HK 等），标注"2026-MM-DD 行情跟踪数据"
- 单一来源、无法交叉验证的说法不上 PPT（例：Hermes"OpenRouter 使用量第一"被弃用）
- 用户偏好：先给框架讨论、定稿再动手；"智能体元年"按 2026 表述（2025 只是"出现"）

## 幻灯片机制

- 单 `<section class="slide">` 一页，JS 控制 active 类切换；键盘 ←→/空格/PgUp·Dn/Home/End/F 全屏，触屏滑动，`#N` 哈希定位
- 新增页直接插 `<section>` 即可（页码/进度条自动），但要同步改封面上的"共 N 页"文字
- 章节页用 `.divider`（描边大数字），数据页布局常用 `.grid.g2/g3/g4` + `.card/.stat`，图表有 `.hbar`（条形）和 `.dotplot`（点图）现成样式
- 内容密度高、单屏放不下的页面给 `<section class="slide dense">` 加 `.dense` 类（整体缩至 88% 并收紧留白，字节专题页在用）；右下角 HUD 有 «‹›» 首页/翻页/末页按钮
