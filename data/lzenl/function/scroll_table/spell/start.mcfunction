##
 # start.mcfunction
 # 
 #
 # Created by .
##
execute if items entity @s weapon.mainhand *[custom_data~{spell:{gun:{type:1b}}}] run function lzenl:scroll_table/gun/amethyst/amethyst
execute if items entity @s weapon.offhand *[custom_data~{spell:{gun:{type:1b}}}] run function lzenl:scroll_table/gun/amethyst/amethyst2

execute if items entity @s weapon.mainhand *[custom_data~{spell:{type:1b}}] run return run function lzenl:scroll_table/spell/fireball
execute if items entity @s weapon.mainhand *[custom_data~{spell:{type:2b}}] run return run function lzenl:scroll_table/spell/windcharge
execute if items entity @s weapon.mainhand *[custom_data~{spell:{type:3b}}] run return run function lzenl:scroll_table/spell/warp
execute if items entity @s weapon.mainhand *[custom_data~{spell:{type:4b}}] run return run say 4
execute if items entity @s weapon.mainhand *[custom_data~{spell:{type:5b}}] run return run say 5
execute if items entity @s weapon.offhand *[custom_data~{spell:{type:1b}}] run return run function lzenl:scroll_table/spell/fireball
execute if items entity @s weapon.offhand *[custom_data~{spell:{type:2b}}] run return run function lzenl:scroll_table/spell/windcharge
execute if items entity @s weapon.offhand *[custom_data~{spell:{type:3b}}] run return run function lzenl:scroll_table/spell/warp
execute if items entity @s weapon.offhand *[custom_data~{spell:{type:4b}}] run return run say 4
execute if items entity @s weapon.offhand *[custom_data~{spell:{type:5b}}] run return run say 5

