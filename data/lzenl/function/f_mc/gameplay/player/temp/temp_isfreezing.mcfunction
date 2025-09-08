##
 # temp_isfreezing.mcfunction
 # 
 #
 # Created by .
##
$bossbar set temp:$(id) name {"text":"-[ FREEZING ]-","color":"aqua","bold":false,"italic":false}
$bossbar set temp:$(id) color blue
$bossbar set temp:$(id) style notched_20

damage @s 5 freeze

particle snowflake ~ ~1 ~ 0.2 0.35 0.2 0.1 6

effect give @s slowness 1 0 true

function lzenl:f_mc/gameplay/camera/shake/start