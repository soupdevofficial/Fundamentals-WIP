##
 # enchanting_quill.mcfunction
 # 
 #
 # Created by .
##
execute if items block ~ ~-1 ~ container.2 * run return fail
execute if items block ~ ~-1 ~ container.10 * run return fail
execute unless items block ~ ~-1 ~ container.11 gold_ingot[item_name="Enchanted Golden Ingot",enchantment_glint_override=true,rarity=rare] run return fail
execute if items block ~ ~-1 ~ container.12 * run return fail
execute if items block ~ ~-1 ~ container.20 * run return fail
return 1