# GitHub workflow guidance

- Keep the generated CI caller byte-identical to the Velnor tap template; edit
  its generator rather than this repository copy.
- Pin every third-party action to a full commit SHA. Use least privilege,
  bounded concurrency, measured timeouts, and credential-free checkout.
- Install automation tooling through mise; never use Homebrew as a general
  tool installer. `brew` is allowed only when validating this tap's formulas.
- Keep repository mutation single-writer and preserve identical verification
  semantics across Velnor and GitHub lanes.
