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

#region formerly in syntax_test_Class.ps1

using namespace system.management.automation
#<----- keyword.control.using.powershell
#     ^^^^^^^^^ keyword.other.powershell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.powershell

# Define a class
class TypeName
#<----- storage.type.powershell
#     ^^^^^^^^ entity.name.function
{
    # Property with validate set
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
    [ValidateSet("val1", "Val2")]
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^^^^^^^^^ support.function.attribute.powershell
#               ^ punctuation.section.group.begin.powershell
#                ^^^^^^ string.quoted.double.powershell
#                      ^ keyword.operator.other.powershell
#                        ^^^^^^ string.quoted.double.powershell
#                              ^ punctuation.section.group.end.powershell
#                               ^ punctuation.section.bracket.end.powershell
    [string] $P1
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^^^^ storage.type.powershell
#          ^ punctuation.section.bracket.end.powershell
#            ^ punctuation.definition.variable.powershell
#            ^^^ variable.other.readwrite.powershell

    # Static property
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^ comment.line.powershell
    static [hashtable] $P2
#   ^ storage.modifier.powershell
#          ^ punctuation.section.bracket.begin.powershell
#           ^^^^^^^^ storage.type.powershell
#                    ^ punctuation.section.bracket.end.powershell
#                      ^ punctuation.definition.variable.powershell
#                      ^^^ variable.other.readwrite.powershell

    # Hidden property does not show as result of Get-Member
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
    hidden [int] $P3
#   ^^^^^^ storage.modifier.powershell
#          ^ punctuation.section.bracket.begin.powershell
#           ^^^ storage.type.powershell
#              ^ punctuation.section.bracket.end.powershell
#                ^ punctuation.definition.variable.powershell
#                ^^^ variable.other.readwrite.powershell

    # Constructor
#   ^ punctuation.definition.comment.powershell
#     ^^^^^^^^^^^ comment.line.powershell
    TypeName ([string] $s) {
#            ^ punctuation.section.group.begin.powershell
#             ^ punctuation.section.bracket.begin.powershell
#              ^^^^^^ storage.type.powershell
#                    ^ punctuation.section.bracket.end.powershell
#                      ^ punctuation.definition.variable.powershell
#                      ^^ variable.other.readwrite.powershell
#                        ^ punctuation.section.group.end.powershell
        $this.P1 = $s
#       ^ punctuation.definition.variable.powershell
#       ^^^^^ support.variable.automatic.powershell
#            ^^^ variable.other.member.powershell
#                ^ keyword.operator.assignment.powershell
#                  ^ punctuation.definition.variable.powershell
#                  ^^ variable.other.readwrite.powershell
    }

    # Static method
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^ comment.line.powershell
    static [void] MemberMethod1([hashtable] $h) {
#   ^^^^^^ storage.modifier.powershell
#          ^ punctuation.section.bracket.begin.powershell
#           ^^^^ storage.type.powershell
#               ^ punctuation.section.bracket.end.powershell
#                              ^ punctuation.section.group.begin.powershell
#                               ^ punctuation.section.bracket.begin.powershell
#                                ^^^^^^^^^ storage.type.powershell
#                                         ^ punctuation.section.bracket.end.powershell
#                                           ^ punctuation.definition.variable.powershell
#                                           ^^ variable.other.readwrite.powershell
#                                             ^ punctuation.section.group.end.powershell
        [TypeName]::P2 = $h
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^ storage.type.powershell
#                ^ punctuation.section.bracket.end.powershell
#                      ^ keyword.operator.assignment.powershell
#                        ^ punctuation.definition.variable.powershell
#                        ^^ variable.other.readwrite.powershell
    }

    # Instance method
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^ comment.line.powershell
    [int] MemberMethod2([int] $i) {
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^ storage.type.powershell
#       ^ punctuation.section.bracket.end.powershell
#                      ^ punctuation.section.group.begin.powershell
#                       ^ punctuation.section.bracket.begin.powershell
#                        ^^^ storage.type.powershell
#                           ^ punctuation.section.bracket.end.powershell
#                             ^ punctuation.definition.variable.powershell
#                             ^^ variable.other.readwrite.powershell
#                               ^ punctuation.section.group.end.powershell
        $this.P3 = $i
#       ^ punctuation.definition.variable.powershell
#       ^^^^^ support.variable.automatic.powershell
#            ^^^ variable.other.member.powershell
#                ^ keyword.operator.assignment.powershell
#                  ^ punctuation.definition.variable.powershell
#                  ^^ variable.other.readwrite.powershell
        return $this.P3
#       ^^^^^^ keyword.control.powershell
#              ^ punctuation.definition.variable.powershell
#              ^^^^^ support.variable.automatic.powershell
#                   ^^^ variable.other.member.powershell
    }
}

#endregion
