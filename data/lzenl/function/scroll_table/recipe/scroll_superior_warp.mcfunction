##
 # enchanting_quill.mcfunction
 # 
 #
 # Created by .
##








execute unless items block ~ ~-1 ~ container.2 paper[item_name="Warp Scroll",custom_data={return:1b,spell:{type:3b},weapon:{element:2b}}] run return fail
execute unless items block ~ ~-1 ~ container.10 paper[item_name="Warp Scroll",custom_data={return:1b,spell:{type:3b},weapon:{element:2b}}] run return fail
execute unless items block ~ ~-1 ~ container.11 ender_eye run return fail
execute unless items block ~ ~-1 ~ container.12 paper[item_name="Warp Scroll",custom_data={return:1b,spell:{type:3b},weapon:{element:2b}}] run return fail
execute unless items block ~ ~-1 ~ container.14 gold_nugget[item_name="Enchanting Quill",enchantment_glint_override=true,rarity=rare,!damage=10,max_damage=10,max_stack_size=1,item_model=spectral_arrow] run return fail
execute unless items block ~ ~-1 ~ container.20 paper[item_name="Warp Scroll",custom_data={return:1b,spell:{type:3b},weapon:{element:2b}}] run return fail

return 1












