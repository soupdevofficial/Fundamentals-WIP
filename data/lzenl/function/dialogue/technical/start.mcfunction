##
 # start.mcfunction
 # 
 #
 # Created by .
##
kill @e[type=!minecraft:player,distance=..5,tag=test]

summon text_display ~ ~ ~ {billboard:"vertical",line_width:200,alignment:"left",Tags:["test"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,1f],scale:[1f,1f,1f]},text:""}

data remove storage f_mc:story data
scoreboard players set @s dlg_next 0
scoreboard players set @s dlg_adv 0

advancement revoke @s only lzenl:f_mc/check/dialogue