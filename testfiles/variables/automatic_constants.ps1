# SYNTAX TEST v1 "source.powershell" "Constant variables automatically defined by PowerShell"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_automatic_variables

$ExecutionContext, $Host, $HOME, $PID, $PSHOME, $PSVersionTable, $ShellId
#^^^^^^^^^^^^^^^^   ^^^^   ^^^^   ^^^   ^^^^^^   ^^^^^^^^^^^^^^   ^^^^^^^ variable.other.constant.powershell
# <- punctuation.definition.variable.powershell
#                  ^      ^      ^     ^        ^                ^ punctuation.definition.variable.powershell

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
