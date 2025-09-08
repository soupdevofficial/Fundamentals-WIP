##
 # set_item.mcfunction
 # 
 #
 # Created by .
##


summon item_display ~ ~ ~ {billboard:"center",start_interpolation:-1,teleport_duration:3,item_display:"ground",Tags:["rift_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"air",count:1}}


item replace entity @n[type=item_display,tag=rift_item,distance=..0.1] contents from entity @s contents

playsound entity.ender_eye.death player @a ~ ~ ~ 0.5 0.75

kill @s
