
execute as @s[tag=fish.nomove] run return fail

execute store result storage temp macro int 1 run random value 1..360
execute store result score #random .data run random value 3..9
execute at @s facing entity @p eyes rotated ~ 0 positioned ^ ^ ^-0.175 run function lzenl:fishing/x2_move with storage temp
return fail