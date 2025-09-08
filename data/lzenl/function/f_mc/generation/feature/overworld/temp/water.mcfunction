##
 # water.mcfunction
 # 
 #
 # Created by .
##

execute unless block ~ ~-1 ~ water run return fail

execute store result score #return .data run random value 1..400

