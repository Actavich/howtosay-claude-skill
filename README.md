# /howtosay - Native-Level Translation Skill for Claude

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

Most translation tools give you the correct word. This skill gives you the right word for the moment — the phrase a native speaker reaches for without thinking.

---

## Features

- **Register-aware** — every output is labeled: Formal / Neutral / Casual / Colloquial / Slang
- **In-the-wild examples** — sentences as a native speaker would say them, contractions and filler words intact
- **Session memory** — set your target language once per conversation, then just type
- **Edge-case handling** — no clean equivalent? The skill explains the gap rather than guessing

---

## Installation

### macOS / Linux

**One-liner (curl):**
```bash
mkdir -p claude/skills/howtosay && curl -fsSL https://raw.githubusercontent.com/Actavich/howtosay-claude-skill/main/SKILL.md -o claude/skills/howtosay/SKILL.md
```

**Or use the install script:**
```bash
curl -fsSL https://raw.githubusercontent.com/Actavich/howtosay-claude-skill/main/install.sh | sh
```

**To update an existing install:**
```bash
curl -fsSL https://raw.githubusercontent.com/Actavich/howtosay-claude-skill/main/install.sh | sh -s -- --update
```

### Windows (PowerShell)

**Install:**
```powershell
New-Item -ItemType Directory -Force -Path "claude\skills\howtosay" | Out-Null; Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Actavich/howtosay-claude-skill/main/SKILL.md" -OutFile "claude\skills\howtosay\SKILL.md"
```

**To update an existing install:**
```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Actavich/howtosay-claude-skill/main/SKILL.md" -OutFile "claude\skills\howtosay\SKILL.md"
```

**Manual install:**
Drop [`SKILL.md`](./SKILL.md) into `claude/skills/howtosay/`.

```
claude/
└── skills/
    └── howtosay/
        └── SKILL.md
```

The skill activates on any message starting with `/howtosay`.

---

## Usage

```
/howtosay [word / phrase / expression] - [target language]
```

Set your language once, then drop it:

```
/howtosay it is what it is - ES       → sets Spanish as session default
/howtosay what a mess                  → still Spanish, no need to repeat
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

>  **Spanish**
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

Specifying `PT` or "Portuguese" without a dialect prompts the skill to ask once per session:

> *"European (EP) or Brazilian (BP) Portuguese?"*

Your choice is stored for the rest of the conversation.

- **`BP` / `PT-BR`** → natural, broadly understood Brazilian Portuguese
- **`EP` / `PT-PT`** → standard European Portuguese (Lisbon register — *autocarro*, *telemóvel*, *tu* + conjugation, etc.)

---

## Dialect Customization

The base skill avoids regional bias — outputs work broadly across each language. For tighter targeting (a specific city, generation, or subculture), add personal rules to your local copy of `SKILL.md`:

```markdown
## ⚠️ Personal Rule — [Language]
Whenever the target is [language]:
→ [Your rule — e.g. use X dialect, prefer Y register, flag Z regional terms]
```

Your local file stays yours. If the customization is broadly useful, consider contributing it back via a PR.

---

## Contributing

Native speakers are the source of truth. If something sounds textbooky, regional in the wrong way, or flat-out wrong in your language — you're exactly who should fix it.

See [CONTRIBUTING.md](./CONTRIBUTING.md) for how to correct a translation, add a language, or use the issue templates without touching any code.

---

## Contact

Questions or collaboration ideas? Reach me at [anastasiiaoktovich@gmail.com](mailto:anastasiiaoktovich@gmail.com).

---

## License

MIT — see [LICENSE](./LICENSE)
