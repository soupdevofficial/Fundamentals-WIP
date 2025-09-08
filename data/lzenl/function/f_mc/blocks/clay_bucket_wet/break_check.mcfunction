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

particle block_crumble{block_state:{Name:"decorated_pot"}} ~ ~0.2 ~ 0.2 0.2 0.2 0.25 5



summon item ~ ~ ~ {Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Wet Clay Bucket","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:cauldron"}},Motion:[0.0,0.25,0.0]}
