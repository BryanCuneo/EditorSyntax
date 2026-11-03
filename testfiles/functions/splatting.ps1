# SYNTAX TEST v1 "source.powershell" "Splatting"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_splatting

Invoke-Something @properties
#<---------------- support.function.powershell
#                ^ punctuation.definition.variable.powershell
#                ^^^^^^^^^^^ variable.other.readwrite.powershell

{Invoke-Something @properties}
#<- meta.scriptblock.powershell punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#^^^^^^^^^^^^^^^^ support.function.powershell
#                 ^ punctuation.definition.variable.powershell
#                 ^^^^^^^^^^^ variable.other.readwrite.powershell
#                            ^ punctuation.section.braces.end.powershell

{
#<- meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Invoke-Something @properties
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^^^^^^^^^^^^ support.function.powershell
#                    ^ punctuation.definition.variable.powershell
#                     ^^^^^^^^^^ variable.other.readwrite.powershell
}
# <- meta.scriptblock.powershell punctuation.section.braces.end.powershell

$sb = {
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#   ^ keyword.operator.assignment.powershell
#     ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Invoke-Something @properties
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^^^^^^^^^^^^ support.function.powershell
#                    ^ punctuation.definition.variable.powershell
#                     ^^^^^^^^^^ variable.other.readwrite.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell
