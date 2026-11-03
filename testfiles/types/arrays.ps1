# SYNTAX TEST v1 "source.powershell" "Arrays"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays

$a1 = @(1, 2, 3, 4)
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#   ^ keyword.operator.assignment.powershell
#     ^ keyword.other.array.begin.powershell
#     ^^^^^^^^^^^^^ meta.group.array-expression.powershell
#      ^ punctuation.section.group.begin.powershell
#       ^  ^  ^  ^ constant.numeric.integer.powershell
#        ^  ^  ^ keyword.operator.other.powershell
#                 ^ punctuation.section.group.end.powershell

$a2 = ('one','two','three','four')
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#   ^ keyword.operator.assignment.powershell
#     ^ punctuation.section.group.begin.powershell
#      ^^^^^ ^^^^^ ^^^^^^^ ^^^^^^ string.quoted.single.powershell
#           ^     ^       ^ keyword.operator.other.powershell
#                                ^ punctuation.section.group.end.powershell

$a3 = $one, $two, $three, $four
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#   ^ keyword.operator.assignment.powershell
#     ^     ^     ^       ^ variable.other.readwrite.powershell punctuation.definition.variable.powershell
#      ^^    ^^    ^^^^    ^^^^ variable.other.readwrite.powershell
#         ^     ^       ^ keyword.operator.other.powershell

$a1[0]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#  ^ punctuation.section.bracket.begin.powershell
#   ^ constant.numeric.integer.powershell
#    ^ punctuation.section.bracket.end.powershell

$a2[-1]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#  ^ punctuation.section.bracket.begin.powershell
#   ^ ! keyword.operator.assignment.powershell
#   ^^ constant.numeric.integer.powershell
#     ^ punctuation.section.bracket.end.powershell

$a3[1..2]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^ variable.other.readwrite.powershell
#  ^ punctuation.section.bracket.begin.powershell
#   ^  ^ constant.numeric.integer.powershell
#    ^^ keyword.operator.range.powershell
#       ^ punctuation.section.bracket.end.powershell
    @(@($a))
#   ^ ^ keyword.other.array.begin.powershell
#    ^ ^ punctuation.section.group.begin.powershell
#       ^ variable.other.readwrite.powershell punctuation.definition.variable.powershell
#        ^ variable.other.readwrite.powershell
#         ^^ punctuation.section.group.end.powershell
    @(($i = 10); (++$j))
#   ^ keyword.other.array.begin.powershell
#    ^^          ^ punctuation.section.group.begin.powershell
#      ^            ^ variable.other.readwrite.powershell punctuation.definition.variable.powershell
#       ^            ^ variable.other.readwrite.powershell
#         ^ keyword.operator.assignment.powershell
#           ^^ constant.numeric.integer.powershell
#             ^       ^^ punctuation.section.group.end.powershell
#              ^ punctuation.terminator.statement.powershell
#                 ^^ keyword.operator.assignment.powershell
    @($i = 10)
#   ^ keyword.other.array.begin.powershell
#    ^ punctuation.section.group.begin.powershell
#     ^ variable.other.readwrite.powershell punctuation.definition.variable.powershell
#      ^ variable.other.readwrite.powershell
#        ^ keyword.operator.assignment.powershell
#          ^^ constant.numeric.integer.powershell
#            ^ punctuation.section.group.end.powershell
    $i[($y - 1) + $x]
#   ^   ^         ^ variable.other.readwrite.powershell punctuation.definition.variable.powershell
#    ^   ^         ^ variable.other.readwrite.powershell
#     ^ punctuation.section.bracket.begin.powershell
#      ^ punctuation.section.group.begin.powershell
#          ^    ^ keyword.operator.assignment.powershell
#            ^ constant.numeric.integer.powershell
#             ^ punctuation.section.group.end.powershell
#                   ^ punctuation.section.bracket.end.powershell
