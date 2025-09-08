##
 # regenerate.mcfunction
 # 
 #
 # Created by .
##

execute as @s[tag=recent_dmg] run return run tag @s remove recent_dmg
execute as @s[nbt={HurtTime:10s}] run return fail


execute store result score #armor_resistance .data run attribute @s minecraft:armor_toughness get 5

execute store result score #armor_dmg_prev .data run attribute @s minecraft:armor modifier value get minecraft:dmg -100






execute if score #armor_dmg_prev .data matches ..0 run return run tag @s remove armor_dmged



attribute @s minecraft:armor modifier remove minecraft:dmg
execute store result score #armor_max .data run attribute @s minecraft:armor get 2
scoreboard players remove #armor_dmg_prev .data 100
execute store result storage temp macro double -0.01 run scoreboard players operation #armor_dmg_prev .data -= #armor_resistance .data

scoreboard players remove #armor_max .data 1

function lzenl:f_mc/gameplay/combat/armor/reduce_armor with storage temp
data remove storage f_mc:combat data.display.bar
data remove storage f_mc:combat data.display.element
execute if entity @s[type=#normal] run data modify storage f_mc:combat data.display.element append value {"color":"#999999","text":"[normal] "}
execute if entity @s[type=#magic] run data modify storage f_mc:combat data.display.element append value {"color":"light_purple","text":"[magic] "}
execute if entity @s[type=#infernal] run data modify storage f_mc:combat data.display.element append value {"color":"#FF3C00","text":"[infernal] "}
execute if entity @s[type=#light] run data modify storage f_mc:combat data.display.element append value {"color":"#fcbd3f","text":"[light] "}
execute if entity @s[type=#dark] run data modify storage f_mc:combat data.display.element append value {"color":"#176069","text":"[dark] "}
execute if entity @s[type=#abyssal] run data modify storage f_mc:combat data.display.element append value {"color":"#8e31cc","text":"[abyssal] "}

execute unless data storage f_mc:combat data.display.element run data modify storage f_mc:combat data.display.element set value [{"color":"#999999","text":"[normal] "}]

execute store result score #armor_display .data run attribute @s minecraft:armor get 2
function lzenl:f_mc/gameplay/combat/armor/display
execute on passengers if entity @s[type=text_display,tag=display] run return run function lzenl:f_mc/gameplay/combat/armor/update_display
