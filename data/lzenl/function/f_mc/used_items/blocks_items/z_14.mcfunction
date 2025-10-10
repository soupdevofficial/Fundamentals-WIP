##
 # used.mcfunction
 # 
 #
 # Created by .
##
tellraw @s [{"text":"Temperature taken!"},"\n",{"text":"Results: Temperature of "},{"score":{"name":"@s","objective":"temp"}},{"text":"°C"}]
playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1.5