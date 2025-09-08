##
 # quill.mcfunction
 # 
 #
 # Created by .
##





item modify block ~ ~-1 ~ container.11 {"function": "minecraft:set_count","count": -1,"add": true}

item modify block ~ ~-1 ~ container.16 {"function": "minecraft:set_count","count": 0,"add": false}








give @p[tag=user,distance=..7] gold_nugget[item_name="Enchanted Golden Nugget",enchantment_glint_override=true,rarity=rare] 9











execute if function lzenl:scroll_table/recipe/enchanted_gold_nugget run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="gold_nugget",custom_name={text:"Enchanted Golden Nugget",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/enchanted_gold_nugget'},enchantment_glint_override=true] 9
