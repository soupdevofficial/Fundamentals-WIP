##
 # main_10sek.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/main/main_5sek 5s replace

execute as @e[tag=bloomery_wet,type=block_display] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery_wet/drying
execute as @e[tag=bloomery_dry,type=block_display] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/bloomery_dry/wetting

execute as @e[tag=wet_clay_bucket,type=armor_stand] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_bucket_wet/drying
execute as @e[tag=dry_clay_bucket,type=armor_stand] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_bucket_dry/wetting

execute as @e[tag=fundamentals.block.wet_clay_mold,type=block_display] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_mold_wet/dry
execute as @e[tag=fundamentals.block.dry_clay_mold,type=block_display] at @s if entity @p[distance=..100] run function lzenl:f_mc/blocks/clay_mold_dry/wetting





execute at @e[tag=beast_heart,type=block_display] if entity @p[distance=..25] run function lzenl:f_mc/blocks/beast_heart/pulse
