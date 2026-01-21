execute store result score #random .data run random value 1..12

execute if score #random .data matches 1..6 run return run function lzenl:weapons/generate/n1a
execute if score #random .data matches 7 run return run data modify storage temp data.weapon.gname append value "ai"
execute if score #random .data matches 8 run return run data modify storage temp data.weapon.gname append value "y"
execute if score #random .data matches 9 run return run data modify storage temp data.weapon.gname append value "e"
execute if score #random .data matches 10 run return run data modify storage temp data.weapon.gname append value "i"
execute if score #random .data matches 11 run return run data modify storage temp data.weapon.gname append value "a"
execute if score #random .data matches 12 run return run data modify storage temp data.weapon.gname append value "ua"