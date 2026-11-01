param(
    [ValidateSet("Atom", "AtomNg", "Pulsar", "All")]
    [string[]]$Tokenizers = "All",

    [int]$HowMany = 10
)

$ALL = @("Atom", "AtomNg", "Pulsar")

# Temporarily add the appropriate atomTestRunner setting to package.json for
# Pulsar. This breaks Atom if it's in the package.json by default, but it's
# required for Pulsar's jasmine2-test-runner
function Invoke-Pulsar {
    $package_json = Get-Content -Path "./package.json" | ConvertFrom-Json
    $atom_test_runner = @{
        Name        = "atomTestRunner"
        Value       = "runners/jasmine1-test-runner"
        MemberType  = "NoteProperty"
        ErrorAction = "Silent"
    }
    $package_json | Add-Member @atom_test_runner
    $package_json | ConvertTo-JSON | Set-Content -Path "./package.json"

    try {
        $results = Measure-Command -Expression { 1..$HowMany | ForEach-Object {
            .\build.ps1 -Test -Tokenizer "Pulsar" -NoBuild -Silent
        } }
    }
    finally {
        $package_json.PSObject.Properties.Remove('atomTestRunner')
        $package_json | ConvertTo-JSON | Set-Content -Path "./package.json"
    }

    return $results
}

$results = @()

foreach ($t in $ALL) {
    if ($Tokenizers -like "All" -or $Tokenizers.Contains($t)) {
        Write-Host "Running $t $HowMany time(s)..."

        $time = Invoke-Pulsar
        if ($t -like "Pulsar*") {
            $results += [PSCustomObject]@{
                Tokenizer = $t
                RunCount = $HowMany
                TotalTime = ("{0}:{1:F2}" -f [int]$time.TotalMinutes, $time.Seconds)
                AverageSeconds = ($time.TotalSeconds / $HowMany)
            }
        }
        else {
            $time = Measure-Command -Expression {
                1..$HowMany | ForEach-Object {
                    .\build.ps1 -Test -Tokenizer $t -NoBuild -Silent
            } }
            $results += [PSCustomObject]@{
                Tokenizer = $t
                RunCount = $HowMany
                TotalTime = ("{0}:{1:F2}" -f [int]$time.TotalMinutes, $time.Seconds)
                AverageSeconds = ("{0:F2}" -f ($time.TotalSeconds / $HowMany))
            }
        }
    }
}

$results | Format-Table -AutoSize
