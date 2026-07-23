# Vibe AGI Homebrew Tap

Official Homebrew formulae for Vibe AGI projects.

## Install A Formula

Install a formula directly. Homebrew adds this tap automatically:

```bash
brew install vibe-agi/tap/<formula>
```

The equivalent explicit tap flow is:

```bash
brew tap vibe-agi/tap
brew install <formula>
```

## Available Formulae

| Formula | Project | Platform |
| --- | --- | --- |
| `hideout` | [Hideout](https://github.com/vibe-agi/hideout) | macOS arm64 |
| `s3disk` | [s3disk](https://github.com/vibe-agi/s3disk) | macOS/Linux, amd64/arm64 |

### s3disk

s3disk shares one or more local workspaces through S3-compatible storage and
exposes them read-only on other computers through a local WebDAV or FUSE view.

```bash
brew install vibe-agi/tap/s3disk
```

s3disk is currently a pre-1.0 engineering preview. Review its
[platform support and current boundaries](https://github.com/vibe-agi/s3disk#platform-support)
before embedding it in a product.

### Hideout

Hideout runs AI agents and untrusted CLI tools in a local VM without losing
host-native workflows.

```bash
brew install vibe-agi/tap/hideout
```

The formula installs Lima automatically, but does not initialize a profile or
start a VM. Initialize Hideout explicitly:

```bash
hideout init --template dev --profile default --backend lima \
  --network direct --runtime developer-standard --no-input
```

First use downloads the retained developer runtime separately; expect
approximately 1 GB.

Upgrade or uninstall the package with Homebrew:

```bash
brew update
brew upgrade vibe-agi/tap/hideout
brew uninstall hideout
```

Homebrew removes package-owned files only. Hideout profiles, environments,
audit evidence, and other user state under `~/.hideout` are preserved.

The formula downloads the exact signed macOS package from the corresponding
Hideout GitHub Release. Homebrew verifies the archive SHA-256; the formula also
verifies the embedded macOS code signature and runs Hideout's package manifest
verification before installing into the Cellar.

Security issues belong in the private reporting channel documented by
[Hideout SECURITY.md](https://github.com/vibe-agi/hideout/blob/master/SECURITY.md).

## Contributing A Formula

See [CONTRIBUTING.md](CONTRIBUTING.md). Each project keeps an independent
version, release URL, checksum, dependencies, and formula test. Adding a project
must not change or share another project's runtime state.
