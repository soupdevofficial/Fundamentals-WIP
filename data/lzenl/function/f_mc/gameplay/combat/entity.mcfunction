##
 # entity.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:f_mc/check/entity_hit

scoreboard players set #htm .data 1
tag @s add delayed_hit
schedule function lzenl:f_mc/delayed_conditional 1t


tag @s add reset
schedule function lzenl:f_mc/delayed_conditional 1t append






























