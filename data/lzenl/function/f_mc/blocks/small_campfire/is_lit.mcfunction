##
 # is_lit.mcfunction
 # 
 #
 # Created by .
##




tag @s remove lit

fill ~ ~ ~ ~ ~ ~ air replace light

playsound block.fire.extinguish block @a ~ ~ ~ 1 2


return fail