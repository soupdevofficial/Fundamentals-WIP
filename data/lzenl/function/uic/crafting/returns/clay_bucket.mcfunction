##
 # bloomery.mcfunction
 # 
 #
 # Created by .
##
clear @p[distance=..1,gamemode=!creative] clay_ball 3

playsound minecraft:entity.villager.work_leatherworker master @a[distance=..10] ~ ~ ~ 1 1.5


give @p[distance=..1] poisonous_potato[profile={"id":[I;471058477,1345538792,-2128953983,-1782150263],"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODI5ODQyMCwKICAicHJvZmlsZUlkIiA6ICI2N2M1NzUxMzY1Mzg0MWJjYTQ1MTkwY2IyZGFiMWEwOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJuaXRlc3RhbGtlcjg3IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzY4ODM2N2Q1MmQ5YTNkZjgxZGJjYzI2M2YwMmE3MmM3NzIwYjFiNmFkOTUxMDc0MGZiZjVkM2I3ZjgzNTJmYmMiCiAgICB9CiAgfQp9"}]},!food,item_model="player_head",item_name={"italic":false,"text":"Wet Clay Bucket"},consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:6b,type:2},id:1}] 1

advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/4_pottery
advancement grant @p[distance=..1] only lzenl:game/4_pottery/clay_bucket
advancement grant @p[distance=..1] only lzenl:game/5_master_potter claybucket