# Contributing to howtosay

This skill gets better when native speakers keep it honest. If something sounds textbooky, regional in the wrong way, or just slightly off — that's a bug. You're qualified to fix it.

---

## What we accept

**Translation corrections**
The skill outputs something a native speaker wouldn't say. You know what it should be instead.

**New language additions**
Your language isn't covered yet, or is handled too generically.

**Dialect-specific rules**
Like the EP / BP split for Portuguese — if a language has major varieties requiring different vocabulary, grammar, or register, we want to capture that.

**What we don't accept**
- Personal preference over native intuition
- Edits that break the output format (see [SKILL.md](./SKILL.md))
- Contributions not backed by first-hand knowledge — cite your source if you're not a native speaker

---

## How to contribute

### Option A — Issues (no code required)

Use the issue templates to report a problem or suggest a language. A maintainer applies the fix.

- 🔧 [Report a translation error](.github/ISSUE_TEMPLATE/translation-correction.yml)
- 🌍 [Suggest a new language or dialect](.github/ISSUE_TEMPLATE/new-language-or-dialect.yml)

### Option B — Pull requests

1. Fork the repo
2. Edit `SKILL.md` — corrections go inline, new dialect rules get their own `⚠️ [Language] Dialect Selection` block modeled after the Portuguese one
3. Open a PR using the pull request template

---

## Guidelines for corrections

Your PR or issue should include:

- **The input phrase** that produced the bad output
- **What the skill currently produces** (paste the full output block)
- **Your correction** in the same format
- **Why** — a sentence or two on what's wrong and why yours is more natural

Good correction note example:
> *"The skill outputs 'stanco morto' but Italian speakers in casual speech say 'sono distrutto' or 'sono a pezzi' — 'stanco morto' exists but sounds theatrical. The register label should be Colloquial, not Casual."*

---

## Guidelines for new languages / dialects

A new language block should include:

- Full name and shorthands to add to the recognized list
- Dialect-specific rules if the language has major varieties (model after the `⚠️ Portuguese Dialect Selection` block in `SKILL.md`)
- At least 2–3 example inputs and ideal outputs in the skill's output format

---

## PR checklist

- [ ] Tested by running the skill in Claude with the affected phrases
- [ ] Changes follow the existing output format (Expression / Register / Context / In the wild)
- [ ] Described what changed and why in the PR body
- [ ] Native or near-native speaker of the affected language, or source credited

---

## Questions?

Open a GitHub issue with the label `question`.
