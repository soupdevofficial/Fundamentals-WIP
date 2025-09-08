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


summon item ~ ~ ~ {Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Dry Bloomery","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:clay"}},Motion:[0.0,0.25,0.0]}
