##
 # break.mcfunction
 # 
 #
 # Created by .
##



execute on vehicle run function lzenl:f_mc/blocks/kill
playsound minecraft:block.mud.step block @a ~ ~ ~ 4 0

particle block{block_state:"gray_concrete_powder"} ~ ~ ~ 0.2 0.1 0.2 0.02 10


summon item ~ ~0.5 ~ {Item:{id:"minecraft:clay_ball",count:1,components:{"minecraft:consumable":{consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:9b,type:2},id:9},"minecraft:item_model":"minecraft:gray_carpet","minecraft:item_name":"Wet Clay Mold"}}}
