
tag @s add skill.set

execute at @s run item replace entity @s contents from entity @p[distance=..10,tag=user] weapon.mainhand

rotate @s ~ ~

#skill.type = slash / pierce / strike
execute if score #skill.type .data matches 1 run tag @s add s.slash
execute if score #skill.type .data matches 2 run tag @s add s.pierce
execute if score #skill.type .data matches 3 run tag @s add s.strike

execute if score #skill.skill .data matches 1..3 run tag @s add s.move


#skill.element
function lzenl:weapons/skills/element


#setid
scoreboard players operation @s .id = @p[tag=user] .id

#range
scoreboard players operation @s skills.range = #skill.range .data
#reps
scoreboard players operation @s skills.reps = #skill.reps .data

data merge entity @s {view_range:0f,teleport_duration:1,transformation:[2.11e-8f,0f,-1f,0f,-0.7071067812f,-0.7071067812f,-1.49e-8f,0f,-0.7071067812f,0.7071067812f,-1.49e-8f,0f,0f,0f,0f,1f]}
#delay



execute store result score @s weapon.cooldown run random value 0..20


