# Considering an Atom Replacement Part 2 - Modern Test Stack

Atom was sunset all the way back in 2022, and I think the grammar testing can be improved by moving away from it as the test runner. There are two potential routes to go. One is to move away completely from Atom and continuation projects to a more modern system. This branch utilizes [TextMate Grammar Test](https://github.com/serkonda7/textmate-grammar-test), an actively maintained harness around Visual Studio Code's tokenization system ([vscode-textmate](https://github.com/microsoft/vscode-textmate)/[vscode-oniguruma](https://github.com/microsoft/vscode-oniguruma)) implemented in Node. This will require more work than simply dropping in an Atom-compatible replacement but I think it will offer a better testing experience overall and be a good opportunity to expand and organize tests in a more developer-friendly way. I have implemented all tests from [The Big Test File](spec/testfiles/syntax_test_TheBigTestFile.ps1), they can be found in [the testfiles/ directory](testfiles/). You can run all tests or a specific one.

### Build and Run All Tests
`npm run test`

You should see results like this:
```
> test
> npm run build:grammar && npm run test:grammar


> build:grammar
> node ./tools/build-grammar.js ./PowerShellSyntax.tmLanguage ./grammars/powershell.tmLanguage.json

[Starting] Converting ./PowerShellSyntax.tmLanguage to json.
... Reading source file.
... Parsing content.
... Building contents.
[Finished] File written to: ./grammars/powershell.tmLanguage.json

> test:grammar
> textmate-grammar-test "testfiles/**/*.ps1"

√ testfiles\using_and_requires.ps1 run successfuly.
√ testfiles\reserved_words.ps1 run successfuly.
√ testfiles\misc.ps1 run successfuly.
√ testfiles\classes.ps1 run successfuly.
√ testfiles\variables\names_and_scopes.ps1 run successfuly.
√ testfiles\variables\automatic_variables.ps1 run successfuly.
√ testfiles\variables\automatic_constants.ps1 run successfuly.
√ testfiles\types\type_accelerators.ps1 run successfuly.
√ testfiles\types\strings_and_formatting-single_quotes.ps1 run successfuly.
√ testfiles\types\strings_and_formatting-double_quotes.ps1 run successfuly.
√ testfiles\types\numeric_literals.ps1 run successfuly.
√ testfiles\types\hashtables.ps1 run successfuly.
√ testfiles\types\arrays.ps1 run successfuly.
√ testfiles\operators\redirection.ps1 run successfuly.
√ testfiles\operators\format.ps1 run successfuly.
√ testfiles\operators\comparison.ps1 run successfuly.
√ testfiles\functions\user-defined.ps1 run successfuly.
√ testfiles\functions\splatting.ps1 run successfuly.
√ testfiles\functions\other.ps1 run successfuly.
√ testfiles\functions\filters.ps1 run successfuly.
√ testfiles\functions\cmdlets.ps1 run successfuly.
√ testfiles\functions\built-ins_and_aliases.ps1 run successfuly.
√ testfiles\flow_control\try_catch_finally.ps1 run successfuly.
√ testfiles\flow_control\switch.ps1 run successfuly.
√ testfiles\flow_control\for_loops.ps1 run successfuly.
```

### Just Run the Tests Without Building
`npm run test:grammar`

### Run a Specific Test File
After building the grammar, you can run a specific test file like so:
```PowerShell
npx textmate-grammar-test "testfiles/variables/automatic_constants.ps1"
```

# Part 1 - Pulsar as Drop-In Atom Replacement
In a separate branch I explored using the [Pulsar editor](https://pulsar-edit.dev/) as a modern replacement for Atom as the test runner. Read about that [here](https://github.com/BryanCuneo/EditorSyntax/blob/atom_replacements/ATOM_REPLACEMENT-PT1.md).
