title @s title ""
execute if score #fish.type .data matches 0..1 run title @s subtitle "Caught! Spam [Attack] Button!"
execute if score #fish.type .data matches 2 run title @s subtitle "Hooked! Spam [Attack] Button!"

playsound minecraft:entity.fishing_bobber.splash player @s ~ ~ ~ 0.1 1
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.1 1

summon interaction ~ ~ ~ {Silent:1b,width:0.25f,height:0.25f,Tags:["fundamentals.fishing.reel"]}
scoreboard players set @n[tag=fundamentals.fishing.reel,distance=..1] .data 25
scoreboard players operation @n[tag=fundamentals.fishing.reel,distance=..1] fishing = #fish.size .data
scoreboard players operation @n[tag=fundamentals.fishing.reel,distance=..1] fishing /= #10 .data
scoreboard players operation @n[tag=fundamentals.fishing.reel,distance=..1] .id = @s .id

attribute @s movement_speed modifier add fishing -999 add_multiplied_total
attribute @s explosion_knockback_resistance modifier add fishing 999 add_value
attribute @s jump_strength modifier add fishing -999 add_multiplied_total

attribute @s attack_speed modifier add fishing 2 add_multiplied_total

tag @s add fish.reeling
advancement revoke @s only lzenl:f_mc/fishing.loop