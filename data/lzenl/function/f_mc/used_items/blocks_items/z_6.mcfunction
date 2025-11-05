




execute align xyz run summon armor_stand ~0.5 ~ ~0.5 {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["wet_clay_bucket"],attributes:[{id:"minecraft:scale",base:0.0625}],Passengers:[{id:"minecraft:item_display",NoGravity:1b,Silent:1b,teleport_duration:3,Tags:["clay_bucket"],transformation:[0.75f,0f,0f,0f,0f,0.75f,0f,0.3125f,0f,0f,0.75f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1152295001,-2141405902,-1396810705,-1211871690],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc0NTA1NjkyMjg3MCwKICAicHJvZmlsZUlkIiA6ICJlODE1MGY1MjlmZGU0YzdkYjI3OTAyZjJjNmU3NTc5ZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJCcmFkQm90XzIiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQ2MGQxYjAwMWVlMzI3MjgyODhhZTdlOGRmNDM4MDE4ODAzNzJhNzEwODE0MGNhYTIzYmY3MjU2ODY4ZDkiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}}}},{id:"minecraft:shulker",OnGround:1b,NoGravity:1b,Silent:1b,DeathTime:50,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:0.1f,Peek:0b,AttachFace:0b,Tags:["hb_2","scale_2"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:armor",base:0},{id:"minecraft:armor_toughness",base:0},{id:"minecraft:max_health",base:0.1},{id:"minecraft:scale",base:0.01}]}]}
execute store result score #temp .data run data get entity @s Rotation[0]

execute if score #temp .data matches -45..45 as @e[type=item_display,tag=wet_clay_bucket,distance=..1] run rotate @s -90 0

execute if score #temp .data matches 46..135 as @e[type=item_display,tag=wet_clay_bucket,distance=..1] run rotate @s 0 0

execute if score #temp .data matches 136..180 as @e[type=item_display,tag=wet_clay_bucket,distance=..1] run rotate @s 90 0

execute if score #temp .data matches -180..-136 as @e[type=item_display,tag=wet_clay_bucket,distance=..1] run rotate @s 90 0

execute if score #temp .data matches -135..-46 as @e[type=item_display,tag=wet_clay_bucket,distance=..1] run rotate @s 180 0

scoreboard players reset #temp .data

playsound block.decorated_pot.place block @a ~ ~ ~ 2 0


schedule function lzenl:f_mc/delayed_conditional 2t
return fail