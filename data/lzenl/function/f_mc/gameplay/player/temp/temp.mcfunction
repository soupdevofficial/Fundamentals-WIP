##
 # temp.mcfunction
 # 
 #
 # Created by .
##

$bossbar add temp:$(id) {"text":"-[ neutral ]-","color":"white","bold":false,"italic":false}
$bossbar set temp:$(id) players @s
$bossbar set temp:$(id) max 100
$bossbar set temp:$(id) value 100