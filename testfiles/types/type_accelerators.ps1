# SYNTAX TEST v1 "source.powershell" "Type accelerators"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_type_accelerators

[adsi]
#<- punctuation.section.bracket.begin.powershell
#^^^^ storage.type.powershell
#    ^ punctuation.section.bracket.end.powershell

[adsisearcher[]]
#<- punctuation.section.bracket.begin.powershell
#^^^^^^^^^^^^ storage.type.powershell
#            ^ punctuation.section.bracket.begin.powershell
#             ^^ punctuation.section.bracket.end.powershell

[array]
#<- punctuation.section.bracket.begin.powershell
#^^^^^ storage.type.powershell
#     ^ punctuation.section.bracket.end.powershell

[System.Collections.Generic.Dictionary[[System.String, mscorlib],[System.Management.Automation.ParameterMetadata,System.Management.Automation]]]
#<- punctuation.section.bracket.begin.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  ^^^^^^^^^^^^^  ^^^^^^^^   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ storage.type.powershell
#                                     ^^                         ^ punctuation.section.bracket.begin.powershell
#                                                              ^                                                                             ^^^ punctuation.section.bracket.end.powershell
#                                                    ^          ^                                               ^ keyword.operator.other.powershell

[System.Array+SZArrayEnumerator]
#<- punctuation.section.bracket.begin.powershell
# ^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^ storage.type.powershell
#            ^ keyword.operator.assignment.powershell
#                              ^ punctuation.section.bracket.end.powershell

[bigint]::MinValue
#<- punctuation.section.bracket.begin.powershell
#^^^^^^ storage.type.powershell
#      ^ punctuation.section.bracket.end.powershell

[datetime]::Parse('2016/09/21')
#<- punctuation.section.bracket.begin.powershell
#^^^^^^^^ storage.type.powershell
#        ^ punctuation.section.bracket.end.powershell
#                ^ punctuation.section.group.begin.powershell
#                ^^^^^^^^^^^^^^ meta.group.simple.subexpression.powershell
#                 ^ punctuation.definition.string.begin.powershell
#                 ^^^^^^^^^^^^ string.quoted.single.powershell
#                            ^ punctuation.definition.string.end.powershell
#                             ^ punctuation.section.group.end.powershell

<#
Alias
AllowEmptyCollection
AllowEmptyString
AllowNull
ArgumentCompleter
ArgumentCompletions
bool
byte
char
cimclass
cimconverter
ciminstance
CimSession
cimtype
CmdletBinding
cultureinfo
decimal
double
DscLocalConfigurationManager
DscProperty
DscResource
ExperimentAction
Experimental
ExperimentalFeature
float
guid
hashtable
initialsessionstate
int
int16
int32
int64
ipaddress
IPEndpoint
long
mailaddress
NoRunspaceAffinity
NullString
ObjectSecurity
ordered
OutputType
Parameter
PhysicalAddress
powershell
psaliasproperty
pscredential
pscustomobject
PSDefaultValue
pslistmodifier
psmoduleinfo
psnoteproperty
psobject
psprimitivedictionary
pspropertyexpression
psscriptmethod
psscriptproperty
PSTypeNameAttribute
psvariable
psvariableproperty
ref
regex
runspace
runspacefactory
sbyte
scriptblock
securestring
semver
short
single
string
SupportsWildcards
switch
timespan
type
uint
uint16
uint32
uint64
ulong
uri
ushort
ValidateCount
ValidateDrive
ValidateLength
ValidateNotNull
ValidateNotNullOrEmpty
ValidateNotNullOrWhiteSpace
ValidatePattern
ValidateRange
ValidateScript
ValidateSet
ValidateTrustedData
ValidateUserDrive
version
void
WildcardPattern
wmi
wmiclass
wmisearcher
X500DistinguishedName
X509Certificate
xml
#>
