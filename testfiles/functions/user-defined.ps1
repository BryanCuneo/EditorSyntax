# SYNTAX TEST v1 "source.powershell" "User-defined functions"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions

functioN MyFunction{}
#<-------- storage.type.powershell
#        ^^^^^^^^^^ entity.name.function.powershell
#                  ^ punctuation.section.braces.begin.powershell
#                   ^ punctuation.section.braces.end.powershell
function My-Function         {}
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                            ^ punctuation.section.braces.begin.powershell
#                             ^ punctuation.section.braces.end.powershell
Function My.Function{}
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                   ^ punctuation.section.braces.begin.powershell
#                    ^ punctuation.section.braces.end.powershell
function My-Function.Other{}
#<-------- storage.type.powershell
#        ^^^^^^^^^^^^^^^^^ entity.name.function.powershell
#                         ^ punctuation.section.braces.begin.powershell
#                          ^ punctuation.section.braces.end.powershell
function Some.other.function{}
#<-------- storage.type.powershell
#        ^^^^^^^^^^^^^^^^^^^ entity.name.function.powershell
#                           ^ punctuation.section.braces.begin.powershell
#                            ^ punctuation.section.braces.end.powershell
FUNCTION MyFunction2 {}
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                    ^ punctuation.section.braces.begin.powershell
#                     ^ punctuation.section.braces.end.powershell
function New-File { }
#<-------- storage.type.powershell
#        ^^^^^^^^ entity.name.function.powershell
#                 ^ punctuation.section.braces.begin.powershell
#                   ^ punctuation.section.braces.end.powershell
function New-File ($Name) { }
#<-------- storage.type.powershell
#        ^^^^^^^^ entity.name.function.powershell
#                         ^ punctuation.section.braces.begin.powershell
#                           ^ punctuation.section.braces.end.powershell
function NewFile($Name) { }
#<-------- storage.type.powershell
#        ^^^^^^^ entity.name.function.powershell
#               ^ punctuation.section.group.begin.powershell
#                ^ punctuation.definition.variable.powershell
#                   ^ variable.other.readwrite.powershell
#                     ^ punctuation.section.group.end.powershell
#                       ^ punctuation.section.braces.begin.powershell
#                         ^ punctuation.section.braces.end.powershell

# Note that the # in the path should highlight as a comment!
function Test-Drive([string]$roman) {
#<-------- storage.type.powershell
#        ^^^^^^^^^^ entity.name.function.powershell
#                  ^ punctuation.section.group.begin.powershell
#                   ^ punctuation.section.bracket.begin.powershell
#                    ^^^^^^ storage.type.powershell
#                          ^ punctuation.section.bracket.end.powershell
#                           ^ punctuation.definition.variable.powershell
#                            ^ variable.other.readwrite.powershell
#                                 ^ punctuation.section.group.end.powershell
#                                   ^ punctuation.section.braces.begin.powershell
    $roman | c:\users\Me\Documents\Programming\F#\test.exe $roman
#   ^ punctuation.definition.variable.powershell
#    ^ variable.other.readwrite.powershell
#          ^ keyword.operator.other.powershell
#                                               ^ punctuation.definition.comment.powershell
#                                                       ^  ^ comment.line.powershell
}
#<- punctuation.section.braces.end.powershell

