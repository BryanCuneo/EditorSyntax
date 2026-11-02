# SYNTAX TEST v1 "source.powershell" "User-defined variables and their scope modifiers"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_quoting_rules
# https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-string-substitutions

$str = "This is a double-quoted string"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                     ^ punctuation.definition.string.end.powershell
$str = 'This is a single-quoted string'
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                     ^ punctuation.definition.string.end.powershell
$str = "This has a $variable in it!"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                  ^^^^^^^^^ variable.other.readwrite.powershell
#                  ^ punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                  ^ punctuation.definition.string.end.powershell

$str = "This $variable.property won't work :("
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#            ^^^^^^^^^ variable.other.readwrite.powershell
#                     ^^^^^^^^^ ! variable.other.member.powershell
#            ^ punctuation.definition.variable.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                            ^ punctuation.definition.string.end.powershell

$str = "But this $($variable.property) will :)"
#      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                ^^^^^^^^^^^^^^^^^^^^^ meta.embedded.substatement.powershell
#                  ^^^^^^^^^^^^^^^^^^ interpolated.complex.source.powershell
#                  ^^^^^^^^^ variable.other.readwrite.powershell
#                           ^^^^^^^^^ variable.other.member.powershell
#                ^^ punctuation.section.embedded.substatement.begin.powershell
#                  ^ punctuation.definition.variable.powershell
#                                    ^ punctuation.section.embedded.substatement.end.powershell
#      ^ punctuation.definition.string.begin.powershell
#                                             ^ punctuation.definition.string.end.powershell
