##
 # generate.mcfunction
 # 
 #
 # Created by .
##
execute store result score #return .data run random value 1..2
execute if score #return .data matches 1 rotated 90 0 run return run function lzenl:f_mc/generation/feature/end/rift/rift
execute if score #return .data matches 2 rotated 0 0 run function lzenl:f_mc/generation/feature/end/rift/rift
