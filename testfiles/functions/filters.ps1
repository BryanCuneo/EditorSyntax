# SYNTAX TEST v1 "source.powershell" "User-defined filter functions"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions#filter-syntax

filter myfilter($param) {}
#<------ storage.type.powershell
#      ^^^^^^^^ entity.name.function.powershell
#              ^ punctuation.section.group.begin.powershell
#               ^ punctuation.definition.variable.powershell
#               ^^^^^^ variable.other.readwrite.powershell
#                     ^ punctuation.section.group.end.powershell
#                       ^ punctuation.section.braces.begin.powershell
#                        ^ punctuation.section.braces.end.powershell
Filter my-Filter ($param){}
#<------ storage.type.powershell
#      ^^^^^^^^^ entity.name.function.powershell
#                ^ punctuation.section.group.begin.powershell
#                 ^ punctuation.definition.variable.powershell
#                 ^^^^^^ variable.other.readwrite.powershell
#                       ^ punctuation.section.group.end.powershell
#                        ^ punctuation.section.braces.begin.powershell
#                         ^ punctuation.section.braces.end.powershell
