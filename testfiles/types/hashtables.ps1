# SYNTAX TEST v1 "source.powershell" "Hashtables"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_splatting

$hashtable = @{
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^ variable.other.readwrite.powershell
#          ^ keyword.operator.assignment.powershell
#            ^ meta.hashtable.powershell keyword.other.hashtable.begin.powershell
#             ^ meta.hashtable.powershell punctuation.section.braces.begin.powershell
    Name = 'Name'
#   ^^^^^^^^^^^^^ meta.hashtable.powershell
#   ^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#        ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#          ^ punctuation.definition.string.begin.powershell
#          ^^^^^^ string.quoted.single.powershell
#               ^ punctuation.definition.string.end.powershell
    Something = $else
#   ^^^^^^^^^^^^^^^^^ meta.hashtable.powershell
#   ^^^^^^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#             ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#               ^ punctuation.definition.variable.powershell
#               ^^^^^ variable.other.readwrite.powershell
    Number = 16
#   ^^^^^^^^^^^ meta.hashtable.powershell
#   ^^^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#          ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#            ^^ constant.numeric.integer.powershell
    From = "Hello, $world!"
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.hashtable.powershell
#   ^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#        ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#          ^ punctuation.definition.string.begin.powershell
#           ^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                  ^ punctuation.definition.variable.powershell
#                  ^^^^^^ variable.other.readwrite.powershell
#                         ^ punctuation.definition.string.end.powershell
    Hash = [ordered]@{
#   ^^^^^^^^^^^^^^^^^^ meta.hashtable.powershell
#   ^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#        ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#          ^ punctuation.section.bracket.begin.powershell
#           ^^^^^^^ meta.hashtable.powershell
#                  ^ punctuation.section.bracket.end.powershell
#                   ^ keyword.other.hashtable.begin.powershell
#                    ^ punctuation.section.braces.begin.powershell
        hello = "world"
#       ^^^^^^^^^^^^^^^ meta.hashtable.powershell
#       ^^^^^ meta.hashtable.assignment.powershell variable.other.readwrite.powershell
#             ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#               ^ punctuation.definition.string.begin.powershell
#               ^^^^^^^ string.quoted.double.powershell
#                     ^ punctuation.definition.string.end.powershell
    }
#   ^ meta.hashtable.powershell punctuation.section.braces.end.powershell
}
#<- meta.hashtable.powershell punctuation.section.braces.end.powershell

$hashtable = @{Name = 'Name'; Something = $else; Number = 16; From = "Hello, $world!"; Hash = [ordered]@{ hello = "world" } }
#<- variable.other.readwrite.powershell punctuation.definition.variable.powershell
#^^^^^^^^^ variable.other.readwrite.powershell
#          ^ keyword.operator.assignment.powershell
#            ^                                                                                         ^ keyword.other.hashtable.begin.powershell
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.hashtable.powershell
#             ^^^^^           ^^^^^^^^^          ^^^^^^       ^^^^                     ^^^^               ^^^^^ ! support.function.badname.powershell
#             ^                                                                                         ^ punctuation.section.braces.begin.powershell
#                   ^                   ^               ^          ^                        ^                   ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#                           ^                  ^            ^                        ^ punctuation.terminator.statement.powershell
#                                                                                                                         ^ ^ punctuation.section.braces.end.powershell

<#
    Fix ordered
#>
