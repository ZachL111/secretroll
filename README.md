# secretroll

`secretroll` explores platform security with a small Swift codebase and local fixtures. The technical goal is to plan secret rotation windows and audit-friendly stale credential reports.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Secretroll Review Notes

Start with `owner drift` and `stale secret`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for rotation gap and stale secret.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/secretroll-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `owner drift` and `stale secret`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `recovery` is the high score at 260; `stress` is the low score at 142.

## Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
