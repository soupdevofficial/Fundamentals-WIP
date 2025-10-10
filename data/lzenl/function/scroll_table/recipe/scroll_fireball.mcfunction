##
 # enchanting_quill.mcfunction
 # 
 #
 # Created by .
##
execute unless items block ~ ~-1 ~ container.2 fire_charge run return fail
execute unless items block ~ ~-1 ~ container.10 fire_charge run return fail
execute unless items block ~ ~-1 ~ container.11 paper[item_name="Enchanted Scroll",enchantment_glint_override=true,rarity=rare,item_model=map] run return fail
execute unless items block ~ ~-1 ~ container.12 fire_charge run return fail
execute unless items block ~ ~-1 ~ container.14 gold_nugget[item_name="Enchanting Quill",enchantment_glint_override=true,rarity=rare,!damage=10,max_damage=10,max_stack_size=1,item_model=spectral_arrow] run return fail
execute unless items block ~ ~-1 ~ container.20 fire_charge run return fail
return 1