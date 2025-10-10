##
 # set item.mcfunction
 # 
 #
 # Created by .
##
$item replace entity @s container.$(Slot) with $(id) $(count)
$item modify entity @s container.$(Slot) {"function": "minecraft:set_components","components": $(components)}