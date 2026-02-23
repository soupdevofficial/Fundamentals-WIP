##
 # sloc.mcfunction
 # 
 #
 # Created by .
##

data modify storage temp data.tpos.x set from entity @s Pos[0]
data modify storage temp data.tpos.y set from entity @s Pos[1]
data modify storage temp data.tpos.z set from entity @s Pos[2]


execute if entity @s[gamemode=creative] run tag @s add gmcr
execute if entity @s[gamemode=survival] run tag @s add gmsu
execute if entity @s[gamemode=adventure] run tag @s add gmad
execute if entity @s[gamemode=spectator] run tag @s add gmsp

$data modify storage temp data.player.ret."$(UUID)" set from storage temp data.tpos
data remove storage temp data.tpos





tag @s add return_tp
schedule function lzenl:loading_start/returner 7s append