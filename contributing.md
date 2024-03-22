# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

# TODO: adapt this
asdf plugin test zeus-cli https://github.com/htoooth/asdf-zeus-cli.git "zeus-cli -v"
```

Tests are automatically run in GitHub Actions on push and PR.
