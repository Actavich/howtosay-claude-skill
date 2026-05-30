# Contributing to howtosay

Thank you for contributing. This skill improves when native speakers keep it honest.

---

## Philosophy

Claude can produce fluent text in many languages. What it can't always produce is **what you'd actually say** — the phrasing a native speaker reaches for without thinking. That's what this skill is for, and it only gets better through human correction.

If something the skill produces sounds textbooky, regional in the wrong way, or just slightly off — that's a bug. If you're a native speaker, you're qualified to fix it.

---

## What we accept

**✅ Translation corrections**
Something the skill outputs doesn't sound natural to a native speaker. You know what it should say instead.

**✅ New language additions**
The skill doesn't cover your language yet, or handles it too generically.

**✅ Dialect-specific rules**
Like the existing EP / BP split for Portuguese — if a language has major varieties that require different vocabulary, grammar, or register, we want to capture that.

**❌ What we don't accept**
- Changes based on personal preference rather than native intuition
- Edits that break the output format structure (see [SKILL.md](./SKILL.md))
- Contributions not backed by first-hand knowledge (cite your source if you're not a native speaker)

---

## How to contribute

### Option A — Issues (no code required)

Use the issue templates to report a problem or suggest a new language. A maintainer will apply the fix.

- 🔧 [Report a translation error](.github/ISSUE_TEMPLATE/translation-correction.yml)
- 🌍 [Suggest a new language or dialect](.github/ISSUE_TEMPLATE/new-language-or-dialect.yml)

### Option B — Pull requests

1. Fork this repo
2. Edit `SKILL.md` — corrections live inline in the skill, new dialect rules get their own `⚠️ [Language] Dialect Selection` block modeled after the Portuguese one
3. Open a PR using the pull request template

---

## Guidelines for language corrections

Your PR or issue should include:

- **The input phrase** that produced the bad output
- **What the skill currently produces** (paste the full output block)
- **Your correction** in the same output format
- **Why** — a sentence or two on what's wrong with the current output and why yours is more natural

Example of a good correction note:
> *"The skill outputs 'stanco morto' but Italian speakers in casual speech almost always say 'sono distrutto' or 'sono a pezzi' — 'stanco morto' exists but sounds theatrical. The current register label should be Colloquial, not Casual."*

---

## Guidelines for new languages / dialects

A new language block should include:

- The full name and any shorthands to add to the recognized shorthands list
- Dialect-specific rules if the language has major varieties (model this after the `⚠️ Portuguese Dialect Selection` block in `SKILL.md`)
- At least 2–3 example inputs and ideal outputs in the skill's output format

---

## PR checklist

- [ ] I've tested this change by running the skill in Claude with the affected phrases
- [ ] My changes follow the existing output format (Expression / Register / Context / In the wild)
- [ ] I've described what I changed and why in the PR body
- [ ] I'm a native or near-native speaker of the affected language, or have credited my source

---

## Questions?

Open a regular GitHub issue with the label `question`.
