playsound block.mud.break

execute store result score #temp .data run data get entity @s Rotation[0]

execute if score #temp .data matches -45..45 run setblock ~ ~ ~ player_head[rotation=0]{note_block_sound:"minecraft:block.mud.break",profile:{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]}} replace

execute if score #temp .data matches 46..136 run setblock ~ ~ ~ player_head[rotation=4]{note_block_sound:"minecraft:block.mud.break",profile:{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]}} replace


execute if score #temp .data matches -136..-46 run setblock ~ ~ ~ player_head[rotation=12]{note_block_sound:"minecraft:block.mud.break",profile:{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]}} replace

execute if score #temp .data matches -180..-137 run setblock ~ ~ ~ player_head[rotation=8]{note_block_sound:"minecraft:block.mud.break",profile:{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]}} replace

execute if score #temp .data matches 137..180 run setblock ~ ~ ~ player_head[rotation=8]{note_block_sound:"minecraft:block.mud.break",profile:{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]}} replace

execute align y run summon interaction ~ ~ ~ {Silent:1b,width:0.51f,height:0.51f,response:1b,Tags:["fundamentals.block.wet_clay_bucket","fundamentals.block.clay_bucket_root"]}








