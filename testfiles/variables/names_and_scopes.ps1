# SYNTAX TEST v1 "source.powershell" "User-defined variables and their scope modifiers"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_scopes?view=powershell-7.6

$variable
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^ variable.other.readwrite.powershell

${variable}
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
# ^^^^^^^^ variable.other.readwrite.powershell
#^ punctuation.section.braces.begin.powershell
#         ^ punctuation.section.braces.end.powershell

$variable.member
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#        ^^^^^^^ variable.other.member.powershell

${variable}.member
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#         ^ punctuation.section.braces.end.powershell
#          ^^^^^^^ variable.other.member.powershell

$Script:variable
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^ storage.modifier.scope.powershell
#      ^^^^^^^^^ variable.other.readwrite.powershell

${Script:variable}
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ punctuation.section.braces.begin.powershell
# ^^^^^^ storage.modifier.scope.powershell
#        ^^^^^^^^^ variable.other.readwrite.powershell
#                ^ punctuation.section.braces.end.powershell

$Env:COMPUTERNAME
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ support.variable.drive.powershell
#   ^^^^^^^^^^^^^ variable.other.readwrite.powershell

<#
 # Variables with special characters
 https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables#variable-names-that-include-special-characters

 # Scope modifiers
 $Global:variable
 $Local:variable
 $Private:variable
 $Using:variable
 $Workflow:variable

 $Alias:variable
 $Env:variable
 $Function:variable
 $Variable:variable
#>
