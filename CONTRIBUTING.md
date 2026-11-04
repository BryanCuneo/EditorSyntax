# Contributing

Your help is greatly appreciated! This project, like all other open-source projects, thrives through an active community; However, with great power comes great responsibility. So, we have devised a few ground rules that should be followed when contributing.

## Get started

There are a number of ways you can get your feet wet and help us out.

* [Issues](#Issues): The easiest way to contribute is to identify that something is broken or that a feature is missing and create an issue from it. Even better would be fixing an open issue that has no assignee yet. You can of course do both - find something that is missing and fix it yourself!
* [Reviews](#Reviews): With more contributions coming in we will likely see more pull requests. Reviewing them is not always the most fun, but it is very necessary and would help a lot.

### Open an issue

Opening issues is very easy. Head to our [Issues tab](https://github.com/PowerShell/EditorSyntax/issues) and open one if it does not exist already by clicking [New issue](https://github.com/PowerShell/EditorSyntax/issues/new) and filling out the provided template. Make sure to check the open issues first so you don't duplicate an existing issue!

If an issue already exists that is in some way related to the one you are opening, e.g. is the basis for something your are requesting, please link to it. See: [Autolinked references and URLs](https://help.github.com/articles/autolinked-references-and-urls/)

When open your issue be as detailed as possible. The more detail and context you provide in your issue the easier it will be for someone to reproduce and fix.

### Fix an issue

Ready to go deeper and fix an existing issue?

1. Leave a comment to tell us that you are working on it so work isn't duplicated by multiple contributors.
1. [Fork](https://help.github.com/articles/fork-a-repo/) our repository, and base your changes off of the **master** branch by creating a new branch from **master** which will contain your changes. You can name the branch whatever you like but when working on multiple issues descriptive names are best (e.g. "variable-scopes").
1. [Fix the issue](https://knowyourmeme.com/memes/how-to-draw-an-owl) in your fork.
1. Include a [test spec](spec/testfiles) to prevent regressions in the future.
1. Make sure you have [pushed your commits](https://help.github.com/articles/pushing-to-a-remote/) to your new branch up to Github and then [create a pull request](https://help.github.com/articles/creating-a-pull-request/) to the EditorSyntax **master** branch.
1. If prompted to sign the CLA, please follow the steps provided.

See the [Contributing Guide](#contributing-guide) for a detailed step-by-step guide.

#### Helpful tools/links

* [TextMate Language Grammars Documentation](https://macromates.com/manual/en/language_grammars)
* [Regular Expressions 101](https://regex101.com/) - Online regex tester, debugger with highlighting for PHP, PCRE, Python, Golang and JavaScript.
* [RegExr](https://regexr.com/) - Regular expression tester with syntax highlighting, PHP / PCRE & JS Support, contextual help, cheat sheet, reference, and searchable community patterns.
* [Understanding XML Property Lists](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/PropertyLists/UnderstandXMLPlist/UnderstandXMLPlist.html#//apple_ref/doc/uid/10000048i-CH6-SW1)

## Reviews

We are using GitHub's [internal capabilities](https://github.com/features/code-review/) for our code reviews. Either we, the EditorSyntax team, or you, the community, can review the changes and add comments. The author of the pull request can then go through all of the issues, fix them and add new commits to their branch, which will show up in the pull request. When all issues are fixed and there is nothing else to do, we will gladly merge the pull request.

* Changes to the grammar file or continuous integration process should have the approval of two people before being merged.

# Contributing Guide

Below is a step by step guide for making changes to the grammar file.

## On scopes

Before working on the grammar file it is important to understand how scopes work at a basic level and how to select an appropriate scope for any additions or modifications. Scopes are names assigned to elements in code by the grammar definition starting with the most generic type first and becoming more specific the further right you go before ending with the language (`.powershell`.) The scope selector on which themes are built reads the scopes right-to-left allowing themes to be as specific or as generic as they wish.

Take for example comments which could be a line style comment, a block comment, or documentation. Each one would be scoped starting with `comment` allowing the themes to easily assign a colour to all three with a single rule; However, in the grammar we would be more specific so that if they wish themes could delineate them:

* `comment.line.powershell`
* `comment.block.powershell`
* `comment.documentation.powershell`

By doing it this way themes can target all three together (`comment`,) one individually (`comment.line`,) and even restrict their colour choice to just PowerShell (`comment.line.powershell`.)

See: [Introduction to scopes](https://macromates.com/blog/2005/introduction-to-scopes/) for more details.

### Scope selection

When selecting scopes try as much as possible to stick to the [Scope Naming guide](https://www.sublimetext.com/docs/3/scope_naming.html) from [Sublime Text](https://www.sublimetext.com/). It is important to balance these factors:

* **Accuracy**: The grammar should strive to be as accurate as possible not only at an obvious level (comments not scoped as variables) but also at a finer level (constants not scoped as read-write variables.)
* **Consistency**: Themes should not need to make a special case for PowerShell as themes should be mostly language agnostic so the grammar should strive to define PowerShell in the same way that similar languages are defined. When a user goes back and forth between languages their highlighting experience should be the same. For example, `$Variable.Member` in PowerShell should colour like `$Variable->Member` in PHP.
* **Expectation**: While it is not the job of the grammar to define where colour goes (only where it can go) sweeping changes that have a noticeable impact across a large number of themes should be approached carefully and may result in extended review and discussion.

There are multiple discussions you can join on the selection of scopes open in our [Issues](https://github.com/PowerShell/EditorSyntax/issues) the most recent being [How we decide on which scopes to use.](https://github.com/PowerShell/EditorSyntax/issues/138)

## Fork the repository and create a branch

Once you're ready to contribute changes to the project you will want to create your own copy to work from.

1. Open the [EditorSyntax](https://github.com/PowerShell/EditorSyntax/) project in a browser.
1. Locate the **Fork** button just below your GitHub avatar in the top-right corner and give it a click. On your own GitHub profile you will now have a YOUR-USER-NAME/EditorSyntax repository to work from.
1. Clone your fork to your computer using the Git command line: `git clone https://github.com/YOUR-USER-NAME/EditorSyntax.git`
1. Navigate into your clone: `cd EditorSyntax`
1. Create a [branch](https://www.atlassian.com/git/tutorials/using-branches) in which to make your changes: `git checkout -b my-branch-name` (`checkout -b` creates a new branch and opens it in a single step.)

## Edit the grammar file

Once you're on your new branch (`git branch` to be sure) the actual magic happens in the file called `PowerShellSyntax.tmLanguage` which is an XML-plist file. You can either open it directly in your favourite editor or in editors that support it you can open the whole directory as you will likely need to [update the test specs](#Test-locally) later.

The grammar file uses [regular expressions](https://en.wikipedia.org/wiki/Regular_expression) to define the characteristics of the language so tools like [Regular Expressions 101](https://regex101.com/) can be especially useful for testing patterns.

A very basic rule has two elements, a pattern and a scope name, and will assign the scope name to anything that matches the regular expression. Example:

```XML
<dict>
    <key>match</key>
    <string>(?&lt;!\w|-|[^\)]\.)((?i:(foreach|where)(?!-object))|%|\?)(?!\w)</string>
    <key>name</key>
    <string>keyword.control.powershell</string>
</dict>
```

This rule applies the scope `keyword.control.powershell` to anything that matches the capture group inside the pattern. **Note** the use of `&lt;` instead of `<` at the beginning of the rule. Due to XML format it is important that XML characters like `<` and `>` be translated to their [entity format](https://dev.w3.org/html5/html-author/charref) (does not apply to quotation marks.)

There are a number of guides on how to write a grammar file such as https://macromates.com/manual/en/language_grammars, and https://www.apeth.com/nonblog/stories/textmatebundle.html but you may find it easier to read and try to understand the file itself.

## Test locally

In order to test your changes you will need a JSON version of the grammar file.

1. From the command line run `.\build.ps1` without parameters to generate the JSON from the .tmLanguage file in `.\grammars\powershell.tmLanguage.json`.

You will then need to replace the JSON file your editor is using and reload it. For example, if you're using [Visual Studio Code](https://code.visualstudio.com/):

1. Locate your VS Code installation directory and find `.\resources\app\extensions\powershell\syntaxes`. For the system installer version on Windows the path should be `C:\Program Files\Microsoft VS Code\resources\app\extensions\powershell\syntaxes`.
1. Rename `powershell.tmLanguage.json` in the directory to `powershell.tmLanguage.json_official` or similar.
1. Copy the JSON file you generated from `.\grammars` in the EditorSyntax folder to the `.\syntaxes` folder above.
1. Reload VS Code using the `Reload Windows` command from the command palette.

Once you've loaded your modified version in your editor you will want to make sure you've fixed what you set out to fix and that highlighting still appears to be working in general. In VS Code there is a command in the command palette called `Developer: Inspect TM Scopes` which is useful for making sure scopes have been applied the way you expect.

## Run the automated tests

In order to prevent against regression we've included a number of unit test specifications in [testfiles/](testfiles/) that specify what scopes are expected and are compared against those actually assigned by the grammar file. Before submitting a pull request you should always run the tests as they will be run against your PR and failures will block merging. The tests require you to have NodeJS and the project dependencies installed via `npm install`.

Build and test:
```Shell
PS> npm run full
```

Just test:
```Shell
PS> npm run test
```

Please see [Install Dependencies, Build, and Test](README.md#install-dependencies--build--and-test) for more details.

You should get an output that looks something like this:

```
PS ~\source\bryancuneo\EditorSyntax> npm run full
npm notice run full
npm notice run npm run build && npm run test
npm notice run build
npm notice run node ./tools/build-grammar.js ./PowerShellSyntax.tmLanguage ./grammars/powershell.tmLanguage.json
[Starting] Converting ./PowerShellSyntax.tmLanguage to json.
... Reading source file.
... Parsing content.
... Building contents.
[Finished] File written to: ./grammars/powershell.tmLanguage.json
npm notice run test
npm notice run textmate-grammar-test "testfiles/**/*.ps1"
√ testfiles\using_and_requires.ps1 run successfuly.
√ testfiles\reserved_words.ps1 run successfuly.
√ testfiles\misc.ps1 run successfuly.
√ testfiles\variables\names_and_scopes.ps1 run successfuly.
√ testfiles\variables\automatic_variables.ps1 run successfuly.
√ testfiles\variables\automatic_constants.ps1 run successfuly.
√ testfiles\types\type_accelerators.ps1 run successfuly.
√ testfiles\types\strings_and_formatting-single_quotes.ps1 run successfuly.
√ testfiles\types\strings_and_formatting-double_quotes.ps1 run successfuly.
√ testfiles\types\numeric_literals.ps1 run successfuly.
√ testfiles\types\hashtables.ps1 run successfuly.
√ testfiles\types\classes.ps1 run successfuly.
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

If you get any errors that were unexpected make sure to fix them and run the tests again. If your change caused a test to break on purpose or if you need to create tests for something entirely new, continue to the next section.

## Create tests and/or modify existing tests

`testfiles\**\*.ps1` unit tests are provided in the [TextMate Grammar Test syntax](https://github.com/serkonda7/textmate-grammar-test#-unit-testing-syntax). This example unit test from [strings_and_formatting-double-quotes.ps1](testfiles/types/strings_and_formatting-double_quotes.ps1):

```PowerShell
"This is a double-quoted string"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                              ^ punctuation.definition.string.end.powershell
```

is saying the very first character should have the scopes `string.quoted.double.powershell` and `punctuation.definition.string.begin.powershell`, that the text `string.quoted.double.powershell`, and the final character should have the scope `punctuation.definition.string.end.powershell`. As you can see the carats point at the elements on the actual code line and are trailed by the expected scopes.

Keep in mind that it is not necessary to point to the whole string unless there's an expectation that something it contains might break it. This version:

```PowerShell
"This is a double-quoted string"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^ string.quoted.double.powershell
#                              ^ punctuation.definition.string.end.powershell
```

is just as valid.

**Note:** your can also use `! scope.name` to make sure something doesn't inherit a scope.

Please review the [syntax documentation](https://github.com/serkonda7/textmate-grammar-test#-unit-testing-syntax) and existing test files for more information.

Once you've made your changes to the grammar file you will want to modify any specs that broke as a result (as long as it was expected) and add new specs for your changes. Be sure to account for things that should happen and things that shouldn't. Ie, if your change should only scope something when it is inside a string you should have a spec that makes sure that happens and a spec that makes sure it doesn't match outside of a string.

## Submit your changes

When you're ready and all the tests are passing it's time to submit a pull request!

1. Commit your changes to your branch if you haven't already: `git commit -am  "<commit message>"`
1. Push your changes to GitHub: `git push --set-upstream origin <branch name>`
1. Open the official [EditorSyntax](https://github.com/PowerShell/EditorSyntax) page in a browser.
1. You should see a link for opening a pull request based on your recent push. If not use the [New Pull Request](https://github.com/PowerShell/EditorSyntax/compare?expand=1) button to create one from scratch.
1. Fill out the title and details and [link to any issues](https://help.github.com/articles/autolinked-references-and-urls/) your PR fixes using wording like "fixes #100".
1. Submit the pull request and complete the CLA if prompted.

## Updating software that uses the grammar

The PowerShell grammar file is used by multiple editors and tools and in order to see all of the shiny changes being made they need to be updated periodically.

### GitHub Linguist

* Project link: https://github.com/github/linguist

**Steps**

*Linguist is updated automatically every time they release.*

### Visual Studio Code

* Project link: https://github.com/Microsoft/vscode/

**Steps**

-Coming Soon-

### Atom

* Project link: https://github.com/atom/atom

**Steps**

-Coming Soon-
