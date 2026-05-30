# 🗣️ howtosay — Native-Level Translation Skill for Claude

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

A Claude skill that delivers **native-level, register-aware translations** — not dictionary definitions, not textbook phrases, but what people actually say.

---

## What makes it different

Most translation tools give you the correct word. This skill gives you the **right word for the moment**.

- **Register-aware** — every output is labeled: Formal / Neutral / Casual / Colloquial / Slang
- **In-the-wild examples** — sentences as a native speaker would actually say them, with contractions, clipped forms, and filler words intact
- **Session memory** — set your target language once per conversation, then just type
- **Edge-case handling** — no clean equivalent? The skill explains the gap rather than guessing

---

## Installation

**One-liner (curl):**
```bash
mkdir -p claude/skills/howtosay && curl -fsSL https://raw.githubusercontent.com/actavich/howtosay-claude-skill/main/SKILL.md -o claude/skills/howtosay/SKILL.md
```

**Or use the install script:**
```bash
curl -fsSL https://raw.githubusercontent.com/actavich/howtosay-claude-skill/main/install.sh | sh
```

**To update an existing install:**
```bash
curl -fsSL https://raw.githubusercontent.com/actavich/howtosay-claude-skill/main/install.sh | sh -s -- --update
```

**Manual install:**
Drop [`SKILL.md`](./SKILL.md) into your `claude/skills/howtosay/` directory.

```
claude/
└── skills/
    └── howtosay/
        └── SKILL.md
```

The skill activates automatically on any message starting with `/howtosay`.

---

## Usage

```
/howtosay [word / phrase / expression] - [target language]
```

**Set your language once, then drop it:**

```
/howtosay it is what it is - ES       → sets Spanish as session default
/howtosay what a mess                  → still uses Spanish, no need to repeat
/howtosay that's not my problem - DE  → switches default to German
```

**Recognized shorthands:**

| Shorthand | Language |
|---|---|
| `ES` | Spanish |
| `DE` | German |
| `FR` | French |
| `IT` | Italian |
| `EN` | English |
| `RU` | Russian |
| `JP` / `JA` | Japanese |
| `ZH` | Chinese |
| `KO` | Korean |
| `BP` / `PT-BR` | Brazilian Portuguese |
| `EP` / `PT-PT` | European Portuguese |
| `PT` | Portuguese (will ask: EP or BP?) |

Full language names also work: `/howtosay relax - Turkish`

---

## Example

```
/howtosay it is what it is - ES
```

> 🗣️ **Spanish**
>
> **Expression:** es lo que hay
>
> **Register:** Neutral / Casual
>
> **Context & Usage:** Said when accepting an imperfect situation without drama. Widely used across Spain and Latin America — implies low-key resignation rather than defeat.
>
> **In the wild:** *"Mira, no me gustó cómo salió el proyecto, pero es lo que hay."*

---

## Portuguese

Specifying just `PT` or "Portuguese" without a dialect will prompt the skill to ask **once per session:**

> *"European (EP) or Brazilian (BP) Portuguese?"*

Your choice is stored for the rest of the conversation.

- **`BP` / `PT-BR`** → natural, broadly understood Brazilian Portuguese
- **`EP` / `PT-PT`** → standard European Portuguese (Lisbon register — *autocarro*, *telemóvel*, *tu* + conjugation, etc.)

---

## Dialect Customization

The base skill deliberately avoids regional bias — outputs are broadly understood across each language. If you want tighter regional targeting (a specific city, generation, or subculture), you can add personal rules directly to your local copy of `SKILL.md`.

For example, you could add a block like:

```markdown
## ⚠️ Personal Rule — [Language]
Whenever the target is [language]:
→ [Your rule — e.g. use X dialect, prefer Y register, flag Z regional terms]
```

Your local file stays yours. If your customization is broadly useful (e.g. a well-defined dialect split), consider contributing it back via a PR so others can opt into it too.

---

## Contributing

Native speakers are the source of truth for this skill. If something sounds textbooky, regional in the wrong way, or flat-out wrong in your language — you're exactly who should fix it.

See [CONTRIBUTING.md](./CONTRIBUTING.md) for how to:
- Correct a translation or register label
- Add support for a new language or dialect
- Use the issue templates to report a problem without touching any code

---

## License

MIT — see [LICENSE](./LICENSE)
