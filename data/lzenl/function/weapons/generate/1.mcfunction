execute store result score #ghw.element .data run random value 1..5
execute store result storage temp data.weapon.element byte 1 run scoreboard players get #ghw.element .data

function lzenl:weapons/generate/e1
function lzenl:weapons/generate/e2

execute store result score #ghw.special .data run random value 1..20
execute store result storage temp data.weapon.sp int 1 run scoreboard players get #ghw.special .data

data modify storage temp data.weapon.dmg set value 15
data modify storage temp data.weapon.range set value 25
data modify storage temp data.weapon.speed set value "0.01"
data modify storage temp data.weapon.count set value 36
data modify storage temp data.weapon.recurs set value 999

execute store result score #ghw.type .data run random value 1..3
execute store result storage temp data.weapon.atype byte 1 run scoreboard players get #ghw.type .data
function lzenl:weapons/generate/e3

# strike = AOE circle     -> lower dmg, higher range
# slash = line side       -> highest dmg, lowest range 
# pierce = line straight  -> medium dmg, medium range

execute store result score #ghw.type2 .data run random value 1..5
execute store result storage temp data.weapon.skill byte 1 run scoreboard players get #ghw.type2 .data
function lzenl:weapons/generate/e4 with storage temp data.weapon
function lzenl:weapons/generate/e5 with storage temp data.weapon

## Launch ##
# radial
# -> normal dmg 
# -> count changes how many are spawned

# forward 
# -> high dmg 
# -> count changes how many are spawned

# chaining
# -> normal dmg (change rotation on hit) 
# -> count changes how often it can chain (increases range also per hit by 5)
# -> dash active tp player to enemy hit
##

## Stationary ##
# count changes how often it deals instances of dmg (low dmg)
# speed changes how fast the field depleates

# over time, range decreases -> dmg increases
# over time, range increases -> dmg decreases

# executes as every entity inside the range
##

#Count/Repeats (less, high dmg / more, low dmg)
#Speed (slow, high dmg / fast, low dmg)