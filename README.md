# Vibe AGI Homebrew Tap

Official Homebrew formulae and casks for Vibe AGI projects.

## Install ViberMate

ViberMate is distributed as a signed and notarized universal macOS app:

```bash
brew install --cask vibe-agi/tap/vibermate
```

Open ViberMate from Applications. To use `vibermate` in Terminal, open
**Settings → Access & launch → Terminal command** in the app and follow the setup prompt.
Uninstalling the cask preserves your settings and runtime data.

ViberMate 是经过签名和 Apple 公证的通用 macOS App。安装后从“应用程序”中打开；
如需在终端使用 `vibermate` 命令，请在 App 内打开
**设置 → 接入与启动 → 终端命令**并按提示完成设置。卸载 App 时会保留设置和运行数据。

To update an existing installation / 更新已安装的版本：

```bash
brew update
brew upgrade --cask vibe-agi/tap/vibermate
```

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
| `human` | [Human](https://github.com/vibe-agi/human) | macOS/Linux, amd64/arm64 |
| `s3disk` | [s3disk](https://github.com/vibe-agi/s3disk) | macOS/Linux, amd64/arm64 |

## Available Casks

| Cask | Project | Platform |
| --- | --- | --- |
| `vibermate` | [ViberMate](https://github.com/vibe-agi/vibermate) | macOS 14+, universal |

### Human

Human exposes a person as an OpenAI, Anthropic, and Responses-compatible model
endpoint, with a browser inbox for replies, native tool calls, Tasks, and
reviewed workspace changes.

```bash
brew install vibe-agi/tap/human
human local --workspace ~/human-workspace
```

The model URL and private browser login URL are printed at startup. Human
currently publishes runtime-tested macOS and Linux binaries for amd64 and
arm64.

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
