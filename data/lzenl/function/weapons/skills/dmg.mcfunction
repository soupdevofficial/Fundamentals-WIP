

#push



#pull


#dmg
tag @s[tag=!hit] add hit

execute store result score #sk.max_hp .data run data get entity @s Health 10
$damage @s $(dmg) mob_attack_no_aggro by @n[tag=skill.set,type=item_display]
tag @s add comb.man.dmg
execute store result score #dmged_hp .data run data get entity @s Health 10

execute if score #dmged_hp .data matches 1.. store result score @n[tag=skill.set,type=item_display] dmg_dealt run scoreboard players operation #sk.max_hp .data -= #dmged_hp .data

execute unless score #dmged_hp .data matches 1.. store result score @n[tag=skill.set,type=item_display] dmg_dealt run scoreboard players get #sk.max_hp .data
tag @s remove hit

function lzenl:f_mc/gameplay/combat/armor/check