execute store result score #random .data run random value 1..25
execute if score #random .data matches 16.. store result score #random .data run random value 1..14

execute if score #random .data matches 1..8 run return run function lzenl:weapons/generate/n4a
execute if score #random .data matches 9 run return run data modify storage temp data.weapon.gname append value "l"
execute if score #random .data matches 10 run return run data modify storage temp data.weapon.gname append value "nd"
execute if score #random .data matches 11 run return run data modify storage temp data.weapon.gname append value "rd"
execute if score #random .data matches 12 run return run data modify storage temp data.weapon.gname append value "th"
execute if score #random .data matches 13 run return run data modify storage temp data.weapon.gname append value "ch"
execute if score #random .data matches 14 run return run data modify storage temp data.weapon.gname append value "bur"
execute if score #random .data matches 15 run return run data modify storage temp data.weapon.gname append value ""