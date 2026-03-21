
tag @s add fundamentals.entity.alerted






execute anchored eyes run summon item ^ ^ ^ {Silent:1b,Age:5970,CustomNameVisible:1b,Health:999,PickupDelay:32767,Invulnerable:1b,CustomName:{"text":"❗❗❗",color:red,bold:true},Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"minecraft:air"}},Motion:[0.0,0.025,0.0],NoGravity:true}

attribute @s attack_knockback modifier add fmc.alerted 1 add_value
attribute @s step_height modifier add fmc.alerted 0.5 add_value
attribute @s movement_speed modifier add fmc.alerted 0.5 add_multiplied_total
attribute @s armor modifier add fmc.alerted 1 add_value
attribute @s armor_toughness modifier add fmc.alerted 1 add_value

function lzenl:f_mc/gameplay/combat/global_behaviour/alerted_weapon

execute on target unless entity @s[type=player] run return fail
team join aap @s




