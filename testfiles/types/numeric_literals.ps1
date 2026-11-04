# SYNTAX TEST v1 "source.powershell" "Numeric literals"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_numeric_literals

0
#<- constant.numeric.integer.powershell

-1
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^ constant.numeric.integer.powershell

.2
#<-- constant.numeric.integer.powershell

+.3
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell

4.
#<- constant.numeric.integer.powershell
#^ ! constant.numeric.integer.powershell

5.d
#<--- constant.numeric.integer.powershell

6.lGB
#<-- constant.numeric.integer.powershell
#  ^^ ! constant.numeric.integer.powershell

1.e+7d
#<-- constant.numeric.integer.powershell
#  ^ keyword.operator.assignment.powershell
#   ^^ constant.numeric.integer.powershell

1e+8d
#<-- constant.numeric.integer.powershell
# ^ keyword.operator.assignment.powershell
#  ^^ constant.numeric.integer.powershell

9.10
#<---- constant.numeric.integer.powershell

-10.11
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^^^^ constant.numeric.integer.powershell

-12 + -13
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^^^ ! constant.numeric.integer.powershell
#   ^ keyword.operator.assignment.powershell
#     ^ ! keyword.operator.assignment.powershell
#     ^^^ constant.numeric.integer.powershell

-14+-15
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^ keyword.operator.assignment.powershell ! constant.numeric.integer.powershell
#   ^ ! keyword.operator.assignment.powershell
#   ^^^ constant.numeric.integer.powershell

#16++17

+18
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell

-19+-
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^^ keyword.operator.assignment.powershell ! constant.numeric.integer.powershell

20/-21
#<-- constant.numeric.integer.powershell
# ^ keyword.operator.assignment.powershell ! constant.numeric.integer.powershell
#  ^^^ constant.numeric.integer.powershell

22/-23D
#<-- constant.numeric.integer.powershell
# ^ keyword.operator.assignment.powershell ! constant.numeric.integer.powershell
#  ^ ! keyword.operator.assignment.powershell
#  ^^^^ constant.numeric.integer.powershell

-24.0002L
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^^^^^^^ constant.numeric.integer.powershell

$x..25.26D
#<- punctuation.definition.variable.powershell ! constant.numeric.integer.powershell
#<-- variable.other.readwrite.powershell ! constant.numeric.integer.powershell
# ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#   ^^^^^^ constant.numeric.integer.powershell

-27..-20
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#    ^ ! keyword.operator.assignment.powershell
#    ^^^ constant.numeric.integer.powershell

$true..28
#<- punctuation.definition.variable.powershell ! constant.numeric.integer.powershell
#<----- constant.language.powershell ! constant.numeric.integer.powershell
#    ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#      ^^ constant.numeric.integer.powershell

-29..$null
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#    ^ punctuation.definition.variable.powershell ! constant.numeric.integer.powershell
#    ^^^^^ constant.language.powershell ! constant.numeric.integer.powershell

-30..31
#<- constant.numeric.integer.powershell ! keyword.operator.assignment.powershell
#^^ constant.numeric.integer.powershell
#  ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#    ^^ constant.numeric.integer.powershell

32..33
#<-- constant.numeric.integer.powershell
# ^^ keyword.operator.range.powershell ! constant.numeric.integer.powershell
#   ^^ constant.numeric.integer.powershell

34, 35, -36
#<-- constant.numeric.integer.powershell
# ^   ^ keyword.operator.other.powershell
# ^^  ^^ ! constant.numeric.integer.powershell
#   ^^  ^^^ constant.numeric.integer.powershell

0x37
#<---- constant.numeric.hex.powershell

+0xDD
#<- constant.numeric.hex.powershell ! keyword.operator.assignment.powershell
#^^^^ constant.numeric.hex.powershell ! keyword.operator.assignment.powershell

-0xAF
#<- constant.numeric.hex.powershell ! keyword.operator.assignment.powershell
#^^^^ constant.numeric.hex.powershell ! keyword.operator.assignment.powershell
