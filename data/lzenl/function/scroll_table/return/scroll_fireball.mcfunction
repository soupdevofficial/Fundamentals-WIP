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
item modify block ~ ~-1 ~ container.14 {"function": "minecraft:set_damage","damage": -0.5,"add": true,"conditions": []}
item modify block ~ ~-1 ~ container.16 {"function": "minecraft:set_count","count": -1,"add": true}


give @p[tag=user,distance=..7] paper[item_name="Fireball Scroll",enchantment_glint_override=true,rarity=rare,item_model=filled_map,custom_data={return:1b,spell:{type:1b},weapon:{element:2b}},map_id=-1,map_color=11088640,consumable={animation:"crossbow",has_consume_particles:false,sound:intentionally_empty,consume_seconds:0.0},use_cooldown={seconds:5,cooldown_group:spell}]









execute if function lzenl:scroll_table/recipe/scroll_fireball run item replace block ~ ~-1 ~ container.16 with stone_button[map_id=-1,map_color=11088640,item_model=filled_map,item_name=execute,enchantment_glint_override=true,custom_name={text:"Fireball Scroll",italic:false},rarity=rare,custom_data={result:1b,run:'lzenl:scroll_table/return/scroll_fireball'}]


