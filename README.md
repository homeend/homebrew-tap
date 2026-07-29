# homeend/homebrew-tap

Homebrew formulae for [homeend](https://github.com/homeend) projects.

## Install

```bash
brew install homeend/tap/gg
```

Or tap first, then install:

```bash
brew tap homeend/tap
brew install gg
```

## Formulae

| Formula | Description |
|---------|-------------|
| [`gg`](Formula/gg.rb) | [gigagit](https://github.com/homeend/gigagit) — fast terminal git client for very large monorepos |

## Updating a formula for a new release

1. Bump the `url` to the new tag.
2. Recompute the checksum: `curl -L <tarball-url> | shasum -a 256`.
3. Update the `sha256` line, commit, push.
