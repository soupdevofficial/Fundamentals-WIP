##
 # rock.mcfunction
 # 
 #
 # Created by .
##

execute store result score #return .data run random value 1..2

execute if score #return .data matches 1 run summon block_display ~ ~ ~ {Tags:["rock"],Passengers:[{id:"minecraft:interaction",width:0.25f,height:0.2f,response:1b,Tags:["rock"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:stone_button",Properties:{face:"floor",facing:"north"}}}
execute if score #return .data matches 2 run summon block_display ~ ~ ~ {Tags:["rock"],Passengers:[{id:"minecraft:interaction",width:0.25f,height:0.2f,response:1b,Tags:["rock"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:stone_button",Properties:{face:"floor",facing:"west"}}}
