scoreboard players add @s .data 10
playsound minecraft:entity.fishing_bobber.retrieve player @a[distance=..5] ~ ~ ~ 10 2
tag @s add user
execute at @s as @e[tag=caught,tag=fishing,type=armor_stand,distance=..40] if score @s .id = @e[type=interaction,distance=0,limit=1] .id at @s on vehicle run function lzenl:fishing/reel2
tag @s remove user

execute unless score @s .data matches 250.. run return fail
playsound entity.player.levelup player @a[distance=..10] ~ ~ ~ 1 2
execute on attacker run function lzenl:fishing/collect
kill @s