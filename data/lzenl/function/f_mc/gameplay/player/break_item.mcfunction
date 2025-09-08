##
 # break_item.mcfunction
 # 
 #
 # Created by .
##
data modify storage temp data.item set from entity @s SelectedItem.id

data modify storage temp data.item set from entity @s SelectedItem.components.minecraft:item_model

item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true,"conditions":[{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"mainhand":{"predicates":{"minecraft:damage":{"durability":0}}}}}}]}

execute if items entity @s weapon.mainhand * run return fail
playsound entity.item.break player @a ~ ~ ~ 1 1

function lzenl:f_mc/gameplay/player/item_particle with storage temp data