##
 # element.mcfunction
 # 
 #
 # Created by .
##






data remove storage f_mc:combat data.element_multiplier

data remove storage f_mc:combat data.display.element
execute if entity @s[type=#normal] run data modify storage f_mc:combat data.display.element append value {"color":"#999999","text":"[normal] "}
execute if entity @s[type=#magic] run data modify storage f_mc:combat data.display.element append value {"color":"light_purple","text":"[magic] "}
execute if entity @s[type=#infernal] run data modify storage f_mc:combat data.display.element append value {"color":"#FF3C00","text":"[infernal] "}
execute if entity @s[type=#light] run data modify storage f_mc:combat data.display.element append value {"color":"#fcbd3f","text":"[light] "}
execute if entity @s[type=#dark] run data modify storage f_mc:combat data.display.element append value {"color":"#176069","text":"[dark] "}
execute if entity @s[type=#abyssal] run data modify storage f_mc:combat data.display.element append value {"color":"#8e31cc","text":"[abyssal] "}

execute if entity @s[type=#normal] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.1
execute if entity @s[type=#magic] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.2
execute if entity @s[type=#infernal] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.3
execute if entity @s[type=#light] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.4
execute if entity @s[type=#dark] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.5
execute if entity @s[type=#abyssal] run return run data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.6

data modify storage f_mc:combat data.element_multiplier append from storage f_mc:combat data.got.1
data modify storage f_mc:combat data.display.element append value {"color":"#999999","text":"[normal] "}








