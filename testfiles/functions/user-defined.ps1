# SYNTAX TEST v1 "source.powershell" "User-defined functions"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions

functioN MyFunction{ }
#<-------- storage.type.powershell
#        ^^^^^^^^^^ entity.name.function.powershell
#                  ^ punctuation.section.braces.begin.powershell
#                  ^^^ meta.scriptblock.powershell
#                    ^ punctuation.section.braces.end.powershell

function My-Function         { }
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                            ^ punctuation.section.braces.begin.powershell
#                            ^^^ meta.scriptblock.powershell
#                              ^ punctuation.section.braces.end.powershell

Function My.Function{ }
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                   ^ punctuation.section.braces.begin.powershell
#                   ^^^ meta.scriptblock.powershell
#                     ^ punctuation.section.braces.end.powershell

function My-Function.Other{ }
#<-------- storage.type.powershell
#        ^^^^^^^^^^^^^^^^^ entity.name.function.powershell
#                         ^ punctuation.section.braces.begin.powershell
#                         ^^^ meta.scriptblock.powershell
#                           ^ punctuation.section.braces.end.powershell

function Some.other.function{ }
#<-------- storage.type.powershell
#        ^^^^^^^^^^^^^^^^^^^ entity.name.function.powershell
#                           ^ punctuation.section.braces.begin.powershell
#                           ^^^ meta.scriptblock.powershell
#                             ^ punctuation.section.braces.end.powershell

FUNCTION MyFunction2 { }
#<-------- storage.type.powershell
#        ^^^^^^^^^^^ entity.name.function.powershell
#                    ^ punctuation.section.braces.begin.powershell
#                    ^^^ meta.scriptblock.powershell
#                      ^ punctuation.section.braces.end.powershell

function New-File { }
#<-------- storage.type.powershell
#        ^^^^^^^^ entity.name.function.powershell
#                 ^ punctuation.section.braces.begin.powershell
#                 ^^^ meta.scriptblock.powershell
#                   ^ punctuation.section.braces.end.powershell

function New-File ($Name) { }
#<-------- storage.type.powershell
#        ^^^^^^^^ entity.name.function.powershell
#                  ^ punctuation.definition.variable.powershell
#                  ^^^^^ variable.other.readwrite.powershell
#                         ^ punctuation.section.braces.begin.powershell
#                         ^^^ meta.scriptblock.powershell
#                           ^ punctuation.section.braces.end.powershell

function NewFile($Name) { }
#<-------- storage.type.powershell
#        ^^^^^^^ entity.name.function.powershell
#               ^ punctuation.section.group.begin.powershell
#                ^ punctuation.definition.variable.powershell
#                ^^^^^ variable.other.readwrite.powershell
#                     ^ punctuation.section.group.end.powershell
#                       ^ punctuation.section.braces.begin.powershell
#                       ^^^ meta.scriptblock.powershell
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
#                           ^^^^^^ variable.other.readwrite.powershell
#                                 ^ punctuation.section.group.end.powershell
#                                   ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    $roman | c:\users\Me\Documents\Programming\F#\test.exe $roman
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#   ^ punctuation.definition.variable.powershell
#    ^^^^^ variable.other.readwrite.powershell
#          ^ keyword.operator.other.powershell
#                                               ^ punctuation.definition.comment.powershell
#                                                       ^  ^ comment.line.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

function Verb-Noun
#<- meta.function.powershell storage.type.powershell
#^^^^^^^ storage.type.powershell
#        ^^^^^^^^^ meta.function.powershell entity.name.function.powershell
{
#<- punctuation.section.braces.begin.powershell

    Param
#   ^^^^^ keyword.control.powershell
    (
#   ^ meta.scriptblock.powershell punctuation.section.group.begin.powershell
        # Param1 help description
#       ^ punctuation.definition.comment.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell comment.line.powershell
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
#                                                  ^ keyword.operator.assignment.powershell
#                                                    ^ punctuation.definition.variable.powershell
#                                                    ^^^^^ constant.language.powershell
#                                                         ^ keyword.operator.other.powershell
                   ValueFromRemainingArguments=$false,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                             ^ keyword.operator.assignment.powershell
#                                              ^ punctuation.definition.variable.powershell
#                                              ^^^^^^ constant.language.powershell
#                                                    ^ keyword.operator.other.powershell
                   Position=0,
#                  ^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                          ^ keyword.operator.assignment.powershell
#                           ^ constant.numeric.integer.powershell
#                            ^ keyword.operator.other.powershell
                   SupportsPaging,
#                  ^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                ^ keyword.operator.other.powershell
                   ParameterSetName = 'Parameter Set 1')]
