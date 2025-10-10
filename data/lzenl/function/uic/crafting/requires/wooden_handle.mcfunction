item replace entity @p[distance=..1] player.cursor from entity @n[tag=crafting_ui,type=donkey] horse.3
execute store result score #req1 .data run clear @p[distance=..1] stick 0
execute store result score #req2 .data run clear @p[distance=..1] leather 0
execute store result score #req3 .data run clear @p[distance=..1] string 0
scoreboard players set #return .data 1
execute unless score #req1 .data matches 1.. run scoreboard players set #return .data 0
execute unless score #req2 .data matches 1.. run scoreboard players set #return .data 0
execute unless score #req3 .data matches 1.. run scoreboard players set #return .data 0
execute unless score #return .data matches 1 run function lzenl:uic/crafting/fail
execute unless score #return .data matches 1 run return fail
return 1