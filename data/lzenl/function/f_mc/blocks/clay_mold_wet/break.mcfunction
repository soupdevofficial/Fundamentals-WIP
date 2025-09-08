##
 # break.mcfunction
 # 
 #
 # Created by .
##



execute on vehicle run function lzenl:f_mc/blocks/kill
playsound minecraft:block.mud.step block @a ~ ~ ~ 4 0

particle block{block_state:"gray_concrete_powder"} ~ ~ ~ 0.2 0.1 0.2 0.02 10


summon item ~ ~ ~ {Item:{id:"wooden_pickaxe",components:{repair_cost:99,"!attribute_modifiers":{},item_name:"Wet Clay Mold","!tool":{},max_damage:99,"!weapon":{},consumable:{consume_seconds:0.0,animation:"block",sound:"minecraft:intentionally_empty",has_consume_particles:false,on_consume_effects:[]},item_model:"minecraft:gray_carpet"}},Motion:[0.0,0.25,0.0]}
