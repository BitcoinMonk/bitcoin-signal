# Bitcoin Signal — Design System

> "Broadcasting from the underground"

This document defines the visual identity, aesthetic philosophy, and technical implementation of the Bitcoin Signal design system. All design work must maintain consistency with this vision.

---

## Philosophy

**Bitcoin Signal is a post-apocalyptic, underground, uncensored Bitcoin publication.** The aesthetic communicates:

- **Resistance** — We operate outside the system
- **Authenticity** — Raw, unpolished, functional
- **Signal over noise** — Clarity cuts through chaos
- **Cypherpunk heritage** — Terminal interfaces, encryption, mathematical precision

**Visual References:**
- Blade Runner (subtle, not overwhelming)
- Citadel21.com (editorial credibility + dark theme)
- Early crypto whitepapers (technical, monospace)
- Underground zines (DIY, intentionally rough)

**What we ARE NOT:**
- Slick corporate crypto marketing
- Neon-drenched overwhelming cyberpunk
- Clean minimalist tech startup
- Obviously AI-generated imagery

---

## Color Palette

### Depths (Backgrounds)
```css
--void: #030303;           /* Near-black abyss — footer, header */
--bunker: #080808;         /* Primary background — body */
--concrete: #0f0f0f;       /* Card surfaces */
--steel: #161616;          /* Elevated surfaces, inputs */
```

### Signal (Accents)
```css
--bitcoin-orange: #f7931a; /* THE signal — primary accent */
--neon-orange: #ff6b00;    /* Hot accent, hover glows */
--ember: #ff4400;          /* Danger, emphasis */
--gold: #ffa500;           /* Warm highlights */
```

### Static (Text)
```css
--white: #e0e0e0;          /* Primary text (soft, not pure white) */
--gray: #888888;           /* Secondary text, descriptions */
--dim: #444444;            /* Tertiary, disabled, muted */
--noise: #1a1a1a;          /* Subtle texture elements */
```

### Borders
```css
--border-dark: #1a1a1a;
--border-glow: rgba(247, 147, 26, 0.3);
```

