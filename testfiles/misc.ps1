# SYNTAX TEST v1 "source.powershell" "Miscellaneous that don't yet have a good home"

Test-Function -Class ClassName
#              ^^^^^ ! storage.type.powershell

New-Object -TypeName System.Diagnostics.Process
#                                       ^^^^^^^ ! keyword.control.powershell

New-Object -TypeName System.Data
#                           ^^^^ ! keyword.control.powershell

@("any","array","has").where({ $_.Length -gt 3 })
#<- keyword.other.array.begin.powershell
#^ punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^ meta.group.array-expression.powershell
#                    ^ punctuation.section.group.end.powershell
#                      ^^^^^ keyword.control.powershell
#                           ^^^^^^^^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#                            ^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                              ^ support.variable.automatic.powershell punctuation.definition.variable.powershell
#                                ^^^^^^^ variable.other.member.powershell
#                                        ^^^ keyword.operator.comparison.powershell
#                                            ^ constant.numeric.integer.powershell

@("any","array","has").where{ $_.Length -gt 3 }
#<- keyword.other.array.begin.powershell
#^ punctuation.section.group.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^ meta.group.array-expression.powershell
#                    ^ punctuation.section.group.end.powershell
#                      ^^^^^ keyword.control.powershell
#                           ^^^^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                             ^ support.variable.automatic.powershell punctuation.definition.variable.powershell
#                               ^^^^^^^ variable.other.member.powershell
#                                       ^^^ keyword.operator.comparison.powershell
#                                           ^ constant.numeric.integer.powershell

$file = join-path $env:SystemDrive "$([System.io.path]::GetRandomFileName()).ps1"
#<- punctuation.definition.variable.powershell
#            ^ support.function.powershell
#                  ^ support.variable.drive.powershell
#                         ^ variable.other.readwrite.powershell
#                                   ^ string.quoted.double.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                        ^ storage.type.powershell

workflow w1 { }
#<-------- storage.type.powershell
#        ^^ entity.name.function.powershell
#           ^ punctuation.section.braces.begin.powershell
#           ^^^ meta.scriptblock.powershell
#             ^ punctuation.section.braces.end.powershell

Workflow work { sequence { } }
#<-------- storage.type.powershell
#        ^^^^ entity.name.function.powershell
#             ^ punctuation.section.braces.begin.powershell
#             ^^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#               ^^^^^^^^ keyword.control.powershell
#                        ^ punctuation.section.braces.begin.powershell
#                          ^ punctuation.section.braces.end.powershell
#                            ^ punctuation.section.braces.end.powershell

"When you call a method: $( get-number | %{ invoke-command $( [string]::format("Like (this{0})","what?") ) $var } )"
#                        ^ string.quoted.double.powershell punctuation.definition.substatement.powershell punctuation.section.embedded.substatement.begin.powershell
#                                                                                                          ^ punctuation.definition.variable.powershell
#                                      ^ keyword.operator.other.powershell
#                                                           ^                 ^ meta.group.complex.subexpression.powershell punctuation.section.group.begin.powershell
#                                                                ^ storage.type.powershell
#                                                                                                      ^ ^ meta.group.complex.subexpression.powershell punctuation.section.group.end.powershell

"This is the DebugPreference variable: $DebugPreference"
#<- punctuation.definition.string.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                      ^^^^^^^^^^^^^^^^ variable.language.powershell
#                                                      ^ punctuation.definition.string.end.powershell

$ConfirmPreference $DebugPreference $ErrorActionPreference $ErrorView $FormatEnumerationLimit $InformationPreference $LogCommandHealthEvent $LogCommandLifecycleEvent $LogEngineHealthEvent $LogEngineLifecycleEvent $LogProviderHealthEvent $LogProviderLifecycleEvent $MaximumAliasCount $MaximumDriveCount $MaximumErrorCount $MaximumFunctionCount $MaximumHistoryCount $MaximumVariableCount $OFS $OutputEncoding $PSDefaultParameterValues $PSEmailServer $PSModuleAutoLoadingPreference $PSModuleAutoloadingPreference $PSSenderInfo $PSSessionApplicationName $PSSessionConfigurationName $PSSessionOption $ProgressPreference $VerbosePreference $WarningPreference $WhatIfPreference
#^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^ ^^^^ ^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^ variable.language.powershell

$PSCulture $PSDebugContext $PSItem
#^^^^^^^^^ ^^^^^^^^^^^^^^^ ^^^^^^^ support.variable.automatic.powershell
