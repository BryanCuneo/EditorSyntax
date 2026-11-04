# PowerShell Syntax Definition for Editors

This project establishes the central development and maintenance of syntax definition
files for the PowerShell language used by editors that leverage the XML version of the
[TextMate language grammar format](http://manual.macromates.com/en/language_grammars).

Currently this syntax definition is used in the following editors and extensions:

| Editor | Extension | Developer |
|--- |--- |--- |
| [Visual Studio Code](https://github.com/Microsoft/vscode) | [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell) | [Microsoft](https://marketplace.visualstudio.com/publishers/Microsoft) |
| [Pulsar](https://pulsar-edit.dev/) | [language-powershell](https://packages.pulsar-edit.dev/packages/language-powershell) | [James Sconfitto](https://github.com/jugglingnutcase/) |

In the future we may find a more common syntax that allows us to generate syntax
definitions for editors that don't leverage the TextMate format.

## Status

This is a WIP branch containing new tooling.

## Install Dependencies, Build, and Test
### Prerequisites

- Node.JS - tested on the current LTS (26.x at the time of writing) but may work on other versions.

### Install dependencies

```Shell
PS> npm install
```

### Rebuild the grammar and run all tests
```Shell
PS> npm run full
```

### Just build the grammar
```Shell
PS> npm run build
```

### Just run the tests
```Shell
PS> npm run test
```

### Run a specific test file
```Shell
PS> npx textmate-grammar-test testfiles/operators/format.ps1
```

## Contributing

We would love to have community contributions to this project to make PowerShell syntax
highlighting great in as many editors as we can.  Please feel free to file issues or
send pull requests if you'd like to contribute.

## Maintainers

- [Andy Jordan](https://github.com/andyleejordan)
- [Nick James](https://github.com/omniomi)

## License

This extension is [licensed under the MIT License](LICENSE). Please see the
[third-party notices](Third%20Party%20Notices.txt) file for details on the original
source of the TextMate definition that we use.

## Code of Conduct

Please see our [Code of Conduct](.github/CODE_OF_CONDUCT.md) before participating in this project.

## Security Policy

For any security issues, please see our [Security Policy](.github/SECURITY.md).
