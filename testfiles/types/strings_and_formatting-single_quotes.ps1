# SYNTAX TEST v1 "source.powershell" "Single-quoted strings"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

'This is a single-quoted string'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                              ^ punctuation.definition.string.end.powershell

'You cannot have a $variable in a single-quoted string'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                  ^ ! punctuation.definition.variable.powershell
#                  ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                     ^ punctuation.definition.string.end.powershell

'See? I told ${you} so'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#            ^ ! punctuation.definition.variable.powershell
#            ^^^^^^ ! variable.other.readwrite.powershell
#             ^ ! punctuation.section.braces.begin
#                 ^ ! punctuation.section.braces.end
#                     ^ punctuation.definition.string.end.powershell

'Single-quoted strings cannot have $($substatements) either.'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                  ^ ! keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                  ^^^^^^^^^^^^^^^^^ ! meta.embedded.substatement.powershell
#                                    ^ ! punctuation.definition.variable.powershell
#                                    ^^^^^^^^^^^^^^ ! variable.other.readwrite.powershell
#                                    ^^^^^^^^^^^^^^ ! interpolated.complex.source.powershell
#                                                  ^ ! punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                                           ^ punctuation.definition.string.end.powershell

'Double quotes "" in a "single-quoted" string are just characters'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#              ^^      ^            ^ ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                                ^ punctuation.definition.string.end.powershell

'But single quotes ''break up'' the string unless escaped'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                  ^^        ^^ constant.character.escape.powershell ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                        ^ punctuation.definition.string.end.powershell

'But here they''re not escape chars: `", `n, `$, `b, `"'
#             ^^ constant.character.escape.powershell
#                                    ^^  ^^  ^^  ^^  ^^ ! constant.character.escape.powershell

'Splatting does not work in single-quoted @variable strings'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                         ^ ! punctuation.definition.variable.powershell
#                                         ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                          ^ punctuation.definition.string.end.powershell

'$_, $$, $PWD, $HOME, $ShellId'
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#^   ^^  ^     ^      ^ ! punctuation.definition.variable.powershell
#^^  ^^  ^^^^ ! support.variable.automatic.powershell
#              ^^^^^  ^^^^^^^^ ! variable.other.constant.powershell
#                             ^ punctuation.definition.string.end.powershell

'You can split single-
#<- string.quoted.single.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
quoted strings across lines too'
#<-------------------------------- string.quoted.single.powershell
#                              ^ punctuation.definition.string.end.powershell

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules#here-strings
@'
#<-- string.quoted.single.heredoc.powershell punctuation.definition.string.begin.powershell
And this is a single-quoted here-string.
#<---------------------------------------- string.quoted.single.heredoc.powershell
Can still have multiple line, but no $variables or $($substatements).
#<-------------------------------------------------------------- string.quoted.single.heredoc.powershell
#                             ^               ^ ! punctuation.definition.variable.powershell
#                             ^^^^^^^^^^      ^^^^^^^^^^^^^^ ! variable.other.readwrite.powershell
#                                           ^ ! keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                           ^^^^^^^^^^^^^^^^^ ! meta.embedded.substatement.powershell
#                                             ^^^^^^^^^^^^^^ ! interpolated.complex.source.powershell
#                                                           ^ ! punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                           
'@
#<-- string.quoted.single.heredoc.powershell punctuation.definition.string.end.powershell
