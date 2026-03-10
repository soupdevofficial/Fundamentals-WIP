##
 # is_lit.mcfunction
 # 
 #
 # Created by .
##




tag @s remove lit

fill ~ ~ ~ ~ ~ ~ air replace light

playsound block.fire.extinguish block @a ~ ~ ~ 1 2

particle large_smoke ~ ~0.25 ~ 0.2 0.2 0.2 0.025 5

return fail