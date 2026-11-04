# Examples

This folder stores example PowerShell code to view syntax highlighting. Several examples can be found in [test.ps1](examples.ps1) but you can also generate samples from all the code from [testfiles](../testfiles/) by with `npm run examples`:

```
npm run examples

> examples
> pwsh -NoLogo -NoProfile -File ./tools/generate-examples.ps1

testfiles\misc.ps1 -> examples\misc.ps1
testfiles\reserved_words.ps1 -> examples\reserved_words.ps1
testfiles\using_and_requires.ps1 -> examples\using_and_requires.ps1
testfiles\flow_control\for_loops.ps1 -> examples\flow_control\for_loops.ps1
testfiles\flow_control\switch.ps1 -> examples\flow_control\switch.ps1
testfiles\flow_control\try_catch_finally.ps1 -> examples\flow_control\try_catch_finally.ps1
testfiles\functions\built-ins_and_aliases.ps1 -> examples\functions\built-ins_and_aliases.ps1
testfiles\functions\cmdlets.ps1 -> examples\functions\cmdlets.ps1
testfiles\functions\filters.ps1 -> examples\functions\filters.ps1
testfiles\functions\other.ps1 -> examples\functions\other.ps1
testfiles\functions\splatting.ps1 -> examples\functions\splatting.ps1
testfiles\functions\user-defined.ps1 -> examples\functions\user-defined.ps1
testfiles\operators\comparison.ps1 -> examples\operators\comparison.ps1
testfiles\operators\format.ps1 -> examples\operators\format.ps1
testfiles\operators\redirection.ps1 -> examples\operators\redirection.ps1
testfiles\types\arrays.ps1 -> examples\types\arrays.ps1
testfiles\types\classes.ps1 -> examples\types\classes.ps1
testfiles\types\hashtables.ps1 -> examples\types\hashtables.ps1
testfiles\types\numeric_literals.ps1 -> examples\types\numeric_literals.ps1
testfiles\types\strings_and_formatting-double_quotes.ps1 -> examples\types\strings_and_formatting-double_quotes.ps1
testfiles\types\strings_and_formatting-single_quotes.ps1 -> examples\types\strings_and_formatting-single_quotes.ps1
testfiles\types\type_accelerators.ps1 -> examples\types\type_accelerators.ps1
testfiles\variables\automatic_constants.ps1 -> examples\variables\automatic_constants.ps1
testfiles\variables\automatic_variables.ps1 -> examples\variables\automatic_variables.ps1
testfiles\variables\names_and_scopes.ps1 -> examples\variables\names_and_scopes.ps1
```
