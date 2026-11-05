# SYNTAX TEST v1 "source.powershell" "Single-quoted strings"
# Try to properly identify functions that don't use the Noun-Verb convention
# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/09-functions#naming

MyFunction

$data | MyFunction

MyFunction -Data $data

MyFunction $data

Write-Host (MyFunction | Select-Object Name)

$obj | ForEach-Object { MyFunction -Data $_ }

$obj | ForEach-Object { MyFunction $_ }

$obj | ForEach-Object { $_ | MyFunction }

Write-Host "Hello" ; MyFunction "World!"

& { MyFunction }

$scriptBlock = { MyFunction }

function Wrapper { MyFunction ; MyOtherFunction | Write-Host ; MyThirdFunc }
