##
 # root.mcfunction
 # 
 #
 # Created by .
##
execute if score @s[tag=s.move] weapon.cooldown matches 1 rotated as @s run function lzenl:weapons/skills/skill/set_sum

execute if score @s weapon.cooldown matches 0.. run return run scoreboard players remove @s weapon.cooldown 1


execute as @s[tag=s.slash] run function lzenl:weapons/skills/type/slash/1
execute as @s[tag=s.pierce] run function lzenl:weapons/skills/type/pierce/3
execute as @s[tag=s.strike] run function lzenl:weapons/skills/type/strike/1
execute as @s[tag=s.move] run function lzenl:weapons/skills/skill/moving