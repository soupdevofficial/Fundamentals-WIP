execute as @n[distance=..3,type=item_display,tag=skill.set] positioned ^ ^ ^ run function lzenl:weapons/skills/particle
execute as @n[distance=..3,type=item_display,tag=skill.set] positioned ^ ^ ^0.125 run function lzenl:weapons/skills/particle
scoreboard players remove #particle .data 1


execute at @s as @n[type=!#not_mob,distance=..2,tag=!hit] unless score @s .id = @n[distance=..2,type=item_display,limit=1] .id run tag @s add hit

execute if score #particle .data matches 1.. positioned ^ ^ ^0.25 run return run function lzenl:weapons/skills/type/slash/3




execute at @s as @e[type=!#not_mob,distance=..5,tag=hit,limit=3] run function lzenl:weapons/skills/dmg with entity @n[distance=..3,type=item_display,tag=skill.set] item.components.minecraft:custom_data.weapon

scoreboard players set @e[distance=..3,type=item_display,tag=skill.set] skills.range 0