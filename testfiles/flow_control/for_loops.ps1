# SYNTAX TEST v1 "source.powershell" "For loops"
# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/06-flow-control
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_for
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_foreach
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object

foreach ($item in $collection) {
#<------- keyword.control.powershell
#       ^ punctuation.section.group.begin.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#        ^        ^ punctuation.definition.variable.powershell
#        ^^^^^    ^^^^^^^^^^^ variable.other.readwrite.powershell
#              ^^ keyword.control.powershell
#                            ^ punctuation.section.group.end.powershell
#                              ^ punctuation.section.braces.begin.powershell
}
#<- punctuation.section.braces.end.powershell

<#
for
ForEach-Object
#>
