##
 # on_summon.mcfunction
 # 
 #
 # Created by .
##
execute on passengers if items entity @s saddle * run ride @p[tag=owner,distance=..1] mount @s
playsound minecraft:block.ender_chest.close player @a[distance=..20] ~ ~ ~ 10 2
execute if score #handed .data matches 1 run item modify entity @p[tag=owner,distance=..1] weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":{"echo_capsule":{"stored":{}},"return": 1b}}}
execute if score #handed .data matches 2 run item modify entity @p[tag=owner,distance=..1] weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:custom_data":{"echo_capsule":{"stored":{}},"return": 1b}}}
kill @s
