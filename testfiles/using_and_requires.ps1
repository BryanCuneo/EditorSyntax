# SYNTAX TEST v1 "source.powershell" "using and #Requires"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_using
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_requires

using namespace System.Management.Automation
#<----- keyword.control.using.powershell
#     ^^^^^^^^^ keyword.other.powershell
#               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ variable.parameter.powershell

#Requires -PSSnapin DiskSnapin -Version 1.2
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^^ keyword.other.powershell
#                   ^^^^^^^^^^ variable.parameter.powershell
#                              ^^^^^^^^ keyword.other.powershell
#                                       ^^^ variable.parameter.powershell

#Requires -PSSnapin DiskSnapin
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^^ keyword.other.powershell
#                   ^^^^^^^^^^ variable.parameter.powershell

#Requires -Version 3
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^ variable.parameter.powershell

#Requires -Version 3.0
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^ variable.parameter.powershell

#Requires -Version 3 -RunAsAdministrator
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^ variable.parameter.powershell
#                    ^^^^^^^^^^^^^^^^^^^ keyword.other.powershell

#Requires -RunAsAdministrator
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^^^^^^^^^^^^ keyword.other.powershell

#Requires -Modules PSWorkflow
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^ variable.parameter.powershell

#Requires -Modules PSWorkflow -ThisIsInvalid
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^ variable.parameter.powershell
#                             ^^^^^^^^^^^^^^ meta.requires.powershell

#Requires -Modules PSWorkflow, ActiveDirectory
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^ variable.parameter.powershell
#                              ^^^^^^^^^^^^^^^ variable.parameter.powershell

#Requires -Modules PSWorkflow,ActiveDirectory
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^ variable.parameter.powershell
#                             ^^^^^^^^^^^^^^^ variable.parameter.powershell

#Requires -ShellId MyLocalShell
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^^^ variable.parameter.powershell

#Requires -PSEdition Core
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^^^ keyword.other.powershell
#                    ^^^^ variable.parameter.powershell

#Requires -Assembly System
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^^ keyword.other.powershell
#                   ^^^^^^ variable.parameter.powershell

#Requires -Modules PSWorkflow, @{ModuleName="PSScheduledJob"; ModuleVersion="1.0.0.0"}
#<- punctuation.definition.comment.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.requires.powershell
#^^^^^^^^ keyword.control.requires.powershell
#         ^^^^^^^^ keyword.other.powershell
#                  ^^^^^^^^^^ variable.parameter.powershell
#                              ^ keyword.other.hashtable.begin.powershell
#                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.hashtable.powershell
#                               ^ punctuation.section.braces.begin.powershell
#                                ^^^^^^^^^^                   ^^^^^^^^^^^^ variable.other.readwrite.powershell ! support.function.badname.powershell
#                                          ^ meta.hashtable.assignment.powershell keyword.operator.assignment.powershell
#                                           ^^^^^^^^^^^^^^^^ string.quoted.double.powershell
#                                                           ^ punctuation.terminator.statement.powershell
#                                                                           ^^^^^^^^^ string.quoted.double.powershell
#                                                                                    ^ 	punctuation.section.braces.end.powershell
