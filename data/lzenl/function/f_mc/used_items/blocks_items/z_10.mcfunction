
playsound item.flintandsteel.use master @a ~ ~ ~ 1 2 1

execute at @s anchored eyes run particle item{item:lever} ^ ^ ^1 0.1 0.1 0.1 0.1 5



execute if score #handed .data matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand { "function": "minecraft:set_damage", "damage": -0.1024, "add": true, "conditions": [] }
execute if score #handed .data matches 2 run item modify entity @s[gamemode=!creative] weapon.offhand { "function": "minecraft:set_damage", "damage": -0.1024, "add": true, "conditions": [] }
execute if score #handed .data matches 1 if items entity @s[gamemode=!creative] weapon.mainhand *[minecraft:damage=10] run return run item replace entity @s weapon.mainhand with air
execute if score #handed .data matches 2 if items entity @s[gamemode=!creative] weapon.offhand *[minecraft:damage=10] run return run item replace entity @s weapon.offhand with air
scoreboard players set #used .data 0
function lzenl:f_mc/used_items/return



execute store result score #random .data run random value 1..5
execute unless score #random .data matches 1 run return run playsound minecraft:item.bundle.insert player @a[distance=..10] ~ ~ ~ 1 2
execute align xyz run fill ~ ~ ~ ~ ~ ~ fire replace #replaceable