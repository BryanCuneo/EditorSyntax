param(
    [int]$HowMany = 10
)

foreach ($tokenizer in @("Atom", "Pulsar")) {
    Write-Host "Timing $tokenizer..."
    Measure-Command -Expression { 1..$HowMany | ForEach-Object {
            .\build.ps1 -Test -Tokenizer $tokenizer -NoBuild -Silent
        } }
}
