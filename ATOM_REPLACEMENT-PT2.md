# Considering an Atom Replacement Part 2 - Modern Test Stack

Atom was sunset all the way back in 2022, and I think the grammar testing can be improved by moving away from it as the test runner. There are two potential routes to go. One is to move away completely from Atom and continuation projects to a more modern system. This branch utilizes [TextMate Grammar Test](https://github.com/serkonda7/textmate-grammar-test), an actively maintained harness around Visual Studio Code's tokenization system ([vscode-textmate](https://github.com/microsoft/vscode-textmate)/[vscode-oniguruma](https://github.com/microsoft/vscode-oniguruma)) implemented in Node. This will require more work than simply dropping in an Atom-compatible replacement but I think it will offer a better testing experience overall and be a good opportunity to expand and organize tests in a more developer-friendly way. I have implemented some passing tests that can be found in [the testfiles/ directory](testfiles/). You can run all tests or a specific one.

### Build and Run All Tests
`npm run test`

You should see results like this:
```
npm notice run test
npm notice run npm run build:grammar && npm run test:grammar
npm notice run build:grammar
npm notice run node ./tools/build-grammar.js ./PowerShellSyntax.tmLanguage ./grammars/powershell.tmLanguage.json
[Starting] Converting ./PowerShellSyntax.tmLanguage to json.
... Reading source file.
... Parsing content.
... Building contents.
[Finished] File written to: ./grammars/powershell.tmLanguage.json
npm notice run test:grammar
npm notice run textmate-grammar-test "testfiles/**/*.ps1"
√ testfiles\strings_and_formatting.ps1 run successfuly.
√ testfiles\variables\names_and_scopes.ps1 run successfuly.
√ testfiles\variables\automatic_variables.ps1 run successfuly.
√ testfiles\variables\automatic_constants.ps1 run successfuly.
```

### Just Run the Tests
`npm run test:grammar`

### Run a Specific Test File
After building the grammar, you can run a specific test file like so:
```PowerShell
npx textmate-grammar-test "testfile/variables/automatic_constants.ps1"
```

# Part 1 - Pulsar as Drop-In Atom Replacement
In a separate branch I explored using the [Pulsar editor](https://pulsar-edit.dev/) as a modern replacement for Atom as the test runner. Read about that [here](https://github.com/BryanCuneo/EditorSyntax/blob/atom_replacements/ATOM_REPLACEMENT-PT1.md).
