##
 # enchanting_quill.mcfunction
 # 
 #
 # Created by .
##








execute unless items block ~ ~-1 ~ container.2 lapis_lazuli run return fail
execute unless items block ~ ~-1 ~ container.10 lapis_lazuli run return fail
execute unless items block ~ ~-1 ~ container.11 gold_nugget[item_name="Enchanting Quill",enchantment_glint_override=true,rarity=rare,damage=10,max_damage=10,max_stack_size=1,item_model=spectral_arrow] run return fail
execute unless items block ~ ~-1 ~ container.12 lapis_lazuli run return fail
#execute unless items block ~ ~-1 ~ container.14 lapis_lazuli run return fail
execute unless items block ~ ~-1 ~ container.20 lapis_lazuli run return fail

return 1