#                  ^^^^^^^^^^^^^^^^ meta.scriptblock.powershell meta.group.simple.subexpression.powershell meta.attribute.powershell
#                                   ^ keyword.operator.assignment.powershell
#                                     ^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                      ^ punctuation.section.group.end.powershell
#                                                       ^ punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^ punctuation.section.bracket.begin.powershell
#        ^ support.function.attribute.powershell
#                              ^ punctuation.section.group.begin.powershell
#                               ^ punctuation.section.group.end.powershell
#                                ^ punctuation.section.bracket.end.powershell
        [ValidateNotNull()]
#       ^ punctuation.section.bracket.begin.powershell
#        ^ support.function.attribute.powershell
#                       ^ punctuation.section.group.begin.powershell
#                        ^ punctuation.section.group.end.powershell
#                         ^ punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^ punctuation.section.bracket.begin.powershell
#        ^ support.function.attribute.powershell
#                              ^ punctuation.section.group.begin.powershell
#                               ^ punctuation.section.group.end.powershell
#                                ^ punctuation.section.bracket.end.powershell
        [ValidateCount(0,5)]
#       ^ punctuation.section.bracket.begin.powershell
#        ^ support.function.attribute.powershell
#                     ^ punctuation.section.group.begin.powershell
#                      ^ constant.numeric.integer.powershell
#                       ^ keyword.operator.other.powershell
#                        ^ constant.numeric.integer.powershell
#                         ^ punctuation.section.group.end.powershell
#                          ^ punctuation.section.bracket.end.powershell
        [ValidateSet("sun", "moon", "earth")]
#       ^ punctuation.section.bracket.begin.powershell
#        ^ support.function.attribute.powershell
#                   ^ punctuation.section.group.begin.powershell
#                    ^^^^ string.quoted.double.powershell
#                         ^ keyword.operator.other.powershell
#                           ^^^^^^ string.quoted.double.powershell
#                                 ^ keyword.operator.other.powershell
#                                   ^^^^^^^ string.quoted.double.powershell
#                                          ^ punctuation.section.group.end.powershell
#                                           ^ punctuation.section.bracket.end.powershell
        [Alias("p1")]
#       ^ punctuation.section.bracket.begin.powershell
#         ^ support.function.attribute.powershell
#             ^ punctuation.section.group.begin.powershell
#              ^^^^ string.quoted.double.powershell
#                  ^ punctuation.section.group.end.powershell
#                   ^ punctuation.section.bracket.end.powershell
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

#region syntax_test_Function.ps1

using module Microsoft.PowerShell.Management
#<----- keyword.control.using.powershell
#     ^^^^^^ keyword.other.powershell
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.powershell

<#
#<-- comment.block.powershell punctuation.definition.comment.block.begin.powershell
    .Synopsis
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Short description
#       ^^^^^^^^^^^^^^^^^ comment.block.powershell
    .DESCRIPTION
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Long description
#       ^^^^^^^^^^^^^^^^ comment.block.powershell
    .EXAMPLE
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Example of how to use this cmdlet
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .EXAMPLE
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Another example of how to use this cmdlet
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .INPUTS
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Inputs to this cmdlet (if any)
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .OUTPUTS
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        Output from this cmdlet (if any)
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .NOTES
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        General notes
#       ^^^^^^^^^^^^^ comment.block.powershell
    .COMPONENT
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        The component this cmdlet belongs to
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .ROLE
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        The role this cmdlet belongs to
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
    .FUNCTIONALITY
