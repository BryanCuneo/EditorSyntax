# PowerShell Syntax Definition for Editors

This project establishes the central development and maintenance of syntax definition
files for the PowerShell language used by editors that leverage the XML version of the
[TextMate language grammar format](http://manual.macromates.com/en/language_grammars).

Currently this syntax definition is used [by GitHub](https://github.com/github-linguist/linguist/blob/main/vendor/README.md) and by the following editors and extensions:

| Editor | Extension | Developer |
|--- |--- |--- |
| [Visual Studio Code](https://github.com/Microsoft/vscode) | [PowerShell](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell) | [Microsoft](https://marketplace.visualstudio.com/publishers/Microsoft) |
| [Pulsar](https://pulsar-edit.dev/) | [language-powershell](https://packages.pulsar-edit.dev/packages/language-powershell) | [James Sconfitto](https://github.com/jugglingnutcase/) |

In the future we may find a more common syntax that allows us to generate syntax
definitions for editors that don't leverage the TextMate format.

## What's New

This branch includes fixes and improvements to the syntax grammar as well as new tooling for unit tests.

### Grammar Updates
* Fixed errors with two tokens that caused failed tests
  * `$error` - [7396a71](https://github.com/BryanCuneo/EditorSyntax/commit/7396a71c5ab3a2fd2b1f710d816721c5fcd09014)
  * `$home` - [0e55e8a](https://github.com/BryanCuneo/EditorSyntax/commit/0e55e8ad14e8875a86726ae8af16e795e5e87987)
* Added support for [PowerShell 7's null operators](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators#null-coalescing-assignment-operator-) (`??`, `??=`, `?.`, `?[]`) - commit [8b65196](https://github.com/BryanCuneo/EditorSyntax/commit/8b651962ba21cfcdd66201393421eb748e8b4b7b)

### Testing
At the time of writing, the testing solution in the official repository requires Atom, GitHub's old text editor that was sunset in 2022. That makes it a bit of a pain to set up and it's fairly slow. Instead, this branch utilizes [TextMate Grammar Test](https://github.com/serkonda7/textmate-grammar-test), an actively maintained harness around Visual Studio Code's tokenization system ([vscode-textmate](https://github.com/microsoft/vscode-textmate)/[vscode-oniguruma](https://github.com/microsoft/vscode-oniguruma)) implemented in Node. It's modern, significantly faster, doesn't require you to install and end-of-life text editor, and it's [incredibly easy to integrate into CI](.github/workflows/node.js.yml). The unit tests themselves have been organized and now include links to relevant Microsoft documentation at the top, you can find them in [testfiles/](testfiles/).

### New Node and NPM Package Versions
Due to it's age and dependency on Atom, the old Node setup was difficult to update or add new packages to. This branch was built and tested with the current latest LTS, 26.x.

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
