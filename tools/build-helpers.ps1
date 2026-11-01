function DownloadAtom {
    Write-Host "Downloading latest Atom release..."

    $Source = "https://atom.io/download/windows_zip?channel=stable"
    $Destination = Join-Path . '\atom.zip'

    try {
        Invoke-WebRequest $Source -OutFile $Destination -ErrorAction Stop
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($PSItem)
    }

    Write-Host "Atom download finished..."

    ExtractAtom
}

function ExtractAtom {
    Write-Host "Extracting Atom.zip"

    $ZipFile = Join-Path (Split-Path $PSScriptRoot -Parent) '\atom.zip'
    $OutPath = Resolve-Path .

    try {
        Add-Type -AssemblyName System.IO.Compression.FileSystem
        [System.IO.Compression.ZipFile]::ExtractToDirectory($ZipFile, $OutPath)
    }
    catch {
        $PSCmdlet.ThrowTerminatingError($PSItem)
    }

    Write-Host "Atom extracted..."

    Remove-Item $ZipFile -Force

    Write-Host "Atom.zip deleted..."
}

filter ParseJasmine {
    $line = "$_"

    switch -regex ($line) {
        # # When running the old Electron apps on Linux, they output several
        # # warnings/errors and turn results text red. This regex acts as a
        # # workaround to suppress those and keep the results clear
        # '^(Fontconfig|.*\bWarning: Accessing non-existent property\b|^\(Use `exe --trace-warnings)|^bash:|^\(node:' {
        #     break
        # }

        '^\s+at' {
            break
        }

        '^\s+it' {
            $line -replace '^(\s+)(it)', '$1[-] It'
            break
        }

        '^\s+Expected' {
            $line -replace '^(\s*)(Expected.*?)\s(instead found .*)', "`$1`$2`n`$1`$3"
            break
        }

        default {
            $line
        }
    }
}


function ExitWithCode {
    param (
        $ExitCode
    )

    $Host.SetShouldExit($exitcode)
    exit
}

function RunSpecs {
    Write-Host "Running specs..."

    $specpath = Join-Path -Path "." -ChildPath "spec", "powershell-spec.coffee"

    if (Test-Path $specpath) {
        # & $script:TOKENIZER_EXE_PATH --test $specpath *>&1 | ParseJasmine
        & $script:TOKENIZER_EXE_PATH --test $specpath *>&1
    }
    else {
        throw '.\spec\ not found.'
    }

    if ($LASTEXITCODE -ne 0) {
        if ($Env:APPVEYOR) {
            ExitWithCode -exitcode $LASTEXITCODE
        }
        else {
            throw "One or more tests failed."
        }
    }
}
