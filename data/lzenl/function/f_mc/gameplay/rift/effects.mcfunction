##
 # effects.mcfunction
 # 
 #
 # Created by .
##
effect give @e[distance=..20] wither 1 0 true
playsound block.amethyst_block.chime block @a ~ ~ ~ 1 2
particle falling_obsidian_tear ~ ~3 ~ 15 3 15 0.01 6 force @a

function lzenl:f_mc/gameplay/rift/spawn