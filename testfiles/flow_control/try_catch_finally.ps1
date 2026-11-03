# SYNTAX TEST v1 "source.powershell" "try, catch, and finally blocks"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_try_catch_finally

try {
#<--- keyword.control.powershell
#   ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    throw "Uh oh..."
#   ^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^ keyword.control.powershell
#         ^ punctuation.definition.string.begin.powershell
#         ^^^^^^^^^^ string.quoted.double.powershell
#                  ^ punctuation.definition.string.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

catch {
#<----- keyword.control.powershell
#     ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Invoke-FixIt
#   ^^^^^^^^^^^^ meta.scriptblock.powershell support.function.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

finally {
#<------- keyword.control.powershell
#       ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Write-Host "We made it!"
#   ^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^^^^^^ support.function.powershell
#              ^ punctuation.definition.string.begin.powershell
#              ^^^^^^^^^^^^^ string.quoted.double.powershell
#                          ^ punctuation.definition.string.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell
