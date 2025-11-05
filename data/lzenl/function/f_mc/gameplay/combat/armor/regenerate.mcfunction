##
 # regenerate.mcfunction
 # 
 #
 # Created by .
##

execute as @s[tag=dragon,tag=vul,tag=!superarmor] run return fail
execute as @s[tag=recent_dmg,tag=!superarmor] run return run tag @s remove recent_dmg
execute as @s[nbt={HurtTime:10s},tag=!superarmor] run return fail

execute store result score #armor_resistance .data run attribute @s minecraft:armor_toughness get 5

execute store result score #armor_dmg_prev .data run attribute @s minecraft:armor modifier value get minecraft:dmg -100





execute if score #armor_dmg_prev .data matches ..0 run return run tag @s remove armor_dmged



attribute @s minecraft:armor modifier remove minecraft:dmg
scoreboard players remove #armor_dmg_prev .data 100
execute store result score #armor_max_amount .data run attribute @s minecraft:armor get 1
scoreboard players set #max_armor_dmg .data 100
scoreboard players operation #max_armor_dmg .data *= #armor_max_amount .data
execute if score #armor_dmg_prev .data > #max_armor_dmg .data run scoreboard players operation #armor_dmg_prev .data = #max_armor_dmg .data






execute store result storage temp macro double -0.01 run scoreboard players operation #armor_dmg_prev .data -= #armor_resistance .data




execute if score #armor_dmg_prev .data matches ..0 run tag @s remove superarmor




function lzenl:f_mc/gameplay/combat/armor/reduce_armor with storage temp
data remove storage f_mc:combat data.display.bar
data remove storage f_mc:combat data.display.element

execute if entity @s[tag=normal] run data modify storage f_mc:combat data.display.element append value {"color":"#999999","text":"[normal] "}
execute if entity @s[tag=magic] run data modify storage f_mc:combat data.display.element append value {"color":"light_purple","text":"[magic] "}
execute if entity @s[tag=infernal] run data modify storage f_mc:combat data.display.element append value {"color":"#FF3C00","text":"[infernal] "}
execute if entity @s[tag=light] run data modify storage f_mc:combat data.display.element append value {"color":"#fcbd3f","text":"[light] "}
execute if entity @s[tag=dark] run data modify storage f_mc:combat data.display.element append value {"color":"#176069","text":"[dark] "}
execute if entity @s[tag=abyssal] run data modify storage f_mc:combat data.display.element append value {"color":"#8e31cc","text":"[abyssal] "}

execute if entity @s[type=#normal,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"#999999","text":"[normal] "}
execute if entity @s[type=#magic,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"light_purple","text":"[magic] "}
execute if entity @s[type=#infernal,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"#FF3C00","text":"[infernal] "}
execute if entity @s[type=#light,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"#fcbd3f","text":"[light] "}
execute if entity @s[type=#dark,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"#176069","text":"[dark] "}
execute if entity @s[type=#abyssal,tag=!boss] run data modify storage f_mc:combat data.display.element append value {"color":"#8e31cc","text":"[abyssal] "}


execute if entity @s[tag=!boss] unless data storage f_mc:combat data.display.element run data modify storage f_mc:combat data.display.element set value [{"color":"#999999","text":"[normal] "}]
scoreboard players set #armor_max .data 3

execute store result score #armor_current .data run attribute @s minecraft:armor get 10
execute store result score #resist .data run data get entity @s AbsorptionAmount 1
scoreboard players operation #armor_current .data /= #armor_max_amount .data
scoreboard players operation #armor_current .data *= #armor_max .data
scoreboard players operation #armor_display .data = #armor_current .data 
scoreboard players set #armor_max .data 30
function lzenl:f_mc/gameplay/combat/armor/display


execute at @s[tag=boss,tag=dragon] run return run title @a[distance=..150] actionbar ["-={ The Ender Dragon | ",{storage: "f_mc:combat", nbt: "data.display.bar", interpret: true}," | ",{storage: "f_mc:combat", nbt: "data.display.element", interpret: true},"}=-"]
execute on passengers if entity @s[type=text_display,tag=display] run return run function lzenl:f_mc/gameplay/combat/armor/update_display
