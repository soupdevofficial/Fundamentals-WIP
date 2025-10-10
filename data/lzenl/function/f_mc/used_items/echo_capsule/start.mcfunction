


tag @s add owner

execute if items entity @s weapon.mainhand raw_iron[custom_data~{echo_capsule:{}}] run return run function lzenl:f_mc/used_items/echo_capsule/main_hand
execute if items entity @s weapon.offhand raw_iron[custom_data~{echo_capsule:{}}] run return run function lzenl:f_mc/used_items/echo_capsule/off_hand

tag @s remove owner













