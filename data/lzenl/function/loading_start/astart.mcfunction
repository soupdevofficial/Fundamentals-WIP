
attribute @s movement_speed modifier add loading -1 add_multiplied_total
attribute @s gravity modifier add loading -1.34 add_multiplied_total

function lzenl:loading_start/sloc with entity @s
execute positioned 0 1000 0 run function lzenl:loading_start/searchloc
tag @s add fade
schedule function lzenl:loading_start/fade 5t append