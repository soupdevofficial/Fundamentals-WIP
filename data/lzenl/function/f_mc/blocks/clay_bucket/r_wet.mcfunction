##
 # r_wet.mcfunction
 # 
 #
 # Created by .
##
particle block{block_state:"mud"} ~ ~0.25 ~ 0.2 0.2 0.2 0.01 5
playsound block.mud.place block @a[distance=..15] ~ ~ ~ 1 0.5


execute on attacker if entity @s[gamemode=creative] unless predicate lzenl:is_sneaking run return fail

summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:profile":{"id":[I;471058477,1345538792,-2128953983,-1782150263],"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]},"!minecraft:food":{},"minecraft:item_model":"player_head","minecraft:item_name":{"italic":false,"text":"Wet Clay Bucket"},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:6b,type:2},id:1}}}}