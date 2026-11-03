# SYNTAX TEST v1 "source.powershell" "Other commands"
# https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/running-commands?view=powershell-7.6

. .\scripts\myscript.ps1 -parameter 'value'
#<- keyword.operator.other.powershell
#                                   ^ punctuation.definition.string.begin.powershell
#                                   ^^^^^^^ string.quoted.single.powershell
#                                         ^ punctuation.definition.string.end.powershell

& tool.exe
#<- keyword.operator.other.powershell
# ^^^^^^^^ support.function.powershell

something.cmd
#<------------- support.function.powershell

<#
    microsoft.com/powershell # this should also highlight - TODO 
#>
