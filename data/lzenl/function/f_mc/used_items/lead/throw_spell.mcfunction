##
 # throw.mcfunction
 # 
 #
 # Created by .
##

playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0
execute positioned ~ ~1 ~ run summon snowball ^ ^ ^1 {Tags:["lasso","motion"],Passengers:[{id:"minecraft:item",Health:20,PickupDelay:10,Tags:["lasso","kill"],Item:{id:"minecraft:lead",count:1}}],Item:{id:"spruce_button",count:1}}

data modify entity @n[distance=..2,tag=lasso,type=item] Item.components."minecraft:custom_data".owner.UUID set from entity @s UUID
execute as @n[tag=motion,distance=..3] at @s run function lzenl:fmlib/start