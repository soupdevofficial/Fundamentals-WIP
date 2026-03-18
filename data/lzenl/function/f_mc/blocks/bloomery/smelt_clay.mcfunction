##
 # smelt_clay.mcfunction
 # 
 #
 # Created by .
##












execute if items block ~ ~-1 ~ container.15 *[!count=64] run item modify block ~ ~-1 ~ container.15 { "function": "minecraft:set_count", "count": 1, "add": true }


execute unless items block ~ ~-1 ~ container.15 * if score @s .id matches -2 run item replace block ~ ~-1 ~ container.15 with poisonous_potato[profile={"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc3MzQyODc2OTI4MywKICAicHJvZmlsZUlkIiA6ICJkNWRmZDkzNjA4MTg0YTdlYTgyOTNlMzFlZDY4MmI5OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJzY2htZWtlbGRvcmYiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM2NGEzZjU1YThjMTUyNmQ2MjgwZTViNzhiZTFmMjdhNGZlOTA4NDU4OTRiZjJiZmI4YjNkOTYxMTRmNzM0YSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},!food,item_model="player_head",item_name={"italic":false,"text":"Ceramic Bucket"},consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:6b,type:2},id:3}] 1
item modify block ~ ~-1 ~ container.4 { "function": "minecraft:set_count", "count": -1, "add": true }

scoreboard players remove #smelt .data 1


execute if score #smelt .data matches 1.. if items block ~ ~-1 ~ container.4 * if items block ~ ~-1 ~ container.15 *[!count=64] run return run function lzenl:f_mc/blocks/bloomery/smelt_clay