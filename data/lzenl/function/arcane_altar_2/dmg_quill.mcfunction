##
 # dmg_quill.mcfunction
 # 
 #
 # Created by .
##



item modify entity @p[tag=user,distance=..6] player.cursor [ { "function": "minecraft:set_damage", "damage": -0.15, "add": true, "conditions": [] } ]
execute if items entity @s player.cursor gold_nugget[damage=9] run item modify entity @p[tag=user,distance=..6] player.cursor [ { "function": "minecraft:set_damage", "damage": 10, "add": false, "conditions": [] } ]

scoreboard players reset #removed_ench .data