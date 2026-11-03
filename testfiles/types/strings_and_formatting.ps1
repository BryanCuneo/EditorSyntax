# SYNTAX TEST v1 "source.powershell" "Strings and string formatting"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

$str = "This is a double-quoted string"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                     ^ punctuation.definition.string.end.powershell

$str = "This has a $variable in it"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^               ^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                  ^ punctuation.definition.variable.powershell
#                                 ^ punctuation.definition.string.end.powershell


$str = "This is also a ${$variable}"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^                   ^^^^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                      ^ punctuation.definition.variable.powershell
#                       ^ punctuation.section.braces.begin
#                                 ^ punctuation.section.braces.end
#                                  ^ punctuation.definition.string.end.powershell

$str = "This $variable.member won't work :("
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^         ^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#            ^ punctuation.definition.variable.powershell
#                     ^^^^^^^ ! variable.other.member.powershell
#                                          ^ punctuation.definition.string.end.powershell

$str = "But this $($variable.member) will :)"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^               ^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                ^ keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                ^^^^^^^^^^^^^^^^^^^ meta.embedded.substatement.powershell
#                  ^ punctuation.definition.variable.powershell
#                  ^^^^^^^^^^^^^^^^ interpolated.complex.source.powershell
#                           ^^^^^^^ variable.other.member.powershell
#                                  ^ punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                           ^ punctuation.definition.string.end.powershell



$str = "This whole thing should be a variable: $Script:variable"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^                                           ^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                              ^ punctuation.definition.variable.powershell
#                                               ^^^^^^ storage.modifier.scope.powershell
#                                                              ^ punctuation.definition.string.end.powershell



$str = "So should this: ${$Global:variable}"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^                    ^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                       ^ punctuation.definition.variable.powershell
#                        ^ punctuation.section.braces.begin
#                                         ^ punctuation.section.braces.end
#                                          ^ punctuation.definition.string.end.powershell


$str = 'This is a single-quoted string'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                     ^ punctuation.definition.string.end.powershell


$str = "Splatting doesn't work in @variable strings"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                 ^ ! punctuation.definition.variable.powershell
#                                 ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                  ^ punctuation.definition.string.end.powershell

$str = 'Or in @variable strings'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#             ^ ! punctuation.definition.variable.powershell
#             ^^^^^^^^^ ! variable.other.readwrite.powershell
#                              ^ punctuation.definition.string.end.powershell

# Confirm automatic variables and constants work in double-quoted strings but
# not single-quoted strings
$str = "$_, $$, $PWD, $HOME, $ShellId"
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#       ^   ^   ^     ^      ^ punctuation.definition.variable.powershell
#       ^^  ^^  ^^^^ support.variable.automatic.powershell
#            ^ ! punctuation.definition.variable.powershell
#                     ^^^^^  ^^^^^^^ variable.other.constant.powershell
#                                    ^ punctuation.definition.string.end.powershell


$str = '$_, $$, $PWD, $HOME, $ShellId'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#       ^   ^^  ^     ^      ^ ! punctuation.definition.variable.powershell
#       ^^  ^^  ^^^^ ! support.variable.automatic.powershell
#                     ^^^^^  ^^^^^^^ ! variable.other.constant.powershell
#                                    ^ punctuation.definition.string.end.powershell

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules#here-strings
$str = @"
This is a double-quoted here-string.
It can have multiple lines, $variables, and $($substatements).
"@
#<-- string.quoted.double.heredoc.powershell punctuation.definition.string.end.powershell

$str = @'
And this is a single-quoted here-string.
Still can have multiple line, but no $variables or $($substatements).
'@
#<-- string.quoted.single.heredoc.powershell punctuation.definition.string.end.powershell
