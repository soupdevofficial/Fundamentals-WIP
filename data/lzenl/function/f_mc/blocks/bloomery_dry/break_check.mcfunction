##
 # break_check.mcfunction
 # 
 #
 # Created by .
##

kill @e[sort=nearest,limit=3,type=experience_orb,distance=..0.5]


execute on passengers as @s[tag=hb] run return fail



function lzenl:f_mc/blocks/kill



playsound block.sand.break block @a ~ ~ ~ 3 0

particle block_crumble{block_state:{Name:"clay"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.25 20


summon item ~ ~ ~ {Item:{id:"minecraft:clay_ball",count:1,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:2b,type:2}},"minecraft:item_model":"minecraft:clay","minecraft:item_name":"Dry Bloomery"}}}
