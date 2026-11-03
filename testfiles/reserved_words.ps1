# SYNTAX TEST v1 "source.powershell" "Data redirection operators"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_reserved_words


configuration Crazyness {
#<------------- storage.type.powershell
#             ^^^^^^^^^ entity.name.function.powershell
#                       ^ meta.scriptblock.powershell punctuation.section.braces.begin.powershell
    Node Whatever {
#   ^^^^^^^^^^^^^^^ meta.scriptblock.powershell
#                 ^ punctuation.section.braces.begin.powershell
    }
#   ^ meta.scriptblock.powershell punctuation.section.braces.end.powershell
}
#<- meta.scriptblock.powershell punctuation.section.braces.end.powershell

<#
assembly
base
begin
break
catch
class
command
continue
data
define (*)
do
dynamicparam
else
elseif
end
enum
exit
filter
finally
for
foreach
from (*)
function
hidden
if
in
inlinescript
interface
module
namespace
parallel
param
private
process
public
return
sequence
static
switch
throw
trap
try
type
until
using
var (*)
while
workflow
#>