#   ^ comment.documentation.embedded.powershell constant.string.documentation.powershell
#    ^^^^^^^^^^^^^ comment.documentation.embedded.powershell keyword.operator.documentation.powershell
        The functionality that best describes this cmdlet
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell

    This should not be considered documentaton -> .role
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.block.powershell
#                                                 ^ ! constant.string.documentation.powershell
#                                                  ^^^^ ! keyword.operator.documentation.powershell
#>
#<-- comment.block.powershell punctuation.definition.comment.block.end.powershell
function Verb-Noun {
#<-------- meta.function.powershell storage.type.powershell
#        ^^^^^^^^^ meta.function.powershell entity.name.function.powershell
#                  ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    [CmdletBinding(DefaultParameterSetName  = 'Parameter Set 1',
#   ^ punctuation.section.bracket.begin.powershell
#     ^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^ variable.parameter.attribute.powershell
#                                           ^ keyword.operator.assignment.powershell
#                                             ^ string.quoted.single.powershell
                   SupportsShouldProcess    = $true,
#                  ^^^^^^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                           ^ keyword.operator.assignment.powershell
#                                             ^ punctuation.definition.variable.powershell
#                                              ^^^^ constant.language.powershell
                   PositionalBinding        = $false,
#                  ^^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                           ^ keyword.operator.assignment.powershell
#                                             ^ punctuation.definition.variable.powershell
#                                              ^^^^^ constant.language.powershell
                   HelpUri                  = 'http://www.microsoft.com/',
#                  ^^^^^^^ variable.parameter.attribute.powershell
#                                           ^ keyword.operator.assignment.powershell
#                                              ^ string.quoted.single.powershell
                   ConfirmImpact            = 'Medium')]
#                  ^^^^^^^^^^^^^ variable.parameter.attribute.powershell
                #                           ^ keyword.operator.assignment.powershell
                #                              ^ string.quoted.single.powershell
                #                                     ^ punctuation.section.group.end.powershell
#                                                      ^ punctuation.section.bracket.end.powershell
    [Alias()]
#   ^^^^^^^^^ meta.attribute.powershell
#   ^ punctuation.section.bracket.begin.powershell
#     ^ support.function.attribute.powershell
#         ^ punctuation.section.group.begin.powershell
#          ^ punctuation.section.group.end.powershell
#           ^ punctuation.section.bracket.end.powershell
    [OutputType([String])]
#   ^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#   ^ punctuation.section.bracket.begin.powershell
#    ^^^^^^^^^^ support.function.attribute.powershell
#              ^ punctuation.section.group.begin.powershell
#               ^ punctuation.section.bracket.begin.powershell
#                ^^^^^^ storage.type.powershell
#                      ^ punctuation.section.bracket.end.powershell
#                       ^ punctuation.section.group.end.powershell
#                        ^ punctuation.section.bracket.end.powershell
    Param(
#   ^^^^^ keyword.control.powershell
#        ^ punctuation.section.group.begin.powershell
        # Param1 help description
#       ^ punctuation.definition.comment.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(Mandatory=$true,
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^ variable.parameter.attribute.powershell
#                           ^ keyword.operator.assignment.powershell
#                            ^ punctuation.definition.variable.powershell
#                             ^^^^ constant.language.powershell
#                                 ^ keyword.operator.other.powershell
                   ValueFromPipeline=$true,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#                  ^^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                   ^ keyword.operator.assignment.powershell
#                                    ^ punctuation.definition.variable.powershell
#                                     ^^^^ constant.language.powershell
#                                         ^ keyword.operator.other.powershell
                   ValueFromPipelineByPropertyName = $true,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                                  ^ keyword.operator.assignment.powershell
#                                                    ^ punctuation.definition.variable.powershell
#                                                     ^^^^ constant.language.powershell
#                                                         ^ keyword.operator.other.powershell
                   ValueFromRemainingArguments=$false,
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                             ^ keyword.operator.assignment.powershell
#                                              ^ punctuation.definition.variable.powershell
#                                               ^^^^^ constant.language.powershell
#                                                    ^ keyword.operator.other.powershell
                   Position=0,
#                  ^^^^^^^^^^^ meta.attribute.powershell
#                  ^^^^^^^^ variable.parameter.attribute.powershell
#                          ^ keyword.operator.assignment.powershell
#                           ^ constant.numeric.integer.powershell
#                            ^ keyword.operator.other.powershell
                   ParameterSetName = 'Parameter Set 1')]
#                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#                  ^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                   ^ keyword.operator.assignment.powershell
#                                     ^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                      ^ punctuation.section.group.end.powershell
#                                                       ^ punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                              ^ punctuation.section.group.begin.powershell
#                               ^ punctuation.section.group.end.powershell
#                                ^ punctuation.section.bracket.end.powershell
        [ValidateNotNull()]
