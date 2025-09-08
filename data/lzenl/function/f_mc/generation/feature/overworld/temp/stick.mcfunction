##
 # stick.mcfunction
 # 
 #
 # Created by .
##

summon item_display ~ ~ ~ {Tags:["stick"],Passengers:[{id:"minecraft:interaction",width:1f,height:0.1f,response:1b,Tags:["stick"]}],transformation:[1f,0f,0f,0f,0f,0f,-1f,0f,0f,1f,0f,0f,0f,0f,0f,1f],item:{id:"minecraft:stick",count:1}}

execute store result score #return .data run random value 1..5

execute if score #return .data matches 1 run rotate @n[tag=stick,type=item_display,distance=..1] ~15 0

execute if score #return .data matches 2 run rotate @n[tag=stick,type=item_display,distance=..1] ~50 0

execute if score #return .data matches 3 run rotate @n[tag=stick,type=item_display,distance=..1] ~180 0

execute if score #return .data matches 4 run rotate @n[tag=stick,type=item_display,distance=..1] ~-50 0

execute if score #return .data matches 5 run rotate @n[tag=stick,type=item_display,distance=..1] ~-15 0