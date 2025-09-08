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
item modify block ~ ~-1 ~ container.20 {"function": "minecraft:set_count","count": -1,"add": true}
item modify block ~ ~-1 ~ container.14 {"function": "minecraft:set_damage","damage": -0.75,"add": true,"conditions": []}
item modify block ~ ~-1 ~ container.16 {"function": "minecraft:set_count","count": -1,"add": true}


give @p[tag=user,distance=..7] stone_axe[!tool,!attribute_modifiers,item_name="Prismatic Amethyst Lantern",enchantment_glint_override=true,rarity=rare,item_model=soul_lantern,custom_data={return:1b},consumable={animation:"block",has_consume_particles:false,sound:intentionally_empty,consume_seconds:2}]





execute if function lzenl:scroll_table/recipe/prismatic_amethyst_lantern run item replace block ~ ~-1 ~ container.16 with stone_button[item_model=soul_lantern,item_name=execute,enchantment_glint_override=true,custom_name={text:"Prismatic Amethyst Lantern",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/prismatic_amethyst_lantern'}]