#       ^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                       ^ punctuation.section.group.begin.powershell
#                        ^ punctuation.section.group.end.powershell
#                         ^ punctuation.section.bracket.end.powershell
        [ValidateNotNullOrEmpty()]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                              ^ punctuation.section.group.begin.powershell
#                               ^ punctuation.section.group.end.powershell
#                                ^ punctuation.section.bracket.end.powershell
        [ValidateCount(0,5)]
#       ^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^ support.function.attribute.powershell
#                     ^ punctuation.section.group.begin.powershell
#                      ^ constant.numeric.integer.powershell
#                       ^ keyword.operator.other.powershell
#                        ^ constant.numeric.integer.powershell
#                         ^ punctuation.section.group.end.powershell
#                          ^ punctuation.section.bracket.end.powershell
        [ValidateSet("sun", "moon", "earth")]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^ support.function.attribute.powershell
#                   ^ punctuation.section.group.begin.powershell
#                    ^^^^ string.quoted.double.powershell
#                         ^ keyword.operator.other.powershell
#                           ^^^^^^ string.quoted.double.powershell
#                                 ^ keyword.operator.other.powershell
#                                   ^^^^^^^ string.quoted.double.powershell
#                                          ^ punctuation.section.group.end.powershell
#                                           ^ punctuation.section.bracket.end.powershell
        [Alias("p1")]
#       ^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^ support.function.attribute.powershell
#             ^ punctuation.section.group.begin.powershell
#              ^^^^ string.quoted.double.powershell
#                  ^ punctuation.section.group.end.powershell
#                   ^ punctuation.section.bracket.end.powershell
        $Param1,
#       ^ punctuation.definition.variable.powershell
#        ^^^^^^ variable.other.readwrite.powershell
#              ^ keyword.operator.other.powershell

        # Param2 help description
#       ^ punctuation.definition.comment.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(ParameterSetName='Parameter Set 1')]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                  ^ keyword.operator.assignment.powershell
#                                   ^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                    ^ punctuation.section.group.end.powershell
#                                                     ^ punctuation.section.bracket.end.powershell
        [AllowNull()]
#       ^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^ punctuation.section.group.end.powershell
#                   ^ punctuation.section.bracket.end.powershell
        [AllowEmptyCollection()]
#       ^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                            ^ punctuation.section.group.begin.powershell
#                             ^ punctuation.section.group.end.powershell
#                              ^ punctuation.section.bracket.end.powershell
        [AllowEmptyString()]
#       ^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                        ^ punctuation.section.group.begin.powershell
#                         ^ punctuation.section.group.end.powershell
#                          ^ punctuation.section.bracket.end.powershell
        [ValidateScript({$true})]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^ support.function.attribute.powershell
#                      ^ punctuation.section.group.begin.powershell
#                       ^ meta.scriptblock.powershell meta.attribute.powershell
#                        ^ punctuation.definition.variable.powershell
#                         ^^^^ meta.scriptblock.powershell constant.language.powershell
#                             ^ meta.scriptblock.powershell meta.attribute.powershell
#                              ^ punctuation.section.group.end.powershell
#                               ^ punctuation.section.bracket.end.powershell
        [ValidateRange(0,5)]
#       ^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^ support.function.attribute.powershell
#                     ^ punctuation.section.group.begin.powershell
#                      ^ constant.numeric.integer.powershell
#                       ^ keyword.operator.other.powershell
#                        ^ constant.numeric.integer.powershell
#                         ^ punctuation.section.group.end.powershell
#                          ^ punctuation.section.bracket.end.powershell
        [int32]
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^ storage.type.powershell
#             ^ punctuation.section.bracket.end.powershell
        $Param2,
#       ^ punctuation.definition.variable.powershell
#        ^^^^^^ variable.other.readwrite.powershell
#              ^ keyword.operator.other.powershell

        # Param3 help description
#       ^ comment.line.powershell punctuation.definition.comment.powershell
#         ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(ParameterSetName='Another Parameter Set')]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                  ^ keyword.operator.assignment.powershell
#                                   ^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                          ^ punctuation.section.group.end.powershell
#                                                           ^ punctuation.section.bracket.end.powershell
        [ValidatePattern("[a-z]*")]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                       ^ punctuation.section.group.begin.powershell
