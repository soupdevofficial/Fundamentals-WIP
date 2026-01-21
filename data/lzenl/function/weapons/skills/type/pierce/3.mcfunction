##
 # 3.mcfunction
 # 
 #
 # Created by .
##
execute at @s as @n[type=!#not_mob,distance=..2] unless score @s .id = @n[distance=..2,type=item_display,limit=1] .id run function lzenl:weapons/skills/dmg with entity @n[distance=..3,type=item_display,tag=skill.set] item.components.minecraft:custom_data.weapon

execute at @s run particle crit ~ ~ ~ 0.0 0.0 0.0 0 0 normal @a[distance=..20]