$data modify storage temp data.weapon.name set value "$(name)$(next)"
data modify storage temp data.weapon.next set string storage temp data.weapon.gname[0] 0
data remove storage temp data.weapon.gname[0]

execute if data storage temp data.weapon.gname[0] run return run function lzenl:weapons/generate/c_ats with storage temp data.weapon

data remove storage temp data.weapon.next
data remove storage temp data.weapon.gname