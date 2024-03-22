<div align="center">

# asdf-zeus-cli [![Build](https://github.com/htoooth/asdf-zeus-cli/actions/workflows/build.yml/badge.svg)](https://github.com/htoooth/asdf-zeus-cli/actions/workflows/build.yml) [![Lint](https://github.com/htoooth/asdf-zeus-cli/actions/workflows/lint.yml/badge.svg)](https://github.com/htoooth/asdf-zeus-cli/actions/workflows/lint.yml)

[zeus-cli](https://www.npmjs.com/package/@zeppos/zeus-cli) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [asdf-zeus-cli  ](#asdf-zeus-cli--)
- [Contents](#contents)
- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add zeus-cli
# or
asdf plugin add zeus-cli https://github.com/htoooth/asdf-zeus-cli.git
```

zeus-cli:

```shell
# Show all installable versions
asdf list-all zeus-cli

# Install specific version
asdf install zeus-cli

# Set a version globally (on your ~/.tool-versions file)
asdf global zeus-cli latest

# Now zeus-cli commands are available
zeus -v
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/htoooth/asdf-zeus-cli/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [htoo](https://github.com/htoooth/)
