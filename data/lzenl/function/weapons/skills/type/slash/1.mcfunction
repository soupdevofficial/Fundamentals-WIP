
execute store result score #rotat .data run random value 1..10
execute at @s as @n[type=!#not_mob,distance=..2] unless score @s .id = @n[distance=..2,type=item_display,limit=1] .id at @s run function lzenl:weapons/skills/type/slash/2


#execute at @s run particle crit ~ ~ ~ 0.0 0.0 0.0 0 0 normal @a[distance=..20]