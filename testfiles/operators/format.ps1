# SYNTAX TEST v1 "source.powershell" "The format operator"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_operators?#format-operator--f

"{0:N2}" -f $a
#<-------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^ ! meta.scriptblock.powershell
#     ^ ! punctuation.section.braces.end.powershell
#      ^ punctuation.definition.string.end.powershell
#        ^^ keyword.operator.string-format.powershell
#           ^ punctuation.definition.variable.powershell
#           ^^ variable.other.readwrite.powershell

"{0:D8}" -f $a
#<-------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^ ! meta.scriptblock.powershell
#     ^ ! punctuation.section.braces.end.powershell
#      ^ punctuation.definition.string.end.powershell
#        ^^ keyword.operator.string-format.powershell
#           ^^ variable.other.readwrite.powershell

"{0:C2}" -f $a
#<-------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^ ! meta.scriptblock.powershell
#     ^ ! punctuation.section.braces.end.powershell
#      ^ punctuation.definition.string.end.powershell
#        ^^ keyword.operator.string-format.powershell
#           ^^ variable.other.readwrite.powershell

"{0:P0}" -f $a
#<-------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^ ! meta.scriptblock.powershell
#     ^ ! punctuation.section.braces.end.powershell
#      ^ punctuation.definition.string.end.powershell
#        ^^ keyword.operator.string-format.powershell
#           ^^ variable.other.readwrite.powershell

"{0:X0}" -f $a
#<-------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^ ! meta.scriptblock.powershell
#     ^ ! punctuation.section.braces.end.powershell
#      ^ punctuation.definition.string.end.powershell
#        ^^ keyword.operator.string-format.powershell
#           ^^ variable.other.readwrite.powershell

(1.11).ToString("#.#")
#<- punctuation.section.group.begin.powershell
#^^^^ constant.numeric.integer.powershell
#    ^               ^ punctuation.section.group.end.powershell
#              ^ punctuation.section.group.begin.powershell
#               ^ punctuation.definition.string.begin.powershell
#               ^^^^^ string.quoted.double.powershell
#                ^^^ ! punctuation.definition.comment.powershell comment.line.powershell
#                   ^ punctuation.definition.string.end.powershell

"{1,10} {0,10} {2,10:x}" -f "First", "Second", 255
#<- punctuation.definition.string.begin.powershell
#<------------------------ string.quoted.double.powershell
#^      ^      ^ ! punctuation.section.braces.begin.powershell
#^^^^^^  ^^^^^^ ^^^^^^^ ! meta.scriptblock.powershell
# ^ ^^   ^ ^^   ^ ^^ ! constant.numeric.integer.powershell
#  ^      ^      ^ ! keyword.operator.other.powershell
#     ^      ^        ^ ! punctuation.section.braces.end.powershell
#                      ^          ^         ^ punctuation.definition.string.end.powershell
#                        ^^ keyword.operator.string-format.powershell
#                           ^        ^ punctuation.definition.string.begin.powershell
#                           ^^^^^^^  ^^^^^^^^ string.quoted.double.powershell
#                                  ^         ^ keyword.operator.other.powershell
#                                              ^^^ constant.numeric.integer.powershell

("{0,6}" -f 4.99), ("{0,6:##.00}" -f 15.9)
#<- meta.group.simple.subexpression.powershell punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^  ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#^^^^^^^            ^^^^^^^^^^^^^ string.quoted.double.powershell
#     ^                        ^ ! punctuation.section.braces.end.powershell
#        ^^                       ^^ keyword.operator.string-format.powershell
#           ^^^                      ^^^ constant.numeric.integer.powershell
#               ^                        ^ punctuation.section.group.end.powershell
#                ^ keyword.operator.other.powershell
#                  ^ punctuation.section.group.begin.powershell
#                         ^^ ! punctuation.definition.comment.powershell
#                         ^^^^^^^^^^^^^^^^ ! comment.line.powershell

"{0:R}" -f (1mb/2.0)
#<------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^ ! meta.scriptblock.powershell
#    ^ ! punctuation.section.braces.end.powershell
#       ^^ keyword.operator.string-format.powershell
#          ^ punctuation.section.group.begin.powershell
#          ^^^^^^^^^ meta.group.simple.subexpression.powershell
#           ^   ^^^ constant.numeric.integer.powershell
#            ^^ keyword.other.powershell
#              ^ keyword.operator.assignment.powershell
#                  ^ punctuation.section.group.end.powershell

"{0:00.0}" -f 4.12341234
#<---------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^ ! meta.scriptblock.powershell
# ^ ^^ ^ ! constant.numeric.integer.powershell
#       ^ ! punctuation.section.braces.end.powershell
#          ^^ keyword.operator.string-format.powershell
#             ^^^^^^^^^^ constant.numeric.integer.powershell

