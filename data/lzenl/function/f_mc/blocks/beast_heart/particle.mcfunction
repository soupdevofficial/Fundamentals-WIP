##
 # particle.mcfunction
 # 
 #
 # Created by .
##



scoreboard players remove #return .data 1

execute positioned ~ ~1 ~ run particle trial_spawner_detection ^ ^ ^1 ^ ^ ^10000000 0.00000005 0 force @a[distance=..25]

execute if score #return .data matches 1.. rotated ~6 ~ run function lzenl:f_mc/blocks/beast_heart/particle
