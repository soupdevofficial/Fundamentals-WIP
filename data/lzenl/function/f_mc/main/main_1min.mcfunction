##
 # main_1min.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/main/main_1min 60s replace

# will of dawn 1
execute as @a[scores={aurora=9..}] run effect give @s absorption 60 3 true



execute at @e[tag=beast_heart,type=block_display] if entity @p[distance=..25] run function lzenl:f_mc/blocks/beast_heart/pulse






