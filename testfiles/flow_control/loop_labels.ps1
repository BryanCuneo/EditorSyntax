# SYNTAX TEST v1 "source.powershell" "Loop labels"
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_break#using-a-labeled-break-in-a-loop

:loop foreach ($x in $y)
#<----- entity.name.tag.looplabel.declaration.powershell
#    ^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell
{
    break loop
}

    :loop FoReAcH ($x in $y)
#   ^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^     ^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell
    {
        BrEaK loop
    }

& { :blockLoop while ($true) { break blockLoop } }
#   ^^^^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell

& {    :blockLoop WhIlE ($true) { BrEaK blockLoop } }
#      ^^^^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^^^^          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell

$( :subExpLoop for ($i = 0; $i -lt 10; $i++) { break subExpLoop } )
#  ^^^^^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell

$(    :subExpLoop FoR ($i = 0; $i -lt 10; $i++) { BrEaK subExpLoop } )
#     ^^^^^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^^^           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell


$Global:test = $true ; :doLoop do { break doLoop } until (-not $Global:test)
#                      ^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^^^^^^^^^^^^^^^^^^^^       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell

$Global:test = $true ;    :doLoop DO { BrEaK doLoop } until (-not $Global:test)
#                         ^^^^^^^ entity.name.tag.looplabel.declaration.powershell
#^^^^^^^^^^^^^^^^^^^^^^^^^       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ! entity.name.tag.looplabel.declaration.powershell
