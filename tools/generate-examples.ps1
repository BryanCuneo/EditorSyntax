filter Remove-TextMateTests {
    if ($_ -notmatch '^#((\s*\<-+\s|\s*\^+)\s*.*\..*)|\sSYNTAX\sTEST') {
        $_
    }
}

$tests_root = (Resolve-Path '.\testfiles').Path

foreach ($test_file in (
    Get-ChildItem -Path $tests_root -Filter '*.ps1' -Recurse -File
)) {
    Write-Host "$([System.IO.Path]::GetRelativePath($PWD, $test_file.FullName))" -NoNewline

    # Do all this relative path stuff so that the tests directly in "tesfiles\"
    # get written directly in "examples\" instead of "examples\testfiles\"
    $relative_path = [System.IO.Path]::GetRelativePath(
        $tests_root,
        $test_file.FullName
    )
    $relative_directory = [System.IO.Path]::GetDirectoryName($relative_path)

    $destination_folder = '.\examples'
    if ($relative_directory) {
        $destination_folder = Join-Path '.\examples' $relative_directory
    }

    if (-not (Test-Path -Path $destination_folder)) {
        New-Item -Path $destination_folder -ItemType Directory | Out-Null
    }

    $destination_file = Join-Path `
        -Path $destination_folder `
        -ChildPath $test_file.Name

    Get-Content -Path $test_file |
        Remove-TextMateTests |
        Set-Content -Path $destination_file

    Write-Host ' -> ' -ForegroundColor Green -NoNewline
    Write-Host "$([System.IO.Path]::GetRelativePath($PWD, (Resolve-Path $destination_file).Path))"
}
