# SYNTAX TEST v1 "source.powershell" "Read-only variables automatically defined/maintained by PowerShell"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables

$$, $?, $^, $_
#<- punctuation.definition.variable.powershell
#<~- support.variable.automatic.powershell
#^ ! punctuation.definition.variable.powershell
#   ^   ^   ^ punctuation.definition.variable.powershell
#   ^^  ^^  ^^ support.variable.automatic.powershell



$args, $Error, $foreach
#<- punctuation.definition.variable.powershell
#<----- support.variable.automatic.powershell
#      ^       ^ punctuation.definition.variable.powershell
#      ^^^^^^  ^^^^^^^^ support.variable.automatic.powershell

<#
$ConsoleFileName
$EnabledExperimentalFeatures
$Event
$EventArgs
$EventSubscriber
$ExecutionContext
$false
$HOME
$Host
$input
$IsCoreCLR
$IsLinux
$IsMacOS
$IsWindows
$LASTEXITCODE
$Matches
$MyInvocation
$NestedPromptLevel
$null
$PID
$PROFILE
$PSBoundParameters
$PSCmdlet
$PSCommandPath
$PSCulture
$PSDebugContext
$PSEdition
$PSHOME
$PSItem
$PSScriptRoot
$PSSenderInfo
$PSUICulture
$PSVersionTable
$PWD
$Sender
$ShellId
$StackTrace
$switch
$this
$true
#>
