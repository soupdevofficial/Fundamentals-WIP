##
 # find_text.mcfunction
 # 
 #
 # Created by .
##




execute if function lzenl:f_mc/gameplay/combat/hero/aurora/check_up run scoreboard players add @s aurora 1

execute as @s[scores={aurora=2..13}] run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.2 1


title @s[scores={aurora=1}] actionbar {text:"You swipe away the dust off the stone statue..."}
execute as @s[scores={aurora=1}] run playsound minecraft:item.brush.brushing.gravel
title @s[scores={aurora=2}] actionbar {text:"This Shrine is dedicated to the Hero Aurora, bringer of the dawn."} 

title @s[scores={aurora=3}] actionbar {text:"You feel the Will of the Hero, spent [5 levels] to unlock? Click [Attack] to confirm."} 

title @s[scores={aurora=5}] actionbar {text:"Spent [10 levels] to strenghten the Will of Dawn? Click [Attack] to confirm."} 

title @s[scores={aurora=7}] actionbar {text:"Spent [15 levels] to strenghten the Will of Dawn? Click [Attack] to confirm."} 

title @s[scores={aurora=9}] actionbar {text:"Spent [20 levels] to strenghten the Will of Dawn? Click [Attack] to confirm."} 

title @s[scores={aurora=11}] actionbar {text:"Spent [25 levels] to strenghten the Will of Dawn? Click [Attack] to confirm."} 

title @s[scores={aurora=13}] actionbar {text:"Spent [30 levels] to strenghten the Will of Dawn? Click [Attack] to confirm."} 