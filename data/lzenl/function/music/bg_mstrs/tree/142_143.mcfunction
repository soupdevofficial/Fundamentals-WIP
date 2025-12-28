execute as @s[scores={nbs_bgmstrs=11360..11600,nbs_bgmstrs_t=..141}] run function lzenl:music/bg_mstrs/notes/142
tag @s remove nbs_bgmstrs
tag @s remove end.nbs_bgmstrs
scoreboard players reset @s nbs_bgmstrs
scoreboard players reset @s nbs_bgmstrs_t