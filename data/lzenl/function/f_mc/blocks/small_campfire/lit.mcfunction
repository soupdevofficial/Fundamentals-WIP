##
 # lit.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set #return .data 0





execute on target unless entity @n[tag=bloomery,distance=..0.5,type=block_display] if items entity @s weapon.mainhand wooden_pickaxe[item_name="Bloomery"] run scoreboard players set #return .data -1

execute if score #return .data matches -1 on target run item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if score #return .data matches -1 on target run function lzenl:f_mc/used_items/bloomery/place
execute if score #return .data matches -1 run return fail


execute at @s[tag=lit] on target run return run function lzenl:f_mc/blocks/small_campfire/spawnpoint


scoreboard players set #return .data 0
execute on target if items entity @s weapon.mainhand flint_and_steel run scoreboard players set #return .data 2
execute on target if items entity @s weapon.mainhand fire_charge run scoreboard players set #return .data 3
execute on target if items entity @s weapon.mainhand wooden_pickaxe[item_name="Wooden Fire Starter"] run scoreboard players set #return .data 1




execute if score #return .data matches 2 on target run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":-0.1,"add":true}
execute if score #return .data matches 1 on target run item modify entity @s weapon.mainhand {"function":"minecraft:set_damage","damage":-0.5,"add":true}
execute if score #return .data matches 1..2 on target at @s run function lzenl:f_mc/gameplay/player/break_item
execute if score #return .data matches 3 on target run item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}


execute on target run advancement grant @s only lzenl:game/3_campfire

execute on target run function lzenl:f_mc/blocks/small_campfire/spawnpoint



execute if score #return .data matches -1..0 run return fail


execute at @s as @n[tag=bloomery_ui,distance=..0.5] run item replace entity @s horse.8 with stone_button[item_model="green_stained_glass_pane",item_name="execute",custom_name={text:"Bloomery is Active!",italic:false,color:green}]


playsound item.flintandsteel.use block @a ~ ~ ~ 5 1


fill ~ ~ ~ ~ ~ ~ light[level=8] replace #replaceable


tag @s add lit