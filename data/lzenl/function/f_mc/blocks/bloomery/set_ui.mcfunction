##
 # set_ui.mcfunction
 # 
 #
 # Created by .
##


tag @s remove check_ui


execute unless items entity @s horse.8 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.8
execute unless items entity @s horse.9 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.9
execute unless items entity @s horse.10 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.10
execute unless items entity @s horse.12 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.12
execute unless items entity @s horse.13 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.13
execute unless items entity @s horse.14 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.14
execute unless items entity @s horse.0 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.0
execute unless items entity @s horse.2 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.2
execute unless items entity @s horse.3 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.3
execute unless items entity @s horse.4 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.4
execute unless items entity @s horse.5 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.5
execute unless items entity @s horse.6 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.6
execute unless items entity @s horse.7 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @p player.cursor from entity @s horse.7



execute at @s unless entity @n[tag=small_campfire,tag=lit,distance=..0.5] unless items entity @s horse.8 stone_button[item_name="execute"] run item replace entity @s horse.8 with stone_button[item_model="red_stained_glass_pane",item_name="execute",custom_name={text:"Place Small Campfire Inside the Bloomery to Activate it !",italic:false,color:red}]
execute at @s if entity @n[tag=small_campfire,tag=lit,distance=..0.5] unless items entity @s horse.8 stone_button[item_name="execute"] run item replace entity @s horse.8 with stone_button[item_model="green_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery is Active!",italic:false,color:green}]

execute if score @s active matches 2.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"dark_gray","italic":false,"text":"■■■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 10.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 20.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 30.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 40.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 50.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 60.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 70.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 80.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 90.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 100.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■■■"}],{"color":"gray","italic":false,"text":"Put a Clay Bucket underneath to fill it up!"}],item_model="green_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery is Finished",italic:false,color:green}]


execute unless items entity @s horse.0 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.0 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.2 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.2 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.3 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.3 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.4 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.4 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.5 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.5 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.6 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.6 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.7 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.7 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.9 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.9 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.10 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.10 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.12 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.12 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.13 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.13 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]
execute unless items entity @s horse.14 gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true}] run item replace entity @s horse.14 with gray_stained_glass_pane[item_name="execute",minecraft:tooltip_display={hide_tooltip:true},custom_name=""]









