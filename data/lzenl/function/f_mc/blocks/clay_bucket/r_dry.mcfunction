##
 # r_dry.mcfunction
 # 
 #
 # Created by .
##
particle block{block_state:"clay"} ~ ~0.25 ~ 0.2 0.2 0.2 0.01 5
playsound block.gravel.place block @a[distance=..15]
playsound block.decorated_pot.hit block @a ~ ~ ~ 3 0


execute on attacker if entity @s[gamemode=creative] unless predicate lzenl:is_sneaking run return fail
summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:equippable":{slot:"head",equip_sound:"block.decorated_pot.fall",camera_overlay:"block/black_concrete",dispensable:true,equip_on_interact:true},"minecraft:profile":{"id":[I;471058477,1345538792,-2128953983,-1782150263],"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODU3ODc3MiwKICAicHJvZmlsZUlkIiA6ICIxMGUzZmY0NDQ4NDA0MjM4OWY3ZmNjZGY5MzYwYzA0ZSIsCiAgInByb2ZpbGVOYW1lIiA6ICJBSV9BZ2VudCIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9hOTZiYTc2YmNkMjNlY2UzNWE3NDlhY2I5NjhiYzMxNGE0ZDliZWI2NzQ0ODFkOWVmNzlhODExYzc0OWY1YWQ0IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"!minecraft:food":{},"minecraft:item_model":"player_head","minecraft:item_name":{"italic":false,"text":"Dry Clay Bucket"},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:6b,type:2},id:2}}}}

