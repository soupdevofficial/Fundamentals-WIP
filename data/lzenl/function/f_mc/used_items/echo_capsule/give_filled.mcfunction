##
 # give_filled.mcfunction
 # 
 #
 # Created by .
##
$execute if score #handed .data matches 1 run return run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":{"echo_capsule":{"stored":$(Passengers)},"return": 1b}}}
$item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":{"echo_capsule":{"stored":$(Passengers)},"return": 1b}}}


