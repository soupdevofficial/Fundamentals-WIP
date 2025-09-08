##
 # fill_up.mcfunction
 # 
 #
 # Created by .
##

execute if items entity @n[tag=bloomery_ui,type=donkey,distance=..1] horse.1 raw_copper run scoreboard players set @s .id 0
execute if items entity @n[tag=bloomery_ui,type=donkey,distance=..1] horse.1 raw_iron run scoreboard players set @s .id 1
execute if items entity @n[tag=bloomery_ui,type=donkey,distance=..1] horse.1 raw_gold run scoreboard players set @s .id 2

item replace entity @s contents with player_head[profile={properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc0NDg4NzUzMzkwMSwKICAicHJvZmlsZUlkIiA6ICI2YzU1NzMyMzg3NzI0YWUwYWZjNjg5YzI3MmU2OTUwZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQYWRkeWs0NSIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9mMjYzZGJiYmI5YzM0NDllMTY5NWIyMzE4OGY1OTcxZmQxN2MxMTUwMDczMTlkYmMyZmYwM2FlZTNhNGJjYmMiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}] 1


advancement grant @p only lzenl:game/5_bloom

tag @s add filled

scoreboard players set @s active 60
