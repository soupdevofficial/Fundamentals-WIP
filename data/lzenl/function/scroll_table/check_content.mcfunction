execute if function lzenl:scroll_table/break run return fail




execute store success score #temp .data run data modify entity @s item.components.minecraft:custom_data.Items set from block ~ ~-1 ~ Items
execute if score #temp .data matches 0 run return fail


execute at @s as @a[distance=..7] run function lzenl:arcane_altar_2/on_player



execute unless entity @a[distance=..6,tag=user] run tag @a[distance=..6,sort=nearest] add user


data merge storage craft {data:{run:""}}
execute if items block ~ ~-1 ~ container.16 * unless items block ~ ~-1 ~ container.16 *[item_name="execute"] run item replace entity @p[distance=..10] player.cursor from block ~ ~-1 ~ container.16
item replace block ~ ~-1 ~ container.16 with air
execute if function lzenl:scroll_table/recipe/enchanting_quill run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="spectral_arrow",enchantment_glint_override=true,custom_name={text:"Enchanting Quill",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/quill'},max_stack_size=1,damage=10,max_damage=10]
execute if function lzenl:scroll_table/recipe/enchanted_gold_ingot run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="gold_ingot",custom_name={text:"Enchanted Golden Ingot",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/enchanted_gold_ingot'},enchantment_glint_override=true]
execute if function lzenl:scroll_table/recipe/enchanted_gold_nugget run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="gold_nugget",custom_name={text:"Enchanted Golden Nugget",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/enchanted_gold_nugget'},enchantment_glint_override=true] 9

execute if function lzenl:scroll_table/recipe/repair_ench_quill run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="spectral_arrow",enchantment_glint_override=true,custom_name={text:"Enchanting Quill",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/quill_repair'},max_stack_size=1,damage=0,max_damage=10]

execute if function lzenl:scroll_table/recipe/scroll_empty run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="map",enchantment_glint_override=true,custom_name={text:"Enchanted Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_empty'}]
execute if function lzenl:scroll_table/recipe/scroll_fireball run item replace block ~ ~-1 ~ container.16 with stone_button[map_id=-1,map_color=11088640,item_model=filled_map,item_name=execute,enchantment_glint_override=true,custom_name={text:"Fireball Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_fireball'}]
execute if function lzenl:scroll_table/recipe/enchanted_book run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="enchanted_book",custom_name={text:"Enchanted Book",italic:false},custom_data={result:1b,run:'lzenl:scroll_table/return/enchanted_book'},enchantment_glint_override=true,rarity="uncommon"]
execute if function lzenl:scroll_table/recipe/prismatic_amethyst_lantern run item replace block ~ ~-1 ~ container.16 with stone_button[item_model=soul_lantern,item_name=execute,enchantment_glint_override=true,custom_name={text:"Prismatic Amethyst Lantern",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/prismatic_amethyst_lantern'}]
execute if function lzenl:scroll_table/recipe/scroll_windcharge run item replace block ~ ~-1 ~ container.16 with stone_button[map_id=-1,map_color=9819352,item_model=filled_map,item_name=execute,enchantment_glint_override=true,custom_name={text:"Windcharge Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_windcharge'}]
execute if function lzenl:scroll_table/recipe/scroll_warp run item replace block ~ ~-1 ~ container.16 with stone_button[map_id=-1,map_color=8519849,item_model=filled_map,item_name=execute,enchantment_glint_override=true,custom_name={text:"Warp Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_warp'}]
execute if function lzenl:scroll_table/recipe/scroll_superior_warp run item replace block ~ ~-1 ~ container.16 with stone_button[map_id=-1,map_color=8519849,item_model=filled_map,item_name=execute,enchantment_glint_override=true,custom_name={text:"Superior Warp Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_superior_warp'}]
execute if items entity @p[tag=user,distance=..7] player.cursor *[item_name="execute"] run item replace entity @s contents from entity @p[tag=user,distance=..7] player.cursor
data modify storage craft data.run set from entity @s item.components."minecraft:custom_data".run
execute if items entity @p[tag=user,distance=..7] container.* *[item_name="execute"] run data modify storage craft data.run set from entity @p[tag=user,distance=..7] Inventory[{components:{"minecraft:item_name":"execute"}}].components."minecraft:custom_data".run
item replace entity @s contents with egg
function lzenl:scroll_table/return/give with storage craft data
function lzenl:scroll_table/set_content
data modify entity @s item.components.minecraft:custom_data.Items set from block ~ ~-1 ~ Items

execute as @a[distance=..7,tag=user] if items entity @s player.cursor *[item_name="execute"] run item replace entity @s player.cursor with air
tag @p[tag=user,distance=..7] remove user