# SYNTAX TEST v1 "source.powershell" "Cmdlets"
# https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/cmdlet-overview

Invoke-Something -foobar
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell

Invoke-Something -foobar value
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell

Invoke-Something -foobar:$true
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell
#                        ^ punctuation.definition.variable.powershell
#                         ^^^^ constant.language.powershell

Invoke-Something -foobar: $true
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell

Invoke-Something -p1 v1 -p2 10 -p3 'value' -switch -verbose
#<---------------- support.function.powershell
#                ^      ^      ^           ^       ^ keyword.operator.assignment.powershell
#                           ^^ constant.numeric.integer.powershell
#                                  ^ punctuation.definition.string.begin.powershell
#                                  ^^^^^^^ string.quoted.single.powershell
#                                        ^ punctuation.definition.string.end.powershell

Invoke-Something (1..20 | Invoke-Something) -p2 'value'
#<---------------- support.function.powershell
#                ^ punctuation.section.group.begin.powershell
#                ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#                 ^  ^^ constant.numeric.integer.powershell
#                  ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#                       ^ keyword.operator.other.powershell
#                         ^^^^^^^^^^^^^^^^ support.function.powershell
#                                         ^ meta.group.simple.subexpression.powershell punctuation.section.group.end.powershell
#                                           ^ keyword.operator.assignment.powershell

#                                               ^ punctuation.definition.string.begin.powershell
#                                               ^^^^^^^ string.quoted.single.powershell
#                                                     ^ punctuation.definition.string.end.powershell

Invoke-Something -p1 v2 -p2 30 | Invoke-Something -switch
#<---------------- support.function.powershell
#                ^      ^                         ^ keyword.operator.assignment.powershell
#                           ^^ constant.numeric.integer.powershell
#                              ^ keyword.operator.other.powershell
#                                ^^^^^^^^^^^^^^^^ support.function.powershell

Invoke-Something -p1 {
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell
#                    ^ punctuation.section.braces.begin.powershell
    Invoke-Something -foobar:$true
#   ^ support.function.powershell
#                    ^ keyword.operator.assignment.powershell
#                            ^ punctuation.definition.variable.powershell
#                             ^^^^ constant.language.powershell
} | Invoke-Something
#<- punctuation.section.braces.end.powershell
# ^ keyword.operator.other.powershell
#   ^^^^^^^^^^^^^^^^ support.function.powershell

Invoke-Something -p1 value `
#<---------------- support.function.powershell
#                ^ keyword.operator.assignment.powershell
#                          ^ keyword.operator.other.powershell
    -p2 14.4 `
#   ^ keyword.operator.assignment.powershell
#       ^^^^ constant.numeric.integer.powershell
#            ^ keyword.operator.other.powershell
    -p3 $value | Invoke-Something -verbose
#   ^                             ^ keyword.operator.assignment.powershell
#       ^ punctuation.definition.variable.powershell
#       ^^^^^^ variable.other.readwrite.powershell
#              ^ keyword.operator.other.powershell
#                ^^^^^^^^^^^^^^^^ support.function.powershell
