##
 # summon.mcfunction
 # 
 #
 # Created by .
##


execute if function lzenl:f_mc/gameplay/combat/vehicle run return run function lzenl:f_mc/used_items/echo_capsule/error
particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.25 10
$summon block_display ~ ~ ~ {Tags:["summon"],Passengers:$(summon)}



execute as @e[distance=..0.1,tag=summon,type=block_display,limit=1] at @s run function lzenl:f_mc/used_items/echo_capsule/on_summon





