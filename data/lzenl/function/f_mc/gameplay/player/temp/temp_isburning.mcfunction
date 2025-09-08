##
 # temp_isburning.mcfunction
 # 
 #
 # Created by .
##
$bossbar set temp:$(id) name {"text":"-[ BURNING ]-","color":"red","bold":false,"italic":false}
$bossbar set temp:$(id) color red
$bossbar set temp:$(id) style notched_20

damage @s 5 on_fire

particle lava ~ ~1 ~ 0.2 0.35 0.2 0.1 6