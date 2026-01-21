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
execute at @e[tag=small_campfire,tag=lit,distance=..100] if entity @p[distance=..100] run particle flame ~ ~0.1 ~ 0.1 0.2 0.1 0.001 2 force @a



execute as @a run function lzenl:f_mc/on_players


#swopper
execute as @e[type=block_display,tag=swopper_root] at @s positioned ~ ~-1 ~ if entity @p[distance=..100] run function lzenl:f_mc/blocks/swopper/check_activate



#bloomeries
#break check
execute as @e[type=block_display,tag=bloomery] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery/break_check
execute as @e[type=block_display,tag=bloomery_dry] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery_dry/break_check
execute as @e[type=block_display,tag=bloomery_wet] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery_wet/break_check
#ui/progress
execute as @e[type=donkey,tag=bloomery_ui] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery/progress
execute as @e[type=donkey,tag=bloomery_ui] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery/check_ui

#clay buckets
execute as @e[type=armor_stand,tag=clay_bucket] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_bucket/break_check
execute as @e[type=armor_stand,tag=wet_clay_bucket] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_bucket_wet/break_check
execute as @e[type=armor_stand,tag=dry_clay_bucket] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_bucket_dry/break_check
####

#rift
execute at @e[tag=fd_rift,type=marker] unless entity @e[distance=..20,type=enderman,tag=hollow] as @e[type=item_display,tag=rift_item,distance=..20] at @s run function lzenl:f_mc/gameplay/rift/fill

execute in the_end positioned 0 0 0 run function lzenl:f_mc/main/in_end

#lasso
execute as @e[type=item,tag=lasso,tag=check] at @s unless function lzenl:check/vehicle run function lzenl:f_mc/used_items/lead/check

#music
execute as @a at @s run function lzenl:f_mc/main/music


#skills
execute as @e[tag=skill.set,tag=s.move,type=item_display] at @s if entity @p[distance=..100] run function lzenl:weapons/skills/skill/root