"{0:##.#}" -f 4.12341234
#<---------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^ ! meta.scriptblock.powershell
# ^ ! constant.numeric.integer.powershell
#   ^^ ^ ! punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#       ^ ! punctuation.section.braces.end.powershell
#          ^^ keyword.operator.string-format.powershell
#             ^^^^^^^^^^ constant.numeric.integer.powershell

"{0:#,#.#}" -f 1234.121234
#<----------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^ ! meta.scriptblock.powershell
# ^ ! constant.numeric.integer.powershell
#   ^ ^ ^ ! punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#        ^ ! punctuation.section.braces.end.powershell
#           ^^ keyword.operator.string-format.powershell
#              ^^^^^^^^^^^ constant.numeric.integer.powershell

"{0:##,,.000}" -f 1048576
#<-------------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^       ^^^ ! constant.numeric.integer.powershell
#^^^^^^^^^^^^ ! meta.scriptblock.powershell
#   ^^ ! punctuation.definition.comment.powershel
#   ^^^^^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#           ^ ! punctuation.section.braces.end.powershell
#            ^ punctuation.definition.string.end.powershell
#              ^^ keyword.operator.string-format.powershell
#                 ^^^^^^^ constant.numeric.integer.powershell

"{0:##.#E000}" -f 2.71828
#<-------------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^ ! meta.scriptblock.powershell
# ^      ^^^ ! constant.numeric.integer.powershell
#   ^^ ^ ! punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#           ^ ! punctuation.section.braces.end.powershell
#            ^ punctuation.definition.string.end.powershell
#              ^^ keyword.operator.string-format.powershell
#                 ^^^^^^^ constant.numeric.integer.powershell

"{0:#.00'##'}" -f 2.71828
#<-------------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^ ! meta.scriptblock.powershell
# ^   ^^ ! constant.numeric.integer.powershell
#    ^     ^^ ! punctuation.definition.comment.powershell
#    ^^^^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#           ^ ! punctuation.section.braces.end.powershell
#            ^ punctuation.definition.string.end.powershell
#              ^^ keyword.operator.string-format.powershell
#                 ^^^^^^^ constant.numeric.integer.powershell

"{0:POS;NEG;ZERO}" -f -14
#<------------------ string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^ ! meta.scriptblock.powershell
#               ^ ! punctuation.section.braces.end.powershell
#                ^ punctuation.definition.string.end.powershell
#                  ^^ keyword.operator.string-format.powershell
#                     ^^^ constant.numeric.integer.powershell

"{0:$## Please}" -f 14
#<---------------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^ ! meta.scriptblock.powershell
# ^ ! constant.numeric.integer.powershell
#   ^ ! keyword.operator.string-format.powershell
#    ^^ ! punctuation.definition.comment.powershell
#    ^^^^^^^^^^^^^^^^^ ! comment.line.powershell
#             ^ ! punctuation.section.braces.end.powershell
#              ^ punctuation.definition.string.end.powershell
#                ^^ keyword.operator.string-format.powershell
#                   ^^ constant.numeric.integer.powershell

"{0,-8:P1}" -f 1.75
#<----------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^ ! meta.scriptblock.powershell
# ^ ^^ ! constant.numeric.integer.powershell
#        ^ ! punctuation.section.braces.end.powershell
#         ^ punctuation.definition.string.end.powershell
#           ^^ keyword.operator.string-format.powershell
#              ^^^^ constant.numeric.integer.powershell

"{0,10:N3}{1,10:N3}{2,10:N3}{3,10:N3}" -f 0.2, 0.3, 0.45, 0.91
#<-------------------------------------- string.quoted.double.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! meta.scriptblock.powershell
#^ ^^      ^ ^^     ^ ^^     ^ ^^ ! constant.numeric.integer.powershell
#        ^        ^        ^        ^ ! punctuation.section.braces.end.powershell
#         ^        ^        ^ ! punctuation.section.braces.begin.powershell
#                                    ^ punctuation.definition.string.end.powershell
#                                      ^^ keyword.operator.string-format.powershell
#                                         ^^^  ^^^  ^^^^  ^^^^ constant.numeric.integer.powershell

'{0:00000.000}' -f 7.125
#<--------------- string.quoted.single.powershell
#<- punctuation.definition.string.begin.powershell
#^ ! punctuation.section.braces.begin.powershell
#^^^^^^^^^^^^^ ! meta.scriptblock.powershell
# ^ ^^^^^^^^^ ! constant.numeric.integer.powershell
#            ^ ! punctuation.section.braces.end.powershell
#             ^ punctuation.definition.string.end.powershell
#               ^^ keyword.operator.string-format.powershell
#                  ^^^^^ constant.numeric.integer.powershell
