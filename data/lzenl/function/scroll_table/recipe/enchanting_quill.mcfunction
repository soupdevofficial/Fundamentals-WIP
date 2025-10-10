##
 # enchanting_quill.mcfunction
 # 
 #
 # Created by .
##
execute unless items block ~ ~-1 ~ container.2 gold_nugget[item_name="Enchanted Golden Nugget",enchantment_glint_override=true,rarity=rare] run return fail
execute unless items block ~ ~-1 ~ container.10 gold_nugget[item_name="Enchanted Golden Nugget",enchantment_glint_override=true,rarity=rare] run return fail
execute unless items block ~ ~-1 ~ container.11 feather run return fail
execute unless items block ~ ~-1 ~ container.12 gold_nugget[item_name="Enchanted Golden Nugget",enchantment_glint_override=true,rarity=rare] run return fail
execute unless items block ~ ~-1 ~ container.20 gold_nugget[item_name="Enchanted Golden Nugget",enchantment_glint_override=true,rarity=rare] run return fail
return 1