# SYNTAX TEST v1 "source.powershell" "Single-quoted strings"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

$str = 'This is a single-quoted string'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                     ^ punctuation.definition.string.end.powershell

$str = 'You cannot have a $variable in a single-quoted string'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                         ^ ! punctuation.definition.variable.powershell
#                         ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                            ^ punctuation.definition.string.end.powershell

$str = 'See? I told ${you} so'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                   ^ ! punctuation.definition.variable.powershell
#                   ^^^^^^ ! variable.other.readwrite.powershell
#                    ^ ! punctuation.section.braces.begin
#                        ^ ! punctuation.section.braces.end
#                            ^ punctuation.definition.string.end.powershell

$str = 'Single-quoted strings cannot have $($substatements) either.'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                         ^ ! keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                         ^^^^^^^^^^^^^^^^^ ! meta.embedded.substatement.powershell
#                                           ^ ! punctuation.definition.variable.powershell
#                                           ^^^^^^^^^^^^^^ ! variable.other.readwrite.powershell
#                                           ^^^^^^^^^^^^^^ ! interpolated.complex.source.powershell
#                                                         ^ ! punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                                                  ^ punctuation.definition.string.end.powershell

$str = 'Double quotes "" in a "single-quoted" string are just characters'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                     ^^      ^            ^ ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                                       ^ punctuation.definition.string.end.powershell

$str = 'But single quotes ''break up'' the string unless escaped'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                         ^^        ^^ constant.character.escape.powershell ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                               ^ punctuation.definition.string.end.powershell

'But here they''re not escape chars: `", `n, `$, `b, `"'
#             ^^ constant.character.escape.powershell
#                                    ^^  ^^  ^^  ^^  ^^ ! constant.character.escape.powershell

$str = 'Splatting does not work in single-quoted @variable strings'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                ^ ! punctuation.definition.variable.powershell
#                                                ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                                 ^ punctuation.definition.string.end.powershell

$str = '$_, $$, $PWD, $HOME, $ShellId'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^ punctuation.definition.string.begin.powershell
#       ^   ^^  ^     ^      ^ ! punctuation.definition.variable.powershell
#       ^^  ^^  ^^^^ ! support.variable.automatic.powershell
#                     ^^^^^  ^^^^^^^ ! variable.other.constant.powershell
#                                    ^ punctuation.definition.string.end.powershell

$str = 'You can split single-
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
quoted strings across lines too'
#<-------------------------------- string.quoted.single.powershell
#                              ^ punctuation.definition.string.end.powershell

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules#here-strings
$str = @'
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^ variable.other.readwrite.powershell
#    ^ keyword.operator.assignment.powershell
#      ^^ string.quoted.single.heredoc.powershell punctuation.definition.string.begin.powershell
And this is a single-quoted here-string.
#<---------------------------------------- string.quoted.single.heredoc.powershell
Can still have multiple line, but no $variables or $($substatements).
#<-------------------------------------------------------------- string.quoted.single.heredoc.powershell
#                                    ^               ^ ! punctuation.definition.variable.powershell
#                                    ^^^^^^^^^^      ^^^^^^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                  ^ ! keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                                  ^^^^^^^^^^^^^^^^^ ! meta.embedded.substatement.powershell
#                                                    ^^^^^^^^^^^^^^ ! interpolated.complex.source.powershell
#                                                                  ^ ! punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                                  
'@
#<-- string.quoted.single.heredoc.powershell punctuation.definition.string.end.powershell
