##
 # valid_conv.mcfunction
 # 
 #
 # Created by .
##
execute align xyz positioned ~0.5 ~ ~0.5 run function lzenl:f_mc/generation/feature/overworld/temp/stick
execute align xyz positioned ~0.5 ~ ~0.5 run function lzenl:f_mc/generation/feature/overworld/temp/stick
execute align xyz positioned ~0.5 ~ ~0.5 run function lzenl:f_mc/generation/feature/overworld/temp/stick
summon item ~ ~ ~ {Item:{id:"stick"},Motion:[0.1,0.25,0.1]}
summon item ~ ~ ~ {Item:{id:"stick"},Motion:[-0.1,0.25,-0.1]}
summon item ~ ~ ~ {Item:{id:"stick"},Motion:[0.1,0.25,-0.1]}
summon item ~ ~ ~ {Item:{id:"stick"},Motion:[-0.1,0.25,0.1]}

kill @s

