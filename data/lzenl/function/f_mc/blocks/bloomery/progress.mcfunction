##
 # progress.mcfunction
 # 
 #
 # Created by .
##


execute as @a[distance=..12] if items entity @s player.cursor #raw_ores[item_name="execute"] run function lzenl:f_mc/blocks/bloomery/stay_in

execute unless entity @s[scores={active=0}] run return fail
execute unless items entity @s horse.1 #raw_ores[minecraft:count=1] run return fail
execute unless items entity @s horse.11 #coals run return fail
execute unless entity @n[tag=lit,tag=small_campfire,distance=..0.5] run return fail


scoreboard players add @s active 1

item modify entity @s horse.11 {"function":"minecraft:set_count","count":-1,"add":true}


