[中文](README.md) | **English**

# AI Bootcamp — AI Literacy & Hands-on Tools Training

Slide decks for a student-facing AI training series. The goal: understand the technological revolution unfolding right now, and get hands-on with the tools driving it.

**📽 Live demo: https://ronfi.github.io/ai-bootcamp/**

## Courses

| # | Lecture | Watch online | Source | Slides |
|---|---------|--------------|--------|--------|
| 1 | **The AI Revolution, Live** — see the big picture, master the tools | [▶ EN](https://ronfi.github.io/ai-bootcamp/ai-training-deck.en.html) · [中文](https://ronfi.github.io/ai-bootcamp/ai-training-deck.html) | [`ai-training-deck.en.html`](ai-training-deck.en.html) | 46 |
| 2 | **Essential Tools Bootcamp** — terminal · persistent sessions · Git · AI agents | [▶ EN](https://ronfi.github.io/ai-bootcamp/basic-tools-deck.en.html) · [中文](https://ronfi.github.io/ai-bootcamp/basic-tools-deck.html) | [`basic-tools-deck.en.html`](basic-tools-deck.en.html) | 47 |
| 3 | **Land Your Dream Job with AI** — the rules · the playbook · two full case studies · a 30-day plan | [▶ EN](https://ronfi.github.io/ai-bootcamp/ai-career-deck.en.html) · [中文](https://ronfi.github.io/ai-bootcamp/ai-career-deck.html) | [`ai-career-deck.en.html`](ai-career-deck.en.html) | 32 |

### Lecture 1 · The AI Revolution, Live

A complete narrative arc from macro trends to hands-on practice:

1. **A Real Revolution** — the four industrial revolutions compared, AI's growth curve, predictions from Musk/Altman/Amodei, "AI gives ordinary people wings"
2. **A Bet of National Destiny** — US vs. China national AI strategies (Stargate vs. the "AI+" Initiative)
3. **The Model Wars** — two primer slides (what an LLM is / what training means) + the US-China frontier-model race, open vs. closed source, the price war
4. **Capital Markets** — listed and soon-to-list AI companies, a ByteDance deep-dive, China's "Six Little Tigers" and their divergence
5. **Agents** — three case studies: Claude Code, the "Lobster" (OpenClaw), and Hermes
6. **AGI & Embodied AI** — AGI timelines, VLA models, the humanoid-robot race, dexterous hands
7. **Exercises** — five hands-on assignments
8. **The Pro Workflow** — the prep kit (knowledge base / data infra / goals brief), test-and-git iteration rhythm, code review, shipping and autonomous operations

### Lecture 2 · Essential Tools Bootcamp

Fully hands-on; every terminal demo can be typed along:

1. **Terminal** — core commands, WSL, a vi survival guide, ssh and key-based auth, a 20-command cheat sheet
2. **tmux** — session persistence: close your laptop, the work keeps running
3. **Scheduled jobs** — crontab syntax and three ways AI runs the night shift
4. **Git / GitHub** — the mental model and daily commands; your safety rope in the AI era
5. **Claude Code** — install, daily workflow, safety & permissions, CLAUDE.md, official Remote Control from your phone
6. **Hermes Agent** — deploy a 24/7 resident butler agent on a cloud server, hooked into WeChat/Telegram
7. **AI for daily life** — an email secretary, a message sentry, a content pipeline

### Lecture 3 · Land Your Dream Job with AI

The capstone application of the first two lectures. Thesis: "Your rival isn't AI — it's the job-seeker who uses AI well."

1. **The rules have changed** — ice-and-fire data on entry-level jobs vs. the AI skill premium, the "jobs AI replaces first" rankings (Anthropic measured / Microsoft viral / China data), recruiters use AI too
2. **The AI job-hunt workflow** — knowledge base, positioning brief, résumé engineering, portfolio, application funnel, mock interviews, offer negotiation
3. **Case 1 · Mei (finance)** — targeting equity research: an auto-updating research knowledge base plus a demo-ready report pipeline
4. **Case 2 · Shuai (software)** — targeting agent engineering: a three-project GitHub plus a job-funnel agent
5. **Red lines & the mindset** — no fabrication, no proxy tests, full candor; "AI is an amplifier"
6. **The 30-day action plan** — week by week, starting tonight

## How to use

- **Online**: click the "Watch online" links above — nothing to install
- **Local playback**: clone the repo and open the HTML files in any browser
- **Controls**: click anywhere, or `←` `→`/Space to navigate · `F` for fullscreen · `Home`/`End` for first/last slide · swipe on mobile · jump to any slide via `#N` in the URL
- **Language toggle**: the `EN` / `中` button at the bottom-right corner switches language and stays on the current slide

## Technical notes

- Each lecture is a **single-file HTML** deck: zero external dependencies (no CDNs, no web fonts), plays offline in any modern browser
- Both decks share one dark design system; chart colors validated for color-vision deficiency
- All data, quotes, and commands verified online, with sources and dates in slide footers (as of 2026-07)

---

*Built with [Claude Code](https://claude.com/claude-code); production conventions live in [`CLAUDE.md`](CLAUDE.md).*
