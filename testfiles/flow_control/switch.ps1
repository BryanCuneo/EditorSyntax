# SYNTAX TEST v1 "source.powershell" "Switch statement"
# https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/06-flow-control
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_switch

switch ("fourteen") { }
#<------ keyword.control.powershell
#      ^ punctuation.section.group.begin.powershell
#      ^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#       ^ punctuation.definition.string.begin.powershell
#       ^^^^^^^^^^ string.quoted.double.powershell
#                ^ punctuation.definition.string.end.powershell
#                 ^ punctuation.section.group.end.powershell
#                   ^ punctuation.section.braces.begin.powershell
#                   ^^^ meta.scriptblock.powershell
#                     ^ punctuation.section.braces.end.powershell

switch -CaseSensitive ("fourteen") { }
#<------ keyword.control.powershell
#      ^ keyword.operator.assignment.powershell
#                     ^ punctuation.section.group.begin.powershell
#                     ^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#                      ^ punctuation.definition.string.begin.powershell
#                      ^^^^^^^^^^ string.quoted.double.powershell
#                               ^ punctuation.definition.string.end.powershell
#                                ^ punctuation.section.group.end.powershell
#                                  ^ punctuation.section.braces.begin.powershell
#                                  ^^^ meta.scriptblock.powershell
#                                    ^ punctuation.section.braces.end.powershell

switch -Regex ("fourteen") { }
#<------ keyword.control.powershell
#      ^ keyword.operator.assignment.powershell
#             ^ punctuation.section.group.begin.powershell
#             ^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#              ^ punctuation.definition.string.begin.powershell
#              ^^^^^^^^^^ string.quoted.double.powershell
#                       ^ punctuation.definition.string.end.powershell
#                        ^ punctuation.section.group.end.powershell
#                          ^ punctuation.section.braces.begin.powershell
#                          ^^^ meta.scriptblock.powershell
#                            ^ punctuation.section.braces.end.powershell

switch -Wildcard ($a) { }
#<------ keyword.control.powershell
#      ^ keyword.operator.assignment.powershell
#                ^ punctuation.section.group.begin.powershell
#                ^^^^ meta.group.simple.subexpression.powershell
#                 ^ punctuation.definition.variable.powershell
#                 ^^ variable.other.readwrite.powershell
#                   ^ punctuation.section.group.end.powershell
#                     ^ punctuation.section.braces.begin.powershell
#                     ^^^ meta.scriptblock.powershell
#                       ^ punctuation.section.braces.end.powershell

switch -regex -file .\somefile.txt { }
#<------ keyword.control.powershell
#      ^      ^ keyword.operator.assignment.powershell
#                                  ^ punctuation.section.braces.begin.powershell
#                                  ^^^ meta.scriptblock.powershell
#                                    ^ punctuation.section.braces.end.powershell

switch (3) { }
#<------ keyword.control.powershell
#      ^ punctuation.section.group.begin.powershell
#      ^^^ meta.group.simple.subexpression.powershell
#       ^ constant.numeric.integer.powershell
#        ^ punctuation.section.group.end.powershell
#          ^ punctuation.section.braces.begin.powershell
#          ^^^ meta.scriptblock.powershell
#            ^ punctuation.section.braces.end.powershell

switch (4, 2) { }
#<------ keyword.control.powershell
#      ^ punctuation.section.group.begin.powershell
#      ^^^^^^ meta.group.simple.subexpression.powershell
#       ^  ^ constant.numeric.integer.powershell
#        ^ keyword.operator.other.powershell
#           ^ punctuation.section.group.end.powershell
#             ^ punctuation.section.braces.begin.powershell
#             ^^^ meta.scriptblock.powershell
#               ^ punctuation.section.braces.end.powershell

switch -Regex -File $filePath {
#<------ keyword.control.powershell
#      ^      ^ keyword.operator.assignment.powershell
#                   ^ punctuation.definition.variable.powershell
#                   ^^^^^^^^^ variable.other.readwrite.powershell
#                             ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    '.' { }
#   ^ punctuation.definition.string.begin.powershell
#   ^^^ string.quoted.single.powershell
#     ^ punctuation.definition.string.end.powershell
#       ^ punctuation.section.braces.begin.powershell
#       ^^^ meta.scriptblock.powershell
#         ^ punctuation.section.braces.end.powershell

    default { }
#   ^^^^^^^ keyword.control.powershell
#           ^ punctuation.section.braces.begin.powershell
#           ^^^ meta.scriptblock.powershell
#             ^ punctuation.section.braces.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

switch -Wildcard -CaseSensitive ($something) {
#<------ keyword.control.powershell
#      ^         ^ keyword.operator.assignment.powershell
#                               ^ punctuation.section.group.begin.powershell
#                                ^ punctuation.definition.variable.powershell
#                                 ^ variable.other.readwrite.powershell
#                                          ^ punctuation.section.group.end.powershell
#                                            ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    '.' { }
#   ^ punctuation.definition.string.begin.powershell
#   ^^^ string.quoted.single.powershell
#     ^ punctuation.definition.string.end.powershell
#       ^ punctuation.section.braces.begin.powershell
#       ^^^ meta.scriptblock.powershell
#         ^ punctuation.section.braces.end.powershell
    default { }
#   ^^^^^^^ keyword.control.powershell
#           ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
#           ^^^ meta.scriptblock.powershell
#             ^ meta.scriptblock.powershell punctuation.section.braces.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

switch ('this') {
#<------ keyword.control.powershell
#      ^ punctuation.section.group.begin.powershell
#       ^^^^^^ string.quoted.single.powershell
#             ^ punctuation.section.group.end.powershell
#               ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    'this' { }
#   ^ punctuation.definition.string.begin.powershell
#   ^^^^^^ string.quoted.single.powershell
#        ^ punctuation.definition.string.end.powershell
#          ^ punctuation.section.braces.begin.powershell
#          ^^^ meta.scriptblock.powershell
#            ^ punctuation.section.braces.end.powershell
    default { }
#   ^^^^^^^ keyword.control.powershell
#           ^ punctuation.section.braces.begin.powershell
#           ^^^ meta.scriptblock.powershell
#             ^ punctuation.section.braces.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell
