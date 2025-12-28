scoreboard players reset @s fishing


execute anchored eyes run summon armor_stand ^ ^ ^1 {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["fishing","motion2"],attributes:[{id:"minecraft:gravity",base:0.0125},{id:"minecraft:scale",base:0}]}

scoreboard players operation @n[tag=motion2,tag=fishing] .id = @s .id

execute as @n[type=minecraft:fishing_bobber] run ride @s mount @n[tag=fishing]
playsound minecraft:entity.fishing_bobber.throw player @a ^ ^5 ^5 10 0

execute anchored eyes positioned ^ ^ ^ as @n[tag=motion2,type=armor_stand] run function lzenl:motion/start