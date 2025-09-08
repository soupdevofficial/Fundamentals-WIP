##
 # break_check.mcfunction
 # 
 #
 # Created by .
##

kill @e[sort=nearest,limit=3,type=experience_orb,distance=..0.5]

execute on passengers as @s[tag=hb_2] run return fail



execute on passengers as @s[tag=clay_bucket] if score @s active matches 1.. run fill ~ ~ ~ ~ ~ ~ lava[level=1] replace #replaceable
execute on passengers as @s[tag=clay_bucket] if score @s active matches 1.. run function lzenl:f_mc/blocks/kill



execute on passengers as @s[tag=clay_bucket] if score @s .id matches 0 run summon item ~ ~ ~ {Item:{id:"copper_nugget"},Motion:[0.0,0.25,0.0]}
execute on passengers as @s[tag=clay_bucket] if score @s .id matches 0 run particle item{item:{id:"copper_nugget"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.125 15

execute on passengers as @s[tag=clay_bucket] if score @s .id matches 1 run summon item ~ ~ ~ {Item:{id:"iron_nugget"},Motion:[0.0,0.25,0.0]}
execute on passengers as @s[tag=clay_bucket] if score @s .id matches 1 run particle item{item:{id:"iron_nugget"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.125 15
execute on passengers as @s[tag=clay_bucket] if score @s .id matches 2 run summon item ~ ~ ~ {Item:{id:"gold_nugget"},Motion:[0.0,0.25,0.0]}
execute on passengers as @s[tag=clay_bucket] if score @s .id matches 2 run particle item{item:{id:"gold_nugget"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.125 15
function lzenl:f_mc/blocks/kill



playsound block.decorated_pot.shatter block @a ~ ~ ~ 1 1

particle block_crumble{block_state:{Name:"decorated_pot"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.25 5






summon item ~ ~ ~ {Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Clay Bucket","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:flower_pot"}},Motion:[0.0,0.25,0.0]}
