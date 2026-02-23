# Dragon created via BDEngine

execute as @e[tag=fundamentals.boss.dragon_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=fundamentals.boss.dragon_root,type=block_display] at @s run tag @s add animation_loop
execute as @e[tag=fundamentals.boss.dragon_root,type=block_display] at @s run function lzenl:animations/ender_dragon/k/default/keyframe_0