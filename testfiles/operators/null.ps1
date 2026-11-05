# SYNTAX TEST v1 "source.powershell" "Single-quoted strings"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators#null-coalescing-operator-

$maybeNull = $null

$result = $maybeNull ?? "fallback"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^   ^^^^^^^^^^ variable.other.readwrite.powershell
#       ^ keyword.operator.assignment.powershell
#                    ^^ keyword.operator.null-coalescing.powershell
#                       ^ punctuation.definition.string.begin.powershell
#                       ^^^^^^^^^^ string.quoted.double.powershell
#                                ^ punctuation.definition.string.end.powershell

$maybeNull ??= "assigned"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^ variable.other.readwrite.powershell
#          ^^^ keyword.operator.null-coalescing-assignment.powershell
#            ^ ! keyword.operator.assignment.powershell
#              ^ punctuation.definition.string.begin.powershell
#              ^^^^^^^^^^ string.quoted.double.powershell
#                       ^ punctuation.definition.string.end.powershell

${maybeNull}?.Length
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ punctuation.section.braces.begin.powershell
#^^^^^^^^^^^   variable.other.readwrite.powershell
#          ^ punctuation.section.braces.end.powershell
#           ^^ keyword.operator.null-conditional-member-access.powershell
#             ^^^^^^ variable.other.member.powershell

${maybeNull}?[0]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ punctuation.section.braces.begin.powershell
#^^^^^^^^^^^ variable.other.readwrite.powershell
#          ^ punctuation.section.braces.end.powershell
#           ^^ keyword.operator.null-conditional-index.powershell

$($maybeNull.Property)?.Length
#<- meta.group.complex.subexpression.powershell keyword.other.substatement.powershell punctuation.definition.subexpression.powershell
#^ 	punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^^^ meta.group.complex.subexpression.powershell
# ^ punctuation.definition.variable.powershell
# ^^^^^^^^^^ variable.other.readwrite.powershell
#           ^^^^^^^^^   ^^^^^^ variable.other.member.powershell
#                    ^ punctuation.section.group.end.powershell
#                     ^^ keyword.operator.null-conditional-member-access.powershell

$($maybeNull.Property)?[0]
#<- meta.group.complex.subexpression.powershell keyword.other.substatement.powershell punctuation.definition.subexpression.powershell
#^ 	punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^^^ meta.group.complex.subexpression.powershell
# ^ punctuation.definition.variable.powershell
# ^^^^^^^^^^ variable.other.readwrite.powershell
#           ^^^^^^^^^ variable.other.member.powershell
#                    ^ punctuation.section.group.end.powershell
#                     ^^ keyword.operator.null-conditional-index.powershell
#                      ^ punctuation.section.bracket.begin.powershell
#                       ^ constant.numeric.integer.powershell
#                        ^ punctuation.section.bracket.end.powershell

$questionMarkInName? = "why is this allowed?"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                    ^ keyword.operator.assignment.powershell
#                      ^ punctuation.definition.string.begin.powershell
#                      ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                           ^ punctuation.definition.string.end.powershell

$questionMarkInName?.Length
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                  ^^ ! keyword.operator.null-conditional-member-access.powershell
#                   ^^^^^^^ variable.other.member.powershell

$questionMarkInName?[0]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                  ^^ ! keyword.operator.null-conditional-index.powershell
#                   ^ punctuation.section.bracket.begin.powershell
#                    ^ constant.numeric.integer.powershell
#                     ^ punctuation.section.bracket.end.powershell

${questionMarkInName?}.Length
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell 
#^ punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                    ^ punctuation.section.braces.end.powershell
#                     ^^^^^^^ variable.other.member.powershell


