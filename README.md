# tdiethe/homebrew-tap

Homebrew tap for my Mac apps.

```bash
brew tap tdiethe/tap
brew trust tdiethe/tap     # Homebrew asks you to trust third-party taps
brew install --cask lichess-desk
```

| Cask | What it is |
| --- | --- |
| `lichess-desk` | Lichess Desk: an unofficial lichess.org app made for streaming, with a board tint as your clock runs down and auto-queen. Source: [tdiethe/Chess-Stuff](https://github.com/tdiethe/Chess-Stuff/tree/main/lichess-desk) |

The apps aren't signed with an Apple Developer ID, so macOS blocks the first launch:
open the app once, then allow it under *System Settings → Privacy & Security → Open Anyway*.

Releases are published with `lichess-desk/release.sh <version>` in Chess-Stuff.
