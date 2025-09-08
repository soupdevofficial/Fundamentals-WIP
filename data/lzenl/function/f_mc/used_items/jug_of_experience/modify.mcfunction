##
 # modify.mcfunction
 # 
 #
 # Created by .
##





$item modify entity @s weapon.mainhand [ { "function": "minecraft:set_custom_data", "tag": { "exp": $(exp) } },{  "function": "minecraft:set_lore",  "entity": "this",  "lore": [    {      "text": "Stored Experience [ $(exp) ]","type": "text","color": "gray","italic": false    }  ],  "mode": "replace_all",  "conditions": []}]
item modify entity @s weapon.mainhand {  "function": "minecraft:set_components",  "components": {    "minecraft:item_name": {      "text": "Filled Jug of Experience"    },    "minecraft:item_model": "minecraft:potion"  },  "conditions": []}



execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp:0}] run item modify entity @s weapon.mainhand {  "function": "minecraft:set_components",  "components": {    "minecraft:item_name": {      "text": "Empty Jug of Experience"    },    "minecraft:item_model": "minecraft:glass_bottle"  },  "conditions": []}
execute if items entity @s weapon.mainhand stone_pickaxe[custom_data~{exp:100}] run item modify entity @s weapon.mainhand {  "function": "minecraft:set_components",  "components": {    "minecraft:item_name": {      "text": "Full Jug of Experience"    },    "minecraft:item_model": "minecraft:experience_bottle"  },  "conditions": []}

return fail