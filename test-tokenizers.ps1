param(
    [ValidateSet("Atom", "AtomNg", "Pulsar1", "Pulsar2", "All")]
    [string[]]$Tokenizers = "All",

    [int]$HowMany = 10
)

$ALL = @("Atom", "AtomNg", "PulsarLegacy", "Pulsar2", "VsCode", "TextMateGrammarTest", "TextMateSharp")

# Temporarily add the appropriate atomTestRunner setting to package.json for
# Pulsar. This breaks Atom if it's in the package.json by default, but it's
# required for Pulsar's jasmine2-test-runner
function Invoke-Pulsar {
    param(
        [string]$Tokenizer
    )
    Write-Host "`nHello`n"

    if ($Tokenizer -like "Pulsar1") {
        $runner = "jasmine1-test-runner"
    }
    else {
        $runner = "jasmine2-test-runner"
    }

    $package_json = Get-Content -Path "./package.json" | ConvertFrom-Json
    $atom_test_runner = @{
        Name       = "atomTestRunner"
        Value      = "runners/$runner"
        MemberType = "NoteProperty"
    }
    $package_json | Add-Member @atom_test_runner
    $package_json | ConvertTo-JSON | Set-Content -Path "./package.json"

    Measure-Command -Expression { 1..$HowMany | ForEach-Object {
        .\build.ps1 -Test -Tokenizer "Pulsar" -NoBuild
    } }

    $package_json.PSObject.Properties.Remove('atomTestRunner')
    $package_json | ConvertTo-JSON | Set-Content -Path "./package.json"
}

foreach ($t in $ALL) {
    if ($Tokenizers -like "All" -or $Tokenizers.Contains($t)) {
        Write-Host "Running $t $HowMany time(s)..."

        if ($t -like "Pulsar*") {
            Invoke-Pulsar -Tokenizer $t
        }
        else {
            Measure-Command -Expression { 1..$HowMany | ForEach-Object {
                .\build.ps1 -Test -Tokenizer $t -NoBuild -Silent
            } }
        }
    }
}
