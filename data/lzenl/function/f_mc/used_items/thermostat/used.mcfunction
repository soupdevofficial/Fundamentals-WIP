##
 # used.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/used_items/thermostat

tellraw @s [{"text":"Temperature taken!"},"\n",{"text":"Results: Temperature of "},{"score":{"name":"@s","objective":"temp"}},{"text":"°C"}]
playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1.5