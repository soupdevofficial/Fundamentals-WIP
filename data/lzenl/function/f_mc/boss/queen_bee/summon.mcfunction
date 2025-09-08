##
 # summon.mcfunction
 # 
 #
 # Created by .
##
summon bee ~ ~ ~ {Health:40f,HasStung:0b,TicksSincePollination:99999999,CannotEnterHiveTicks:99999999,AngerTime:99999999,Tags:["queen_bee"],CustomName:"Queen Bee",equipment:{chest:{id:"minecraft:honey_bottle",count:1,components:{"minecraft:item_name":"Royal Honey","minecraft:rarity":"uncommon","minecraft:consumable":{consume_seconds:1,animation:"drink",sound:"item.honey_bottle.drink",has_consume_particles:true,on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:absorption",amplifier:4,duration:120},{id:"minecraft:instant_health",amplifier:1,duration:1},{id:"minecraft:speed",amplifier:2,duration:120}],probability:1}]}}},head:{id:"minecraft:iron_sword",count:1,components:{"minecraft:rarity":"rare","minecraft:item_model":"bee_spawn_egg","minecraft:item_name":"Queen Bee Stinger","minecraft:attribute_modifiers":[{id:"attack_knockback",type:"attack_knockback",amount:4,operation:"add_value",slot:"mainhand",display:{type:"default"}}]}}},drop_chances:{chest:1.000,head:1.000},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:max_health",base:40},{id:"minecraft:scale",base:1.5},{id:"minecraft:tempt_range",base:0},{id:"minecraft:flying_speed",base:1}]}





