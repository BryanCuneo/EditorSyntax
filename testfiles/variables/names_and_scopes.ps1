# SYNTAX TEST v1 "source.powershell" "User-defined variables and their scope modifiers"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_scopes

$variable
#^^^^^^^^ variable.other.readwrite.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

${variable}
# ^^^^^^^^ variable.other.readwrite.powershell
#^ punctuation.section.braces.begin.powershell
#         ^ punctuation.section.braces.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

$Script:variable
#^^^^^^ storage.modifier.scope.powershell
#      ^^^^^^^^^ variable.other.readwrite.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

${Script:variable}
# ^^^^^^ storage.modifier.scope.powershell
#        ^^^^^^^^^ variable.other.readwrite.powershell
#^ punctuation.section.braces.begin.powershell
#                ^ punctuation.section.braces.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

$Env:COMPUTERNAME
#^^^ support.variable.drive.powershell
#   ^^^^^^^^^^^^^ variable.other.readwrite.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

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
