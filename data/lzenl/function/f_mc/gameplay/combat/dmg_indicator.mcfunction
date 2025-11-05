##
 # dmg_indicator.mcfunction
 # 
 #
 # Created by .
##
$execute anchored eyes run summon item ^ ^ ^ {Silent:1b,Age:5970,CustomNameVisible:1b,Health:999,PickupDelay:32767,Invulnerable:1b,Tags:["display"],CustomName:$(text),Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"minecraft:air"}}}


execute store result storage temp data.motion.1 double 0.01 run random value -15..15
execute store result storage temp data.motion.2 double 0.01 run random value 15..25
execute store result storage temp data.motion.3 double 0.01 run random value -15..15

execute anchored eyes positioned ^ ^ ^ as @e[type=item,distance=..1,tag=display,tag=!set,limit=1] run function lzenl:f_mc/gameplay/combat/dmg_indicator_motion with storage temp data.motion