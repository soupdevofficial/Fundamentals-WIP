##
 # melting.mcfunction
 # 
 #
 # Created by .
##

execute if entity @s[scores={active=0}] run return fail

execute unless items entity @s horse.1 #raw_ores[minecraft:count=1] run scoreboard players set @s active 0
execute unless entity @n[tag=lit,tag=small_campfire,distance=..0.5] run scoreboard players set @s active 0




execute if score @s active matches 0 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"red","italic":false,"text":"x Interrupted x"}]],item_model="red_stained_glass_pane",item_name="execute",custom_name={text:"Progress Interrupted ",italic:false,color:red}]




execute if score @s active matches 0 run return fail


execute unless entity @s[scores={active=100..}] run scoreboard players add @s active 1
execute if items entity @s horse.1 raw_copper unless entity @s[scores={active=100..}] run scoreboard players add @s active 4
execute if items entity @s horse.1 minecraft:raw_gold unless entity @s[scores={active=100..}] run scoreboard players add @s active 9

execute if score @s active matches 2..9 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"dark_gray","italic":false,"text":"■■■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 10..19 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 20..29 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 30..39 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 40..49 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 50..59 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 60..69 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 70..79 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 80..89 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 90..99 run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■■"},{"color":"dark_gray","italic":false,"text":"■"}]],item_model="orange_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery in Progress",italic:false,color:gold}]
execute if score @s active matches 100.. run item replace entity @s horse.8 with stone_button[lore=[{"color":"gray","italic":false,"text":"Progress:"},[{"color":"green","italic":false,"text":"■■■■■■■■■■"}],{"color":"gray","italic":false,"text":"Put a Clay Bucket underneath to fill it up!"}],item_model="green_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery is Finished",italic:false,color:green}]


execute unless entity @s[scores={active=100..}] run return fail
item modify entity @s horse.1 {function:"set_components",components:{item_model:"resin_clump",item_name:"execute",custom_name:{text:"Very Hot Metal",italic:false},lore:["",{text:"DO NOT TOUCH !!!",color:red,italic:false}]}}

execute unless entity @n[tag=clay_bucket,type=armor_stand,distance=..0.3,tag=!filled,tag=!picked] run return fail

scoreboard players set @s active 0



execute as @n[tag=clay_bucket,type=armor_stand,distance=..0.3,tag=!filled,tag=!picked] on passengers as @s[tag=clay_bucket,type=item_display] run function lzenl:f_mc/blocks/clay_bucket/fill_up

item replace entity @s horse.8 with air
item replace entity @s horse.1 with air

function lzenl:f_mc/blocks/bloomery/set_ui


particle lava ~ ~ ~ 0.0 0.0 0.0 0.1 3
execute at @s run playsound minecraft:item.bucket.fill_lava block @a ~ ~ ~

