##
 # main_10sek.mcfunction
 # 
 #
 # Created by .
##
schedule function lzenl:f_mc/main/main_5sek 5s replace

execute at @e[tag=beast_heart,distance=0..,type=block_display] if entity @p[distance=..25] run function lzenl:f_mc/blocks/beast_heart/pulse