function Verb-Noun
#<- meta.function.powershell storage.type.powershell
#^^^^^^^ storage.type.powershell
#        ^^^^^^^^^ meta.function.powershell entity.name.function.powershell
{
#<- punctuation.section.braces.begin.powershell

    Param
#   ^^^^^ keyword.control.powershell
    (
#   ^ punctuation.section.group.begin.powershell
        # Param1 help description
#       ^ punctuation.definition.comment.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(Mandatory=$true,
#       ^ punctuation.section.bracket.begin.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^ variable.parameter.attribute.powershell
#                           ^ keyword.operator.assignment.powershell
#                            ^ punctuation.definition.variable.powershell
#                            ^^^^^constant.language.powershell
#                                 ^ keyword.operator.other.powershell
                   ValueFromPipeline=$true,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                   ^ keyword.operator.assignment.powershell
#                                    ^ punctuation.definition.variable.powershell
#                                    ^^^^^ constant.language.powershell
#                                         ^ keyword.operator.other.powershell
                   ValueFromPipelineByPropertyName = $true,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                                  ^ meta.attribute.powershell keyword.operator.assignment.powershell
#                                                    ^ meta.attribute.powershell punctuation.definition.variable.powershell
#                                                    ^^^^^ meta.attribute.powershell constant.language.powershell
#                                                         ^ meta.attribute.powershell keyword.operator.other.powershell
                   ValueFromRemainingArguments=$false,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                             ^ meta.attribute.powershell keyword.operator.assignment.powershell
#                                              ^ meta.attribute.powershell punctuation.definition.variable.powershell
#                                              ^^^^^^ meta.attribute.powershell constant.language.powershell
#                                                    ^ meta.attribute.powershell keyword.operator.other.powershell
                   Position=0,
#                  ^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                          ^ meta.attribute.powershell keyword.operator.assignment.powershell
#                           ^ meta.attribute.powershell constant.numeric.integer.powershell
#                            ^ meta.attribute.powershell keyword.operator.other.powershell
                   SupportsPaging,
#                  ^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                ^ meta.attribute.powershell keyword.operator.other.powershell
                   ParameterSetName = 'Parameter Set 1')]
#                  ^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                   ^ meta.attribute.powershell keyword.operator.assignment.powershell
#                                     ^^^^^^^^^^^^^^^^^ meta.attribute.powershell string.quoted.single.powershell
#                                                      ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                                                       ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#        ^ meta.attribute.powershell support.function.attribute.powershell
#                              ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#                               ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                                ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [ValidateNotNull()]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#        ^ meta.attribute.powershell support.function.attribute.powershell
#                       ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#                        ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                         ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#        ^ meta.attribute.powershell support.function.attribute.powershell
#                              ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#                               ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                                ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [ValidateCount(0,5)]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#        ^ meta.attribute.powershell support.function.attribute.powershell
#                     ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#                      ^ meta.attribute.powershell constant.numeric.integer.powershell
#                       ^ meta.attribute.powershell keyword.operator.other.powershell
#                        ^ meta.attribute.powershell constant.numeric.integer.powershell
#                         ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                          ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [ValidateSet("sun", "moon", "earth")]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#        ^ meta.attribute.powershell support.function.attribute.powershell
#                   ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#                    ^^^^ meta.attribute.powershell string.quoted.double.powershell
#                         ^ meta.attribute.powershell keyword.operator.other.powershell
#                           ^^^^^^ meta.attribute.powershell string.quoted.double.powershell
#                                 ^ meta.attribute.powershell keyword.operator.other.powershell
#                                   ^^^^^^^ meta.attribute.powershell string.quoted.double.powershell
#                                          ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                                           ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        [Alias("p1")]
#       ^ meta.attribute.powershell punctuation.section.bracket.begin.powershell
#         ^ meta.attribute.powershell support.function.attribute.powershell
#             ^ meta.attribute.powershell punctuation.section.group.begin.powershell
#              ^^^^ meta.attribute.powershell string.quoted.double.powershell
#                  ^ meta.attribute.powershell punctuation.section.group.end.powershell
#                   ^ meta.attribute.powershell punctuation.section.bracket.end.powershell
        $Param1
#       ^ punctuation.definition.variable.powershell
#       ^^^^^^^ variable.other.readwrite.powershell
    )
#   ^ punctuation.section.group.end.powershell

    # Do Something....
#   ^ punctuation.definition.comment.powershell
#   ^^^^^^^^^^^^^^^^^^ comment.line.powershell
}
#<- punctuation.section.braces.end.powershell
