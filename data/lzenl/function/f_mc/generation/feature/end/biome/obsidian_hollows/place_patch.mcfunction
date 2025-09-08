##
 # place_patch.mcfunction
 # 
 #
 # Created by .
##



function lzenl:f_mc/generation/feature/end/biome/obsidian_hollows/fill



$execute rotated ~$(orient) 0 positioned ^ ^ ^4.5 if score #biome.size temp matches 1.. run function lzenl:f_mc/generation/feature/end/biome/obsidian_hollows/patch