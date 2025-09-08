##
 # quill.mcfunction
 # 
 #
 # Created by .
##




item modify block ~ ~-1 ~ container.2 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.10 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.11 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.12 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.16 {"function": "minecraft:set_count","count": 0,"add": false}
item modify block ~ ~-1 ~ container.20 {"function": "minecraft:set_count","count": -1,"add": true}







give @p[tag=user,distance=..7] gold_ingot[item_name="Enchanted Golden Ingot",enchantment_glint_override=true,rarity=rare]











execute if function lzenl:scroll_table/recipe/enchanted_gold_ingot run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="gold_ingot",custom_name={text:"Enchanted Golden Ingot",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/enchanted_gold_ingot'},enchantment_glint_override=true]
