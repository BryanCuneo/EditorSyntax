# SYNTAX TEST v1 "source.powershell" "User-defined functions"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comparison_operators

if (10 -cgt 100) { }
#<- keyword.control.powershell
#  ^ punctuation.section.group.begin.powershell
#  ^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#   ^^      ^^^ constant.numeric.integer.powershell
#      ^^^^ keyword.operator.comparison.powershell
#              ^ punctuation.section.group.end.powershell
#                ^ punctuation.section.braces.begin.powershell
#                ^^^ meta.scriptblock.powershell
#                  ^  punctuation.section.braces.end.powershell

$a -is $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^ keyword.operator.comparison.powershell
#      ^ punctuation.definition.variable.powershell
#^     ^^ variable.other.readwrite.powershell

$b -contains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^ keyword.operator.comparison.powershell
#            ^ punctuation.definition.variable.powershell
#^           ^^ variable.other.readwrite.powershell

$x -notcontains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^^^ keyword.operator.comparison.powershell
#               ^ punctuation.definition.variable.powershell
#^              ^^ variable.other.readwrite.powershell

$c -in $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^ keyword.operator.comparison.powershell
#      ^ punctuation.definition.variable.powershell
#^     ^^ variable.other.readwrite.powershell

$c -notin $x
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^ keyword.operator.comparison.powershell
#         ^ punctuation.definition.variable.powershell
#^        ^^ variable.other.readwrite.powershell

$a -match $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^ keyword.operator.comparison.powershell
#         ^ punctuation.definition.variable.powershell
#^        ^^ variable.other.readwrite.powershell

$a -notmatch $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^ keyword.operator.comparison.powershell
#            ^ punctuation.definition.variable.powershell
#^           ^^ variable.other.readwrite.powershell

$x -like $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^ keyword.operator.comparison.powershell
#        ^ punctuation.definition.variable.powershell
#^       ^^ variable.other.readwrite.powershell

100 -and 0
#<--- constant.numeric.integer.powershell
#   ^^^^ keyword.operator.logical.powershell
#        ^ constant.numeric.integer.powershell

$a -ceq 4 -and $a -ine $d -or
#  ^              ^ keyword.operator.comparison.powershell
#         ^               ^ keyword.operator.logical.powershell
#       ^ constant.numeric.integer.powershell
#              ^ punctuation.definition.variable.powershell

$c -is [Type]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ variable.other.readwrite.powershell
#  ^^^ keyword.operator.comparison.powershell
#      ^ punctuation.section.bracket.begin.powershell
#       ^^^^ storage.type.powershell
#           ^ punctuation.section.bracket.end.powershell

$c -isnot [Type]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ variable.other.readwrite.powershell
#  ^^^^^^ keyword.operator.comparison.powershell
#         ^ punctuation.section.bracket.begin.powershell
#          ^^^^ storage.type.powershell
#              ^ punctuation.section.bracket.end.powershell

$c -as [Type]
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ variable.other.readwrite.powershell
#  ^^^ keyword.operator.comparison.powershell
#      ^ punctuation.section.bracket.begin.powershell
#       ^^^^ storage.type.powershell
#           ^ punctuation.section.bracket.end.powershell

$k = $y -bor $k
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^   ^^      ^^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^       ^ punctuation.definition.variable.powershell
#       ^^^^ keyword.operator.bitwise.powershell

$x = $y -band $x
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^   ^^       ^^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^        ^ punctuation.definition.variable.powershell
#       ^^^^^ keyword.operator.bitwise.powershell

$z = -bnot $x
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^         ^^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^^^^^ keyword.operator.bitwise.powershell
#          ^ punctuation.definition.variable.powershell

$l = 1 -shl 10
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^      ^^ constant.numeric.integer.powershell
#      ^^^^ keyword.operator.bitwise.powershell

$r = 10 -shr 1
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^^      ^ constant.numeric.integer.powershell
#       ^^^^ keyword.operator.bitwise.powershell

$k = $y -bxor $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^   ^^       ^^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^        ^ punctuation.definition.variable.powershell
#       ^^^^^ keyword.operator.bitwise.powershell

$k = $y -xor $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^   ^^      ^^ variable.other.readwrite.powershell
#  ^ keyword.operator.assignment.powershell
#    ^       ^ punctuation.definition.variable.powershell
#       ^^^^ keyword.operator.logical.powershell

$a -icontains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^ keyword.operator.comparison.powershell
#             ^ punctuation.definition.variable.powershell
#^            ^^ variable.other.readwrite.powershell
$a -ccontains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^ keyword.operator.comparison.powershell
#             ^ punctuation.definition.variable.powershell
#^            ^^ variable.other.readwrite.powershell
$a -iNotContains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^^^^ keyword.operator.comparison.powershell
#                ^ punctuation.definition.variable.powershell
#^               ^^ variable.other.readwrite.powershell
$a -cNotContains $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^^^^ keyword.operator.comparison.powershell
#                ^ punctuation.definition.variable.powershell
#^               ^^ variable.other.readwrite.powershell
$a -cmatch $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.variable.powershell
#^         ^^ variable.other.readwrite.powershell
$x -iMatch $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.variable.powershell
#^         ^^ variable.other.readwrite.powershell
$x -iNotMatch $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^^^^^ keyword.operator.comparison.powershell
#             ^ punctuation.definition.variable.powershell
#^            ^^ variable.other.readwrite.powershell
$a -iLike $b
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^ keyword.operator.comparison.powershell
#         ^ punctuation.definition.variable.powershell
#^        ^^ variable.other.readwrite.powershell
$b -cLike $c
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#  ^^^^^^ keyword.operator.comparison.powershell
#         ^ punctuation.definition.variable.powershell
#^        ^^ variable.other.readwrite.powershell

"hey" -cgt "Hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"Hey" -igt "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"hey" -cge "Hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"Hey" -ige "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"HEY" -clt "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"HEY" -ilt "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"HEY" -cle "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell

"HEY" -ile "hey"
#<- string.quoted.double.powershell punctuation.definition.string.begin.powershell
#^^^^      ^^^^^ string.quoted.double.powershell
#   ^          ^ punctuation.definition.string.end.powershell
#     ^^^^ keyword.operator.comparison.powershell
#          ^ punctuation.definition.string.begin.powershell
