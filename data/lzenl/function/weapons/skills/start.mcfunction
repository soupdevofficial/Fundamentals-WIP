#repeats
execute store result score #skill.reps .data run data get entity @s SelectedItem.components.minecraft:custom_data.weapon.reps
#range
execute store result score #skill.range .data run data get entity @s SelectedItem.components.minecraft:custom_data.weapon.range



# attack type -> is it slash ? pierce ? or strike ? -> determines HB
execute store result score #skill.type .data run data get entity @s SelectedItem.components.minecraft:custom_data.weapon.atype
# what kind of skill is used?
execute store result score #skill.skill .data run data get entity @s SelectedItem.components.minecraft:custom_data.weapon.skill
# extra skill dash pull push?
execute store result score #skill.special .data run data get entity @s SelectedItem.components.minecraft:custom_data.weapon.sp





execute if score #skill.skill .data matches 1 run return run function lzenl:weapons/skills/skill/aoe
execute if score #skill.skill .data matches 2 run return run function lzenl:weapons/skills/skill/forward
execute if score #skill.skill .data matches 3 run return run function lzenl:weapons/skills/skill/chain
execute if score #skill.skill .data matches 4..5 run function lzenl:weapons/skills/skill/field
