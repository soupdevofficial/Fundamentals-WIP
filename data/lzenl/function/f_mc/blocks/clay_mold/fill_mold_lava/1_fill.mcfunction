##
 # fill.mcfunction
 # 
 #
 # Created by .
##




particle lava ~ ~ ~ 0.0 0.0 0.0 0.1 3
playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~



scoreboard players operation @s .id = @n[distance=..0.3,tag=clay_bucket,type=item_display] .id

scoreboard players set @s active 50

execute if score @s .data matches 1 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/sword
execute if score @s .data matches 2 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/axe
execute if score @s .data matches 3 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/pickaxe

execute if score @s .data matches 4 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/hoe
execute if score @s .data matches 5 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/shears
execute if score @s .data matches 6 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/hammer

execute if score @s .data matches 7 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/saw
execute if score @s .data matches 8 on vehicle on passengers run function lzenl:f_mc/blocks/clay_mold/fill_mold_lava/ingot

execute as @n[distance=..0.3,tag=clay_bucket,type=item_display] run function lzenl:f_mc/blocks/clay_bucket/empty_out






