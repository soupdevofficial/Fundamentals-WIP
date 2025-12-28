



playsound minecraft:block.note_block.pling record @s ^0 ^ ^ 0.60 0.629961 1
playsound minecraft:block.note_block.bass record @s ^0 ^ ^ 1 0.629961 1


scoreboard players set @s nbs_bgmstrs 5120
scoreboard players set @s nbs_bgmstrs_t 63



execute as @s[tag=!end.nbs_bgmstrs] run return fail
scoreboard players set @s nbs_bgmstrs 10240
scoreboard players set @s nbs_bgmstrs_t 128

playsound minecraft:block.note_block.snare record @s ^0 ^ ^ 0.10 0.529732 1





