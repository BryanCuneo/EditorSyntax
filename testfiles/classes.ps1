# SYNTAX TEST v1 "source.powershell" "Classes"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_classes

class Vehicle {
#<- storage.type.powershell
#     ^^^^^^^ entity.name.function
#             ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Vehicle() { }
#   ^^^^^^^^^^^^ meta.scriptblock.powershell
#          ^ punctuation.section.group.begin.powershell
#          ^^ meta.group.simple.subexpression.powershell
#           ^ punctuation.section.group.end.powershell
#             ^ punctuation.section.braces.begin.powershell
#             ^^^ meta.scriptblock.powershell
#               ^ punctuation.section.braces.end.powershell
    Vehicle([string]$Owner) {
#   ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#          ^ punctuation.section.group.begin.powershell
#           ^ punctuation.section.bracket.begin.powershell
#          ^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#             ^^^^^ storage.type.powershell
#                  ^ punctuation.section.bracket.end.powershell
#                   ^ punctuation.definition.variable.powershell
#                   ^^^^^^ variable.other.readwrite.powershell
#                         ^ punctuation.section.group.end.powershell
#                           ^ punctuation.section.braces.begin.powershell
        $this.Owner = $Owner
#       ^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#       ^             ^ punctuation.definition.variable.powershell
#       ^^^^^^^^^^^ support.variable.automatic.powershell
#            ^^^^^^ variable.other.member.powershell
#                   ^ keyword.operator.assignment.powershell
#                     ^^^^^^ variable.other.readwrite.powershell
    }
#   ^ meta.scriptblock.powershell punctuation.section.braces.end.powershell

    [int]$Mileage
#   ^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^ storage.type.powershell
#       ^ punctuation.section.bracket.end.powershell
#        ^ punctuation.definition.variable.powershell
#        ^^^^^^^^ variable.other.readwrite.powershell
    [int]$Age
#   ^^^^^^^^^ meta.scriptblock.powershell
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^ storage.type.powershell
#       ^ punctuation.section.bracket.end.powershell
#        ^ punctuation.definition.variable.powershell
#         ^ variable.other.readwrite.powershell
    [string]$Owner
#   ^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^^^^ storage.type.powershell
#          ^ punctuation.section.bracket.end.powershell
#           ^ punctuation.definition.variable.powershell
#            ^ variable.other.readwrite.powershell

    [void]Drive([int]$NumberOfMiles) {
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^           ^ punctuation.section.bracket.begin.powershell
#    ^^^^        ^^^ storage.type.powershell
#        ^          ^ punctuation.section.bracket.end.powershell
#              ^ punctuation.section.group.begin.powershell
#              ^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#                    ^ punctuation.definition.variable.powershell
#                    ^^^^^^^^^^^^^^ variable.other.readwrite.powershell
#                                  ^ punctuation.section.group.end.powershell
#                                    ^ punctuation.section.braces.begin.powershell
        $this.Mileage += $NumberOfMiles
#       ^                ^ punctuation.definition.variable.powershell
#        ^^^^^^^^^^^^ support.variable.automatic.powershell
#            ^^^^^^^^ variable.other.member.powershell
#                     ^^ keyword.operator.assignment.powershell
#                        ^^^^^^^^^^^^^^ variable.other.readwrite.powershell
    }
#   ^ meta.scriptblock.powershell punctuation.section.braces.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell
