# Review Journal

The review surface for `secretroll` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its platform security focus without claiming live deployment or external usage.

## Cases

- `baseline`: `rotation gap`, score 145, lane `ship`
- `stress`: `stale secret`, score 142, lane `ship`
- `edge`: `audit width`, score 167, lane `ship`
- `recovery`: `owner drift`, score 260, lane `ship`
- `stale`: `rotation gap`, score 176, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