#                        ^^^^^^^^ string.quoted.double.powershell
#                                ^ punctuation.section.group.end.powershell
#                                 ^ punctuation.section.bracket.end.powershell
        [ValidateLength(0,15)]
#       ^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^ support.function.attribute.powershell
#                      ^ punctuation.section.group.begin.powershell
#                       ^ ^^ constant.numeric.integer.powershell
#                        ^ keyword.operator.other.powershell
#                           ^ punctuation.section.group.end.powershell
#                            ^ punctuation.section.bracket.end.powershell
        [String]
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^ storage.type.powershell
#              ^ punctuation.section.bracket.end.powershell
        $Param3,
#       ^ punctuation.definition.variable.powershell
#        ^^^^^^ variable.other.readwrite.powershell
#              ^ keyword.operator.other.powershell

        # Param4 help description
#       ^ punctuation.definition.comment.powershell
#       ^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(ParameterSetName='Parameter Set 1')]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                  ^ keyword.operator.assignment.powershell
#                                   ^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                    ^ punctuation.section.group.end.powershell
#                                                     ^ punctuation.section.bracket.end.powershell
        [ValidateScript({Test-Path $_})] #Make sure cmdlets don't break highlighting
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^ support.function.attribute.powershell
#                      ^ punctuation.section.group.begin.powershell
#                       ^ meta.scriptblock.powershell
#                        ^^^^^^^^^ meta.scriptblock.powershell support.function.powershell
#                                  ^ meta.scriptblock.powershell punctuation.definition.variable.powershell
#                                   ^ meta.scriptblock.powershell support.variable.automatic.powershell
#                                    ^ meta.scriptblock.powershell
#                                     ^ punctuation.section.group.end.powershell
#                                      ^ punctuation.section.bracket.end.powershell
        [string]
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^ storage.type.powershell
#              ^ punctuation.section.bracket.end.powershell
        $Param4,
#       ^ punctuation.definition.variable.powershell
#        ^^^^^^ variable.other.readwrite.powershell
#              ^ keyword.operator.other.powershell

        # Param5 help description
#       ^ comment.line.powershell punctuation.definition.comment.powershell
#         ^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [Parameter(ParameterSetName='Parameter Set 1')]
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^ support.function.attribute.powershell
#                 ^ punctuation.section.group.begin.powershell
#                  ^^^^^^^^^^^^^^^^ variable.parameter.attribute.powershell
#                                  ^ keyword.operator.assignment.powershell
#                                   ^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                    ^ punctuation.section.group.end.powershell
#                                                     ^ punctuation.section.bracket.end.powershell
        [ValidatePattern('(?=^.{1,254}$)(^(?:(?!\d+\.)[a-zA-Z0-9_\-]{1,63}\.?)+(?:[a-zA-Z]{2,})$)')] # this regex shouldn't break highlighting
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.attribute.powershell
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^^^^^^^^^^ support.function.attribute.powershell
#                       ^ punctuation.section.group.begin.powershell
#                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.single.powershell
#                                                                                                 ^ punctuation.section.group.end.powershell
#                                                                                                  ^ punctuation.section.bracket.end.powershell
#                                                                                                    ^ punctuation.definition.comment.powershell
#                                                                                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.powershell
        [string]
#       ^ punctuation.section.bracket.begin.powershell
#        ^^^^^^ storage.type.powershell
#              ^ punctuation.section.bracket.end.powershell
        $Param5
#       ^ punctuation.definition.variable.powershell
#       ^^^^^^^ variable.other.readwrite.powershell
        )
#       ^ punctuation.section.group.end.powershell

    Begin
#   ^^^^^ keyword.control.powershell
    {
    }
    Process {
#   ^^^^^^^ keyword.control.powershell
        if ($pscmdlet.ShouldProcess("Target", "Operation")) {
#       ^^ keyword.control.powershell
#          ^ punctuation.section.group.begin.powershell
#           ^ punctuation.definition.variable.powershell
#           ^^^^^^^^^ support.variable.automatic.powershell
#                    ^^^^^^^^^^^^^^ variable.other.member.powershell
#                                  ^ punctuation.section.group.begin.powershell
#                                                        ^ punctuation.section.group.end.powershell
#                                                         ^ punctuation.section.group.end.powershell
        }
    }
    End {
#   ^^^ keyword.control.powershell

    }
    Clean {
#   ^^^^^ keyword.control.powershell
    }
}

#endregion
