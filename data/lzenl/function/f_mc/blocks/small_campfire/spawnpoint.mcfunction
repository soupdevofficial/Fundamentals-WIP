##
 # spawnpoint.mcfunction
 # 
 #
 # Created by .
##



execute if items entity @s weapon.mainhand *[item_name="Brittle Stick"] run return run function lzenl:f_mc/blocks/small_campfire/add_wood



spawnpoint @s ~ ~ ~
execute at @s positioned ^ ^ ^3 as @n[type=interaction,distance=..3] run title @p actionbar [{"text":"Respawn point set | Ember time:  ","color":"white","italic":false},{score:{name:"@s",objective:"active"}}]

return fail