##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute if block ~ ~-1 ~ barrel[facing=up]{CustomName:"Scroll Table"} run return fail
execute on passengers run kill @s
execute positioned ~ ~-0.5 ~ as @e[type=item,distance=..2] if items entity @s contents *[minecraft:item_name="execute"] run kill @s
execute positioned ~ ~-0.5 ~ as @e[type=item,distance=..2] if items entity @s contents *[minecraft:custom_name="Scroll Table"] run kill @s
kill @s
summon item ~ ~-0.5 ~ {PickupDelay:2,Motion:[0.0,0.1,0.0],Item:{id:"minecraft:stone_pickaxe",count:1,components:{"minecraft:item_model":"enchanting_table","minecraft:item_name":"Scroll Table","!minecraft:tool":{},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"!minecraft:attribute_modifiers":{}}}}
return 1