##
 # relaod.mcfunction
 # 
 #
 # Created by .
##
execute store result score #ammo .data run clear @s amethyst_shard 32
execute if score #ammo .data matches 0 run return run playsound minecraft:ui.button.click player @a[distance=..20] ~ ~ ~ 0.1 2
execute store result storage temp data.shots int 1 run scoreboard players get #ammo .data
function lzenl:scroll_table/gun/amethyst/set_shots2 with storage temp data
playsound item.bundle.insert player @a[distance=..20] ~ ~ ~ 5