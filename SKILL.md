---
name: howtosay
description: >
  Activate this skill whenever the user's message starts with /howtosay. This skill
  provides native-level, register-aware translations of words, phrases, and expressions
  into any target language, with dialect selection for Portuguese. It manages session
  language memory so repeated /howtosay calls don't need to re-specify the target
  language. Always use this skill on /howtosay — even for single words or short
  phrases — because native-level nuance, register labeling, and in-the-wild example
  sentences are required outputs that Claude cannot reliably produce without this
  skill's structured format.
---

# /howtosay — Native-Level Translation Skill

## Trigger
Activate on any message beginning with `/howtosay`.

---

## Syntax
```
/howtosay [word / phrase / expression] - [target language]
```

---

## Session Language Memory

- **First use with a target specified** → store it as the session default. Confirm once:
  *"Got it — defaulting to [language] for this session."*
- **Subsequent uses without ` - [language]`** → apply stored default silently, no mention.
- **To change default** → user writes `/howtosay [phrase] - [new language]`
  Update silently, confirm once: *"Switching default to [new language]."*
- **If no default is set and no language is specified** → ask:
  *"Which language should I translate to?"*

Store session defaults in your working memory for the duration of the conversation.

---

## Language Input

- **Source language**: auto-detect from the input text. Never ask the user to specify it.
- **Target language**: any language, specified by name, native name, or common shorthand.

Recognized shorthands (non-exhaustive):
`BP` / `PT-BR` → Brazilian Portuguese · `EP` / `PT-PT` → European Portuguese ·
`ES` → Spanish · `DE` → German · `EN` → English · `FR` → French ·
`RU` → Russian · `IT` → Italian · `JP` / `JA` → Japanese ·
`ZH` → Chinese · `KO` → Korean ·
Any other language written by full name is also valid.

---

## ⚠️ Portuguese Dialect Selection

Portuguese has two major standard varieties that differ significantly in vocabulary,
grammar, and register. Handle as follows:

| User input | Behavior |
|---|---|
| `BP` / `PT-BR` / "Brazilian Portuguese" | Use natural, broadly-understood Brazilian Portuguese. No regional bias — output should be understood across Brazil. |
| `EP` / `PT-PT` / "European Portuguese" | Use standard European Portuguese (Lisbon register). Prefer *tu* + conjugation for casual register; use EP vocabulary (*autocarro*, *telemóvel*, *casa de banho*, etc.) |
| `PT` / "Portuguese" (no dialect specified) | Ask **once per session**: *"European (EP) or Brazilian (BP) Portuguese?"* → store reply as session dialect default. |

Once set, store the Portuguese dialect choice in session memory alongside the language default.

---

## Output Format

Respond with this exact structure for every query:

---

🗣️ **[Target Language]**

**Expression:** [primary natural expression]
*If multiple forms are equally common and interchangeable, list as: option A / option B*

**Register:** [Formal / Neutral / Casual / Colloquial / Slang]

**Context & Usage:** [1–3 sentences on when/where/how native speakers use this —
tone, social setting, what it implies, any nuances to know]

**In the wild:** *"[A sentence exactly as a native speaker would say it]"*
[brief gloss only if the example itself contains idioms or non-obvious vocabulary]

---

Keep the format clean. Do not add extra headers, markdown sections, or explanatory
preambles before the block. The session default confirmation (if needed) goes on a
separate line **before** the translation block.

---

## Edge Cases

| Situation | Behavior |
|---|---|
| No clean equivalent | Give the closest natural expression + explain the gap in Context |
| Phrase is formal/written but rarely spoken | Give the spoken version + note the difference |
| Input is ambiguous | Ask **one** clarifying question before translating |
| Single word with very different meanings | Cover the most common meaning, then ask if another sense was intended |
| Highly offensive / vulgar input | Translate faithfully with a register note; do not sanitize without flagging |
| Proper nouns, brands, untranslatable culture-specific terms | Explain rather than translate, note in Context |

---

## Quality Standards

- **Never use textbook filler.** "How are you?" → German target should yield "Na, wie läuft's?" (casual) not "Wie geht es Ihnen?" unless the register actually calls for formal.
- **The "In the wild" sentence must sound like something overheard on a bus**, not in a classroom. Contractions, clipped forms, filler words — whatever is natural.
- **Register labels are prescriptive, not decorative.** If Slang, the gloss must explain it. If Formal, the example must stay formal.
- **For Portuguese**: always apply the correct variety — EP vocabulary and grammar for European, broadly natural register for Brazilian. Never mix the two.
