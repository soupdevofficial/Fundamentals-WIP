##
 # break_check.mcfunction
 # 
 #
 # Created by .
##


kill @e[sort=nearest,limit=3,type=experience_orb,distance=..0.5]


execute on passengers as @s[tag=hb] if entity @n[type=donkey,tag=bloomery_ui,distance=..0.5] run return fail





kill @n[type=donkey,tag=bloomery_ui,distance=..0.5]
kill @n[type=item,distance=..0.5,nbt={Item:{id:"minecraft:chest"}}]
kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:gray_stained_glass_pane"}}]
kill @n[type=item,distance=..0.5,nbt={Item:{id:"minecraft:stone_button"}}]

kill @e[sort=nearest,limit=3,type=experience_orb,distance=..0.5]
execute as @n[type=item,distance=..0.5,nbt={Item:{"components":{"minecraft:item_name":"execute","minecraft:custom_name":{text:"Very Hot Metal",italic:false},"minecraft:lore":["",{text:"DO NOT TOUCH !!!",color:red,italic:false}]}}}] run fill ~ ~ ~ ~ ~ ~ lava[level=15] replace #replaceable


function lzenl:f_mc/blocks/kill



playsound block.decorated_pot.break block @a ~ ~ ~ 5 0

particle block_crumble{block_state:{Name:"decorated_pot"}} ~ ~0.5 ~ 0.5 0.5 0.5 0.25 20


summon item ~ ~ ~ {Item:{id:"minecraft:brick",count:1,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:1b,type:2}},"minecraft:item_model":"minecraft:decorated_pot","minecraft:item_name":"Bloomery"}}}