##
 # z_get_item.mcfunction
 # 
 #
 # Created by .
##
summon item_display ~ ~ ~ {Tags:["edit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

data modify entity @n[type=item_display,tag=edit,distance=..0.1] item set from entity @s[type=player] SelectedItem
data modify entity @n[type=item_display,tag=edit,distance=..0.1] item set from entity @s[type=!player] equipment.mainhand

$data modify entity @n[type=item_display,tag=edit,distance=..0.1] item.components.minecraft:custom_data.weapon.element set value $(element)b
$data modify entity @n[type=item_display,tag=edit,distance=..0.1] item.components.minecraft:lore append value $(lore)

item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=edit,distance=..0.1] contents

kill @n[type=item_display,tag=edit,distance=..0.1]