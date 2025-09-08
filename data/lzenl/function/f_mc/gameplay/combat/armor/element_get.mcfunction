##
 # element.mcfunction
 # 
 #
 # Created by .
##

# 6 elements: 1 normal. 2 magic. 3. infernal 4. light 5. dark 6. abyssal



execute at @s unless items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{}}] run function lzenl:f_mc/gameplay/combat/armor/vanilla_element

#if no bow/crossbow shot?
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:1b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:2b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:3b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.3
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:4b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.4
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:5b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.5
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{weapon:{element:6b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.6

execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:1b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.1
execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:2b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.2
execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:3b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.3
execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:4b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.4
execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:5b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.5
execute if items entity @s weapon.offhand *[minecraft:custom_data~{weapon:{element:6b}}] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.6


execute if entity @s[type=#normal] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.1
execute if entity @s[type=#magic] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.2
execute if entity @s[type=#infernal] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.3
execute if entity @s[type=#light] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.4
execute if entity @s[type=#dark] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.5
execute if entity @s[type=#abyssal] run return run data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.6

data modify storage f_mc:combat data.got set from storage f_mc:combat data.elements.1





