##
 # pulse.mcfunction
 # 
 #
 # Created by .
##
execute unless block ~ ~ ~ magma_block run return run kill @e[distance=..0.1,type=block_display,tag=beast_heart]
playsound entity.warden.heartbeat block @a[distance=..15] ~ ~ ~ 10 0

scoreboard players set #return .data 60
function lzenl:f_mc/blocks/beast_heart/particle
effect give @a[distance=..15] fire_resistance 20 0 false