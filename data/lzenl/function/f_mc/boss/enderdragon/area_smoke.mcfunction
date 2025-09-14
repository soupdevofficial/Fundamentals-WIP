##
 # area_smoke.mcfunction
 # 
 #
 # Created by .
##


scoreboard players remove #smoke animation 1


particle campfire_cosy_smoke ^ ^-2 ^2 ^ ^ ^100000 0.00001 0 force @a


execute if score #smoke animation matches 1.. rotated ~6 ~ run function lzenl:f_mc/boss/enderdragon/area_smoke



