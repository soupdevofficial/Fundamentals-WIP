##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute if block ~ ~-1 ~ barrel[facing=up]{CustomName:"Scroll Table"} run return fail
execute on passengers run kill @s
execute positioned ~ ~-0.5 ~ as @e[type=item,distance=..2] if items entity @s contents *[minecraft:item_name="execute"] run kill @s
execute positioned ~ ~-0.5 ~ as @e[type=item,distance=..2] if items entity @s contents *[minecraft:custom_name="Scroll Table"] run kill @s
kill @s
summon item ~ ~-0.5 ~ {PickupDelay:2,Motion:[0.0,0.1,0.0],Item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:custom_data":{item:{id:12b,type:2b}},"minecraft:item_model":"player_head","minecraft:item_name":"Scroll Table","minecraft:consumable":{consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false},"!minecraft:food":{},"minecraft:profile":{"name":"textures","id":[I;45551890,-252917559,-259190533,-137687857],"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2OTQyMzc5NDk1MCwKICAicHJvZmlsZUlkIiA6ICI1YTQzNmM4NWRiNGQ0N2UzODAyNDdlZmRiOTBkNWRlOSIsCiAgInByb2ZpbGVOYW1lIiA6ICJTYWJlclBhd3MiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjA2ZDAyYTkwMmI0ZTk3MmM3NGEwMjI4YTBmNDhlMzFjODcxZWNjMzg0OWFhM2M4NmJmNjkwN2FhMTEyOTcwIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]}}}}
return 1