# SYNTAX TEST v1 "source.powershell" "Data redirection operators"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/out-null
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/out-file
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/tee-object

notepad.exe > log.txt
#<----------- support.function.powershell
#           ^ keyword.operator.redirection.powershell

notepad.exe >> log.txt
#<----------- support.function.powershell
#           ^^ keyword.operator.redirection.powershell

notepad.exe 1> log.txt
#<----------- support.function.powershell
#           ^^ keyword.operator.redirection.powershell

notepad.exe 2>&1
#<----------- support.function.powershell
#           ^^^^ keyword.operator.redirection.powershell

notepad.exe 3>&1
#<----------- support.function.powershell
#           ^^^^ keyword.operator.redirection.powershell

notepad.exe 4>&1
#<----------- support.function.powershell
#           ^^^^ keyword.operator.redirection.powershell

notepad.exe 5>&1
#<----------- support.function.powershell
#           ^^^^ keyword.operator.redirection.powershell

notepad.exe 6>&1
#<----------- support.function.powershell
#           ^^^^ keyword.operator.redirection.powershell

notepad.exe *>&1
#<----------- support.function.powershell

notepad.exe 2>&1> log.txt
#<----------- support.function.powershell
#           ^^^^^ keyword.operator.redirection.powershell

notepad.exe > $null
#<----------- support.function.powershell
#           ^ keyword.operator.redirection.powershell
#             ^ punctuation.definition.variable.powershell
#             ^^^^^ constant.language.powershell

notepad.exe | Out-Null
#<----------- support.function.powershell
#           ^ keyword.operator.other.powershell
#             ^^^^^^^^ support.function.powershell

notepad.exe | Out-File -Encoding utf8NoBOM -FilePath log.txt
#<----------- support.function.powershell
#           ^ keyword.operator.other.powershell
#             ^^^^^^^^ support.function.powershell
#                      ^                   ^ keyword.operator.assignment.powershell

notepad.exe | Tee-Object -FilePath log.txt
#<----------- support.function.powershell
#           ^ keyword.operator.other.powershell
#             ^^^^^^^^^^ support.function.powershell
#                        ^ keyword.operator.assignment.powershell
