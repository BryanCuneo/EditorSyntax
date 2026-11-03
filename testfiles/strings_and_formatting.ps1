# SYNTAX TEST v1 "source.powershell" "User-defined variables and their scope modifiers"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

$str = "This is a double-quoted string"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                     ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell

$str = "This has a $variable in it"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^^^               ^^^^^^^^^ variable.other.readwrite.powershell
#                  ^ punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                 ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^ keyword.operator.assignment.powershell

$str = "This is also a ${$variable}"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^^^                   ^^^^^^^^^^^^ variable.other.readwrite.powershell
#                      ^ punctuation.definition.variable.powershell
#                       ^ punctuation.section.braces.begin
#                                 ^ punctuation.section.braces.end
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^ keyword.operator.assignment.powershell

$str = "This $variable.member won't work :("
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^^^         ^^^^^^^^^ variable.other.readwrite.powershell
#                     ^^^^^^^ ! variable.other.member.powershell
#            ^ punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                          ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^ keyword.operator.assignment.powershell

$str = "But this $($variable.member) will :)"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                ^^^^^^^^^^^^^^^^^^^ meta.embedded.substatement.powershell
#                  ^^^^^^^^^^^^^^^^ interpolated.complex.source.powershell
#^^^               ^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                           ^^^^^^^ variable.other.member.powershell
#                ^ keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                  ^ punctuation.definition.variable.powershell
#                                  ^ punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                           ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^ keyword.operator.assignment.powershell

$str = "This whole thing should be a variable: $Script:variable"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^^^                                           ^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                                               ^^^^^^ storage.modifier.scope.powershell
#                                              ^ punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                                              ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^ keyword.operator.assignment.powershell

$str = "So should this: ${$Global:variable}"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^^^                    ^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                       ^ punctuation.definition.variable.powershell
#                        ^ punctuation.section.braces.begin
#                                         ^ punctuation.section.braces.end
#      ^ punctuation.definition.string.begin.powershell
#                                          ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell

$str = 'This is a single-quoted string'
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                     ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell


$str = "Splatting doesn't work in @variable strings"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                 ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                 ^ ! punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                                  ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell

$str = 'Or in @variable strings'
#      ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#      ^ punctuation.definition.string.begin.powershell
#             ^^^^^^^^^ ! variable.other.readwrite.powershell
#             ^ ! punctuation.definition.variable.powershell
#                              ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell

# Confirm automatic variables and constants work in double-quoted strings but
# not single-quoted strings
$str = "$_, $$, $PWD, $HOME, $ShellId"
#       ^^  ^^  ^^^^ support.variable.automatic.powershell
#                     ^^^^^  ^^^^^^^ variable.other.constant.powershell
#       ^   ^   ^     ^      ^ punctuation.definition.variable.powershell
#            ^ ! punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                    ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell

$str = '$_, $$, $PWD, $HOME, $ShellId'
#       ^^  ^^  ^^^^ ! support.variable.automatic.powershell
#                     ^^^^^  ^^^^^^^ ! variable.other.constant.powershell
#       ^   ^^  ^     ^      ^ ! punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                    ^ punctuation.definition.string.end.powershell
# <- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
