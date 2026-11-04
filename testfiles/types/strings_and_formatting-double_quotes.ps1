# SYNTAX TEST v1 "source.powershell" "Double-quoted strings and formatting"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

"This is a double-quoted string"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                              ^ punctuation.definition.string.end.powershell

"This has a $variable in it"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#           ^ punctuation.definition.variable.powershell
#           ^^^^^^^^^ variable.other.readwrite.powershell
#                          ^ punctuation.definition.string.end.powershell

"This is also a ${$variable}"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#               ^ punctuation.definition.variable.powershell
#                ^ punctuation.section.braces.begin
#                          ^ punctuation.section.braces.end
#                           ^ punctuation.definition.string.end.powershell

"This $variable.member won't work :("
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#     ^ punctuation.definition.variable.powershell
#              ^^^^^^^ ! variable.other.member.powershell
#                                   ^ punctuation.definition.string.end.powershell

"But this $($variable.member) will :)"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#         ^ keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#         ^^^^^^^^^^^^^^^^^^^ meta.embedded.substatement.powershell
#           ^ punctuation.definition.variable.powershell
#           ^^^^^^^^^^^^^^^^ interpolated.complex.source.powershell
#                    ^^^^^^^ variable.other.member.powershell
#                           ^ punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                    ^ punctuation.definition.string.end.powershell

"This whole thing should be a variable: $Script:variable"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                       ^ punctuation.definition.variable.powershell
#                                       ^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                                        ^^^^^^ storage.modifier.scope.powershell
#                                                       ^ punctuation.definition.string.end.powershell

"So should this: ${$Global:variable}"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                ^ punctuation.definition.variable.powershell
#                ^^^^^^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                 ^ punctuation.section.braces.begin
#                                  ^ punctuation.section.braces.end
#                                   ^ punctuation.definition.string.end.powershell

"Double quotes '' in a 'single-quoted' string are just characters"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#              ^^      ^            ^ ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                                ^ punctuation.definition.string.end.powershell

"But double quotes ""break up"" the string unless escaped"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                  ^^        ^^ constant.character.escape.powershell ! punctuation.definition.string.begin.powershell punctuation.definition.string.end.powershell
#                                                        ^ punctuation.definition.string.end.powershell

"Escaped chars: `", `n, `$, `b, `t, `e, `u{10ffff}, `""
#<------------------------------------------------------- string.quoted.double.powershell
#               ^^  ^^  ^^  ^^  ^^  ^^  ^^^^^^^^^^  ^^ constant.character.escape.powershell

"Splatting does not work in double-quoted @variable strings"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                         ^ ! punctuation.definition.variable.powershell
#                                         ^^^^^^^^^ ! variable.other.readwrite.powershell
#                                                          ^ punctuation.definition.string.end.powershell

# Confirm automatic variables and constants work in double-quoted strings but
# not single-quoted strings
"$_, $$, $PWD, $HOME, $ShellId"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#^   ^   ^     ^      ^ punctuation.definition.variable.powershell
#^^  ^^  ^^^^ support.variable.automatic.powershell
#     ^ ! punctuation.definition.variable.powershell
#              ^^^^^  ^^^^^^^^ variable.other.constant.powershell
#                             ^ punctuation.definition.string.end.powershell

"You can split double-
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
quoted strings across lines"
#<---------------------------- string.quoted.double.powershell
#                          ^ punctuation.definition.string.end.powershell

# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules#here-strings
@"
#<-- string.quoted.double.heredoc.powershell punctuation.definition.string.begin.powershell
This is a double-quoted here-string.
#<------------------------------------ string.quoted.double.heredoc.powershell
It can have multiple lines, $variables, and $($substatements).
#<-------------------------------------------------------------- string.quoted.double.heredoc.powershell
#                           ^                 ^ punctuation.definition.variable.powershell
#                           ^^^^^^^^^^        ^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                                           ^ keyword.other.substatement.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                           ^^^^^^^^^^^^^^^^^ meta.embedded.substatement.powershell
#                                             ^^^^^^^^^^^^^^ interpolated.complex.source.powershell
#                                                           ^ punctuation.section.group.end.powershell punctuation.section.embedded.substatement.end.powershell
#                                           
"@
#<-- string.quoted.double.heredoc.powershell punctuation.definition.string.end.powershell
