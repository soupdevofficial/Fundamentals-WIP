##
 # on_players.mcfunction
 # 
 #
 # Created by .
##

#This is running on players every tick -> pretty demanding


#setting attributes (base stats)
execute as @s[tag=!attributes_set] run function lzenl:f_mc/gameplay/player/set_attributes

#(fishing check) -> very light checks
execute if score @s fishing matches 1.. at @s run function lzenl:fishing/start

#check for sitting
execute rotated as @s at @s run function lzenl:uic/open_ui



#ui logic do NOT touch
execute if items entity @s container.* *[item_name="execute"] at @s run function lzenl:uic/set_ui
scoreboard players enable @s fmc.info

#detect 







