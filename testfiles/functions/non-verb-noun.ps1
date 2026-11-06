# SYNTAX TEST v1 "source.powershell" "Functions not following the Verb-Noun convention"
# Try to properly identify functions that don't use the Verb-Noun convention
# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/09-functions#naming

MyFunction

MyFunction -Data $data
#                ^ punctuation.definition.variable.powershell
#                ^^^^^ variable.other.readwrite.powershell

MyFunction $data
#          ^ punctuation.definition.variable.powershell
#          ^^^^^ variable.other.readwrite.powershell

$data = MyFunction | MyOtherFunction ; MyThirdFunction
#<- punctuation.definition.variable.powershell
#^^^^ variable.other.readwrite.powershell
#     ^ keyword.operator.assignment.powershell
#                  ^ keyword.operator.other.powershell
#                    ^^^^^^^^^^^^^^^   ^^^^^^^^^^^^^^^ support.function.badname.powershell
#                                    ^ punctuation.terminator.statement.powershell

Write-Host (MyFunction | Select-Object Name)
#<--------- support.function.powershell ! support.function.badname.powershell
#          ^ punctuation.section.group.begin.powershell
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#           ^^^^^^^^^^ support.function.badname.powershell
#                      ^ keyword.operator.other.powershell
#                        ^^^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                                          ^ punctuation.section.group.end.powershell

(notepad.exe $path)
#<- punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#            ^ punctuation.definition.variable.powershell
#            ^^^^^ variable.other.readwrite.powershell
#                 ^ punctuation.section.group.end.powershell

(& git clone $repoName)
#<- punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#  ^^^ support.function.powershell ! support.function.badname.powershell
#            ^ punctuation.definition.variable.powershell
#            ^^^^^^^^^ variable.other.readwrite.powershell
#                     ^ punctuation.section.group.end.powershell

$data | MyFunction
#<- punctuation.definition.variable.powershell
#^^^^ variable.other.readwrite.powershell
#     ^ keyword.operator.other.powershell
#       ^^^^^^^^^^ support.function.badname.powershell

$obj | ForEach-Object { MyFunction $_ }
#<- punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.other.powershell
#      ^^^^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                     ^ punctuation.section.braces.begin.powershell
#                     ^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                       ^^^^^^^^^^ support.function.badname.powershell
#                                  ^ punctuation.definition.variable.powershell
#                                  ^^ support.variable.automatic.powershell
#                                     ^ punctuation.section.braces.end.powershell

$obj | ForEach-Object { $_ | MyFunction }
#<- punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^                     ^ keyword.operator.other.powershell
#      ^^^^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                     ^ punctuation.section.braces.begin.powershell
#                     ^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                       ^ punctuation.definition.variable.powershell
#                       ^^ support.variable.automatic.powershell
#                            ^^^^^^^^^^ support.function.badname.powershell
#                                       ^ punctuation.section.braces.end.powershell

$obj | ForEach-Object { MyFunction -Data $_ | MyOtherFunction ; MyThirdFunction }
#<- punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^                                      ^ keyword.operator.other.powershell
#      ^^^^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                     ^ punctuation.section.braces.begin.powershell
#                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                       ^^^^^^^^^^            ^^^^^^^^^^^^^^^   ^^^^^^^^^^^^^^^ support.function.badname.powershell
#                                        ^ punctuation.definition.variable.powershell
#                                        ^^ support.variable.automatic.powershell
#                                                             ^ punctuation.terminator.statement.powershell
#                                                                               ^ punctuation.section.braces.end.powershell

Write-Host "Hello" ; MyFunction "World!"
#<--------- support.function.powershell ! support.function.badname.powershell
#          ^                    ^ punctuation.definition.string.begin.powershell
#          ^^^^^^^              ^^^^^^^^ string.quoted.double.powershell
#                ^                     ^ punctuation.definition.string.end.powershell
#                  ^ punctuation.terminator.statement.powershell
#                    ^^^^^^^^^^ support.function.badname.powershell

& { MyFunction }
#<- keyword.operator.other.powershell
# ^ punctuation.section.braces.begin.powershell
# ^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^^^^^^ support.function.badname.powershell
#              ^ punctuation.section.braces.end.powershell

{ & notepad.exe $path }
#<- punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#               ^ punctuation.definition.variable.powershell
#               ^^^^^ variable.other.readwrite.powershell
#                     ^ punctuation.section.braces.end.powershell

{ & git clone $repoName }
#<- punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^^^ support.function.powershell ! support.function.badname.powershell
#             ^ punctuation.definition.variable.powershell
#             ^^^^^^^^^ variable.other.readwrite.powershell
#                       ^ punctuation.section.braces.end.powershell

$scriptBlock = { Get-Content -Path "test.txt" | MyFunction }
#<- punctuation.definition.variable.powershell
#^^^^^^^^^^^ variable.other.readwrite.powershell
#            ^ keyword.operator.assignment.powershell
#              ^ punctuation.section.braces.begin.powershell
#              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                ^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                                  ^ punctuation.definition.string.begin.powershell
#                                  ^^^^^^^^^^ string.quoted.double.powershell
#                                           ^ punctuation.definition.string.end.powershell
#                                             ^ keyword.operator.other.powershell
#                                               ^^^^^^^^^^ support.function.badname.powershell
#                                                          ^ punctuation.section.braces.end.powershell

function Wrapper { MyFunction ; MyOtherFunction | Invoke-NounVerb ; MyThirdFunction }
#<-------- storage.type.powershell
#        ^^^^^^^ entity.name.function.powershell
#                ^ punctuation.section.braces.begin.powershell
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                  ^^^^^^^^^^   ^^^^^^^^^^^^^^^                     ^^^^^^^^^^^^^^^ support.function.badname.powershell
#                             ^                                   ^ punctuation.terminator.statement.powershell
#                                               ^ keyword.operator.other.powershell
#                                                 ^^^^^^^^^^^^^^^ support.function.powershell ! support.function.badname.powershell
#                                                                                   ^ punctuation.section.braces.end.powershell
