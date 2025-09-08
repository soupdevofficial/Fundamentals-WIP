##
 # summon_update.mcfunction
 # 
 #
 # Created by .
##

data merge entity @s {custom_particle:{type:"block_crumble",block_state:"minecraft:air"},Radius:0f,Duration:100,Tags:["display"]}
execute at @s run function lzenl:f_mc/gameplay/combat/armor/update_display
