# Field Notes

I would read this project from the data inward: cases first, implementation second.

The domain cases cover `rotation gap`, `stale secret`, `audit width`, and `owner drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`recovery` tells me the happy path still works. `stress` tells me whether the guardrail still has teeth.

The language-specific addition keeps the review model in a small compiled command-line harness.
