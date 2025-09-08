##
 # return.mcfunction
 # 
 #
 # Created by .
##



$function $(run)
clear @p[tag=user,distance=..7] *[item_name="execute"]

playsound minecraft:block.enchantment_table.use block @a[distance=..10] ~ ~ ~ 1 0

