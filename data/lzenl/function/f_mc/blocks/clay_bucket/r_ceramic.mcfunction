##
 # r_ceramic.mcfunction
 # 
 #
 # Created by .
##
particle block{block_state:"decorated_pot"} ~ ~0.25 ~ 0.2 0.2 0.2 0.01 5
playsound block.decorated_pot.shatter block @a[distance=..15]


execute on attacker if entity @s[gamemode=creative] unless predicate lzenl:is_sneaking run return fail
summon item ~ ~ ~ {Motion:[0.0,0.25,0.0],Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:equippable":{slot:"head",equip_sound:"block.decorated_pot.fall",camera_overlay:"block/black_concrete",dispensable:true,equip_on_interact:true},"minecraft:profile":{"id":[I;471058477,1345538792,-2128953983,-1782150263],"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODc2OTI4MywKICAicHJvZmlsZUlkIiA6ICJkNWRmZDkzNjA4MTg0YTdlYTgyOTNlMzFlZDY4MmI5OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJzY2htZWtlbGRvcmYiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM2NGEzZjU1YThjMTUyNmQ2MjgwZTViNzhiZTFmMjdhNGZlOTA4NDU4OTRiZjJiZmI4YjNkOTYxMTRmNzM0YSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"!minecraft:food":{},"minecraft:item_model":"player_head","minecraft:item_name":{"italic":false,"text":"Ceramic Bucket"},"minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"minecraft:custom_data":{item:{id:6b,type:2},id:3}}}}