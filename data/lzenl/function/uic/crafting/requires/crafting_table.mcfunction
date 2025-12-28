##
 # makeshift_axe.mcfunction
 # 
 #
 # Created by .
##

item replace entity @p[distance=..1] player.cursor from entity @n[tag=crafting_ui,type=donkey] horse.13


execute store result score #req1 .data run clear @p[distance=..1] #planks 0
execute store result score #req2 .data run clear @p[distance=..1] leather 0
execute store result score #req3 .data run clear @p[distance=..1] shears[item_name="Small Iron Shears"] 0
execute store result score #req4 .data run clear @p[distance=..1] iron_axe[item_name="Small Iron Hammer"] 0
execute store result score #req5 .data run clear @p[distance=..1] iron_axe[item_name="Small Iron Saw"] 0



scoreboard players set #return .data 1
execute unless score #req1 .data matches 1.. run scoreboard players set #return .data 0
execute unless score #req2 .data matches 1.. run scoreboard players set #return .data 0
execute unless score #req3 .data matches 2.. run scoreboard players set #return .data 0
execute unless score #req4 .data matches 2.. run scoreboard players set #return .data 0
execute unless score #req5 .data matches 2.. run scoreboard players set #return .data 0
execute unless score #return .data matches 1 run function lzenl:uic/crafting/fail
execute unless score #return .data matches 1 run return fail

return 1