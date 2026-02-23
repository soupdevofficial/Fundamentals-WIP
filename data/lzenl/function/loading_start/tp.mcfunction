
attribute @s movement_speed modifier remove loading
attribute @s gravity modifier remove loading

$execute positioned $(x) $(y) $(z) run tp @s ~ ~ ~


gamemode creative @s[tag=gmcr]
gamemode survival @s[tag=gmsu]
gamemode adventure @s[tag=gmad]
gamemode spectator @s[tag=gmsp]

tellraw @s "Loading Initialized - use /trigger fmc.info for help"

tag @s[tag=gmcr] remove gmcr
tag @s[tag=gmsu] remove gmsu
tag @s[tag=gmad] remove gmad
tag @s[tag=gmsp] remove gmsp


