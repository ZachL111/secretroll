# Secretroll Walkthrough

I use this file as a small checklist before changing the Swift implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | rotation gap | 145 | ship |
| stress | stale secret | 142 | ship |
| edge | audit width | 167 | ship |
| recovery | owner drift | 260 | ship |
| stale | rotation gap | 176 | ship |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `owner drift` against `stale secret`, not the raw score alone.