**Usage Rules:**
- Orange is ONLY for: links, accents, emphasis, the word "Signal"
- Never use orange for large background areas
- Text is soft white (#e0e0e0), never pure white (#fff)
- Backgrounds graduate from void → bunker → concrete → steel

---

## Typography

### Font Stack
```css
--font-mono: 'JetBrains Mono', 'Courier New', monospace;
--font-body: 'Space Grotesk', -apple-system, BlinkMacSystemFont, sans-serif;
--font-tech: 'Share Tech Mono', monospace;
```

### Usage
| Element | Font | Weight | Transform | Letter-spacing |
|---------|------|--------|-----------|----------------|
| H1, H2 | JetBrains Mono | 600-700 | UPPERCASE | 0.04-0.08em |
| H3, H4 | JetBrains Mono | 600 | None | 0.02em |
| Body | Space Grotesk | 400 | None | Normal |
| Metadata/dates | Share Tech Mono | 400 | UPPERCASE | 0.15-0.2em |
| Code | JetBrains Mono | 400 | None | Normal |

### Hierarchy
- H1: 48-88px (responsive), uppercase, letter-spaced
- H2: 24-32px, uppercase, `// SECTION //` decorators
- H3: 20-22px, normal case
- Body: 16-17px, line-height 1.7-1.8
- Small/meta: 11-12px, uppercase, wide letter-spacing

---

## Effects & Textures

### Neon Glow
```css
--glow-soft: 0 0 10px rgba(247, 147, 26, 0.3);
--glow-medium: 0 0 20px rgba(247, 147, 26, 0.4), 0 0 40px rgba(247, 147, 26, 0.2);
--glow-intense: 0 0 10px rgba(247, 147, 26, 0.8), 0 0 30px rgba(247, 147, 26, 0.5), 0 0 60px rgba(247, 147, 26, 0.3);
```
**Usage:** Links on hover, "SIGNAL" in hero, buttons on hover, emphasized elements

### Scan Lines (Subtle)
```css
background: repeating-linear-gradient(
  0deg,
  transparent,
  transparent 1px,
  rgba(0, 0, 0, 0.1) 1px,
  rgba(0, 0, 0, 0.1) 2px
);
```
**Usage:** Header overlay, card hover states, featured images

### Noise Texture
```css
/* SVG noise at 1.5% opacity over body */
opacity: 0.015;
background-image: url("data:image/svg+xml,...feTurbulence...");
```
**Usage:** Always present on body, creates film grain underground feel

### Grid Background
```css
background-image:
  linear-gradient(rgba(247, 147, 26, 0.03) 1px, transparent 1px),
  linear-gradient(90deg, rgba(247, 147, 26, 0.03) 1px, transparent 1px);
background-size: 50-60px;
```
**Usage:** Hero section, page headers — fades with radial gradient at edges

---

## UI Patterns

### Borders
- **Sharp corners only** — NO border-radius anywhere
- Default: `1px solid var(--border-dark)`
- Emphasis: `border-left: 3px solid var(--bitcoin-orange)` (accent stripe)
- Hover: border brightens to orange

### Buttons
```css
.btn-primary {
  font-family: var(--font-mono);
  text-transform: uppercase;
  letter-spacing: 0.1em;
  border: 1px solid var(--bitcoin-orange);
  background: transparent;
  color: var(--bitcoin-orange);
}
.btn-primary:hover {
  background: var(--bitcoin-orange);
  color: var(--void);
  box-shadow: var(--glow-medium);
}
```

### Links
- Color: `var(--bitcoin-orange)`
- No underline by default
- Hover: glow effect, optional underline appears
- In articles: underline on hover via border-bottom

### Cards (Article Cards)
- Background: `var(--concrete)`
- Left accent stripe: `3px solid var(--bitcoin-orange)`
- Hover: full border glows orange, subtle translateY(-2px)
- Scan lines appear on hover
- Images: slight grayscale (20%) → full color on hover

### Navigation
- Terminal prefix: `> ` before logo
- Bracket hover: `[ARTICLES]` effect on nav items
- Monospace, uppercase, wide letter-spacing
- Social icons: square border, glow on hover

---

## Terminal/Cypherpunk Elements

### Text Prefixes
```
> Logo prefix (terminal prompt)
// Section headers (comment syntax)
< Back links
[ ] Hover brackets on nav
```

### Decorators
```
// LATEST ARTICLES //     ← Section headers
═══════════════════════   ← ASCII dividers
```

### Code Blocks
- Background: `var(--concrete)`
- Left accent: `3px solid var(--bitcoin-orange)`
- Inline code: orange text on steel background

---

## Imagery Guidelines

### Style
- **High contrast** — deep blacks, punchy highlights
- **Duotone treatment** — orange/black overlay on photos
- **Slight desaturation** — 10-20% grayscale filter
- **Film grain** — subtle noise overlay
- **Geometric/circuit patterns** — for placeholders, backgrounds

### What Works
- Brutalist architecture
- Circuit boards, technical diagrams
- Urban night photography
- Abstract geometric patterns
- ASCII art, mathematical symbols
- High contrast portraits (for contributor pages)

### What Doesn't Work
- Stock photo corporate smiles
- Obvious AI art (uncanny lighting, weird hands)
- Colorful/cheerful imagery
- Soft, blurry, low contrast photos

### Placeholder
Use `/images/placeholder-circuit.svg` when no image is available — circuit pattern with subtle Bitcoin symbol.

---

## Component Inventory

### Implemented
- [x] Header with terminal prefix
- [x] Navigation with bracket hover
- [x] Hero section with grid background
- [x] Article cards with accent stripe
- [x] Article single page layout
- [x] Footer with tech font
- [x] Blockquotes with orange border
- [x] Code blocks
- [x] ASCII art partials

### Planned
- [ ] Newsletter signup form
- [ ] Contributor/author cards
- [ ] Tag/category badges
- [ ] Table of contents (articles)
- [ ] Related articles section
- [ ] Support/donate section with QR
- [ ] Quick takes/news feed layout
- [ ] Resources/guides index

---

## File Reference

| File | Purpose |
|------|---------|
| `static/src/css/shared.css` | Core design system, all variables |
| `static/src/css/home.css` | Homepage hero, article grid |
| `static/src/css/ascii.css` | ASCII art styles, animations |
| `layouts/partials/ascii-*.html` | ASCII art components |
| `static/images/placeholder-circuit.svg` | Fallback image |

---

## Voice & Tone

The design should feel like:
- A transmission from a secure bunker
- Technical documentation with soul
- Underground newspaper, not corporate media
- Serious but not pretentious
- Confident, declarative, slightly confrontational

**Tagline:** "Cutting through the noise"

---

*This design system is a living document. Update it as the visual identity evolves.*
