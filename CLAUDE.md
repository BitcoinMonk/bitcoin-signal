# Bitcoin Signal

A post-apocalyptic, underground, uncensored Bitcoin publication. Built with Hugo, hosted on Netlify.

## Quick Commands

```bash
make serve    # Dev server at http://100.105.50.58:1313
make build    # Production build
make clean    # Remove build artifacts
```

## Design System

**This site has a strict visual identity.** Before making any design changes, read:
- `docs/DESIGN-SYSTEM.md` — Complete design system reference

**Core aesthetic:** Cypherpunk, terminal interfaces, Blade Runner (subtle), underground resistance.

**Key rules:**
- NO border-radius — sharp corners only
- Orange (`#f7931a`) is precious — only for accents/links
- Typography: JetBrains Mono (headers), Space Grotesk (body)
- Backgrounds: deep blacks (`#030303` → `#161616`)
- Effects: subtle scan lines, noise texture, neon glow on hover

## Project Structure

```
layouts/           # Hugo templates
├── index.html     # Homepage
├── partials/      # Reusable components (header, footer, ascii art)
├── articles/      # Article list and single templates
content/           # Markdown content
├── articles/      # Published articles
static/
├── src/css/       # Stylesheets (shared.css is the design system)
├── images/        # Static images
docs/
├── DESIGN-SYSTEM.md  # Full design documentation
```

## Content Guidelines

- **Tone:** Serious, declarative, slightly confrontational
- **Voice:** Underground newspaper, not corporate media
- **Tagline:** "Cutting through the noise"

## Deployment

Push to `main` branch → Netlify auto-builds and deploys to https://bitcoinsignal.net
