##
 # alerted_weapon.mcfunction
 # 
 #
 # Created by .
##

execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand #wooden_tools run return fail


item replace entity @s weapon.mainhand with wooden_axe

execute on target if entity @s[distance=..10] run return fail
item replace entity @s[type=!#skeletons] weapon.mainhand with wooden_spear
item replace entity @s[type=#skeletons,type=!wither_skeleton] weapon.mainhand with bow