##
 # baking.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~ ~ #fire run return fail

scoreboard players add @s .data 1
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.1 2
particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 3
particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0.05 3

execute unless score @s .data matches 3.. run return fail

particle cloud ~ ~0.5 ~ 0.0 0.5 0.0 0.05 4

execute on passengers run function lzenl:f_mc/blocks/bloomery_dry/baked

tag @s remove bloomery_dry

tag @s add bloomery


playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.25 1.5

scoreboard players reset @s .data


fill ~ ~ ~ ~ ~ ~ air replace #fire


schedule function lzenl:f_mc/delayed_conditional 2t



execute align xyz run summon donkey ~0.5 ~ ~0.5 {NoGravity:1b,Silent:1b,DeathTime:50,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:0.1f,Tame:1b,ChestedHorse:1b,Tags:["bloomery_ui","scale"],equipment:{saddle:{id:"minecraft:wheat_seeds",count:1,components:{custom_name:{text:"Exit UI",italic:false},"minecraft:item_model":"minecraft:barrier","minecraft:item_name":"execute"}}},drop_chances:{saddle:0},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:0},{id:"minecraft:armor_toughness",base:0},{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.01}]}

scoreboard players set @n[tag=bloomery_ui,type=donkey] active 0 

schedule function lzenl:f_mc/delayed_conditional 2t









