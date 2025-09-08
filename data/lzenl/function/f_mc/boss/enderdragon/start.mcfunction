##
 # start.mcfunction
 # 
 #
 # Created by .
##

kill @e[type=minecraft:armor_stand,distance=..1000]
kill @e[type=minecraft:area_effect_cloud,distance=..1000]

function lzenl:animations/ender_dragon/_/stop

function lzenl:animations/ender_dragon/_/delete


execute positioned 0 0 0 positioned over motion_blocking facing entity @p eyes rotated ~ 0 positioned ^ ^25 ^-100 run function lzenl:animations/ender_dragon/_/create

execute positioned 0.0 0.0 0.0 positioned over motion_blocking run fill ~5 ~-20 ~5 ~-5 ~ ~-5 air replace end_portal


execute positioned 0 0 0 positioned over motion_blocking facing entity @p eyes rotated ~ 0 positioned ^ ^ ^20 positioned over motion_blocking run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"ash"},NoGravity:1b,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200,Tags:["dragon_center"]}


execute positioned 0 0 0 positioned over motion_blocking facing entity @p eyes rotated ~ 0 positioned ^ ^25 ^-100 run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dragon_tp"],Invisible:1b,Marker:1b,Small:1b}

execute as @n[type=armor_stand,tag=dragon_tp,distance=..1000] at @s facing entity @n[type=area_effect_cloud,tag=dragon_center,distance=..300] eyes run rotate @s ~90 ~-30



function lzenl:animations/ender_dragon/a/spawn/play


playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 100 0
playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 100 1



kill @s[type=!player]
