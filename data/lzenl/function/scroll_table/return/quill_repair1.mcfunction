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
item modify block ~ ~-1 ~ container.16 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.20 {"function": "minecraft:set_count","count": -1,"add": true}







give @p[tag=user,distance=..7] gold_nugget[item_name="Enchanting Quill",enchantment_glint_override=true,rarity=rare,damage=5,max_damage=10,max_stack_size=1,item_model=spectral_arrow]

execute if function lzenl:scroll_table/recipe/repair_ench_quill1 run item replace block ~ ~-1 ~ container.16 with stone_button[item_name=execute,item_model="spectral_arrow",enchantment_glint_override=true,custom_name={text:"Enchanting Quill",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/quill_repair1'},max_stack_size=1,damage=5,max_damage=10]
