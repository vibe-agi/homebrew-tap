# Contributing

Each packaged project has one formula under `Formula/<name>.rb`.

## Add Or Update A Formula

1. Use an immutable, versioned upstream release URL.
2. Record the exact SHA-256 published by that project.
3. Declare the project's license, platform requirements, and dependencies.
4. Keep installation non-interactive and confined to the Homebrew Cellar.
5. Do not initialize user state, start services, or download unrelated runtime
   payloads during formula installation.
6. Add the formula name to the CI matrix in `.github/workflows/test.yml`.
7. Run the same audit, install, test, and uninstall commands locally.

```bash
# Run from a committed checkout; Homebrew clones its current HEAD.
brew untap vibe-agi/tap 2>/dev/null || true
brew tap vibe-agi/tap "$PWD"
brew audit --strict --online vibe-agi/tap/<name>
brew install --yes vibe-agi/tap/<name>
brew test vibe-agi/tap/<name>
brew uninstall <name>
```

Project-specific verification belongs in an explicitly named conditional CI
step. It must not be hidden inside another formula's test path.

On macOS, Homebrew's cleaner does not recognize Linux ELF files as executable.
If a project ships guest-side ELF helpers in `bin/`, preserve only those exact
paths with `skip_clean` and verify their modes in the formula test.
