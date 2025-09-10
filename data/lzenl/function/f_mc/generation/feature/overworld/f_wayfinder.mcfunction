##
 # wayfinder.mcfunction
 # 
 #
 # Created by .
##
execute store result score #return .data run random value 1..4
execute if score #return .data matches 1 run return run place template lzenl:wayfinder ~-1 ~1 ~-1 none none 1
execute if score #return .data matches 2 run return run place template lzenl:wayfinder ~1 ~1 ~1 180 none 1
execute if score #return .data matches 3 run return run place template lzenl:wayfinder ~1 ~1 ~-1 clockwise_90 none 1
execute if score #return .data matches 4 run return run place template lzenl:wayfinder ~-1 ~1 ~1 counterclockwise_90 none 1























