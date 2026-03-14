##
 # main.mcfunction
 # f_mc
 #
 # Created by lzenl.
##

schedule function lzenl:f_mc/main/main_5sek 5s append
schedule function lzenl:f_mc/main/main_1sek 1s append

execute unless score #season .data matches 1..5 run scoreboard players set #season .data 1

execute store result score #day .data run time query minecraft:day
execute if score #day .data matches 1 run function lzenl:f_mc/season/count

execute as @e[tag=scroll_table_root] at @s if entity @p[distance=..100] run function lzenl:scroll_table/check_content
execute at @e[tag=fundamentals.block.small_campfire,tag=lit,distance=..100] if entity @p[distance=..100] run particle flame ~ ~0.2 ~ 0.1 0.2 0.1 0 1 force @a



execute as @a run function lzenl:f_mc/on_players

#clay bucket
execute as @e[tag=fundamentals.block.clay_bucket_root] at @s if entity @p[distance=..50] run function lzenl:f_mc/blocks/clay_bucket/check

#swopper
execute as @e[type=block_display,tag=swopper_root] at @s positioned ~ ~-1 ~ if entity @p[distance=..100] run function lzenl:f_mc/blocks/swopper/check_activate


#rift
execute at @e[tag=fd_rift,type=marker] unless entity @e[distance=..20,type=enderman,tag=hollow] as @e[type=item_display,tag=rift_item,distance=..20] at @s run function lzenl:f_mc/gameplay/rift/fill

execute in the_end positioned 0 0 0 run function lzenl:f_mc/main/in_end

#lasso
execute as @e[type=item,tag=lasso,tag=check] at @s unless function lzenl:check/vehicle run function lzenl:f_mc/used_items/lead/check

#music
execute as @a at @s run function lzenl:f_mc/main/music


#skills
execute as @e[tag=skill.set,tag=s.move,type=item_display] at @s if entity @p[distance=..100] run function lzenl:weapons/skills/skill/root