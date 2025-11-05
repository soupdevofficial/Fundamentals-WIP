##
 # break_check.mcfunction
 # 
 #
 # Created by .
##

kill @e[sort=nearest,limit=3,type=experience_orb,distance=..0.5]

execute on passengers as @s[tag=hb_2] run return fail

function lzenl:f_mc/blocks/kill

playsound block.decorated_pot.shatter block @a ~ ~ ~ 1 1

particle block_crumble{block_state:{Name:"clay"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.25 5



summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",count:1,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:5b,type:3}},"minecraft:item_model":"minecraft:bucket","minecraft:item_name":"Dry Clay Bucket"}}}
