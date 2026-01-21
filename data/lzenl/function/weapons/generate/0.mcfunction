data remove storage temp data.weapon
data merge storage temp {data:{weapon:{next:"",name:""}}}
function lzenl:weapons/generate/n0
function lzenl:weapons/generate/n1
function lzenl:weapons/generate/n2
function lzenl:weapons/generate/n3
function lzenl:weapons/generate/n4
data modify storage temp data.weapon.gname append value "="
function lzenl:weapons/generate/c_ats with storage minecraft:temp data.weapon

function lzenl:weapons/generate/1

function lzenl:weapons/generate/test with storage temp data.weapon

#tellraw @p {"nbt":"data.weapon","storage":"temp","bold":true}