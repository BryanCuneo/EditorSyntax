<#
    .Synopsis
        Convert the grammar file to json and/or run tests.

    .DESCRIPTION
        Build: Converts the .tmLanguage file to .json for use in VSCode or Atom.

        Test: Uses Atom and atom-grammar-test to run tests against specs and sample files to guard against regression.

    .EXAMPLE
        PS C:\EditorSyntax> .\build.ps1
        [Starting] Converting ../PowerShellSyntax.tmLanguage to json.
        ... Reading source file.
        ... Parsing content.
        ... Building contents.
        ... Creating directory: ./grammars
        [Finished] File written to: ../grammars/powershell.tmLanguage.json

    .EXAMPLE
        PS C:\EditorSyntax> .\build.ps1 Test
        Running specs...

        .....

        Finished in 0.281 seconds
        2 tests, 5 assertions, 0 failures, 0 skipped
#>
[CmdletBinding(DefaultParameterSetName = "Build")]
param(
    [Parameter(Mandatory, ParameterSetName = "Test")]
    [switch]
    $Test,

    [Parameter(ParameterSetName = "Test")]
    [ValidateSet("Atom", "AtomNg", "Pulsar")]
    [string]
    $Tokenizer = "Atom",

    [Parameter(ParameterSetName = "Test")]
    [switch]
    $NoBuild,

    [switch]
    $Silent
)

# Load Helpers
. .\tools\build-helpers.ps1
. .\tools\banners.ps1

function Invoke-Build {
    if (-not (npm -v)) {
        throw 'Requires Node.js - Could not find npm.'
    }
    npm install

    Write-BuildBanner
    try {
        Write-Host "Building grammar file(s)..."
        npm run build-grammar
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($PSItem)
    }
}

function Invoke-Tests {
    param(
        [Parameter(Mandatory)]
        [ValidateSet("Atom", "AtomNg", "Pulsar")]
        [string]
        $Tokenizer
    )

    switch ($Tokenizer) {
        "Atom" {
            $script:TOKENIZER_EXE_PATH = (Get-Command atom).Path
            if (-not $script:TOKENIZER_EXE_PATH) {
                throw "Atom not found. Install it from https://atom.io/"
            }
        }
        "AtomNg" {
            $script:TOKENIZER_EXE_PATH = (Get-Command atom-ng).Path
            if (-not $script:TOKENIZER_EXE_PATH) {
                throw "Atom not found. Install it from https://github.com/Alex313031/atom-ng"
            }
        }
        "Pulsar" {
            $script:TOKENIZER_EXE_PATH = (Get-Command pulsar).Path
            if (-not $script:TOKENIZER_EXE_PATH) {
                throw "Atom not found. Install it from https://pulsar-edit.dev/"
            }
        }
    }

    Write-TestBanner
    Invoke-Specs
}

function Main {
    Write-SyntaxBanner

    if (-not $NoBuild) {
        Invoke-Build
    }

    if ($Test) {
        Invoke-Tests -Tokenizer $Tokenizer
    }

    Write-EndBanner
}

if ($Silent) {
    Main 6>$null | Out-Null
}
else {
    Main
}
