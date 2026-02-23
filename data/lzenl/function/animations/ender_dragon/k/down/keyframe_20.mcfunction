# Dragon created via BDEngine
execute in minecraft:the_end at @e[tag=fundamentals.boss.dragon_root,type=block_display] unless entity @e[type=slime,tag=fundamentals.boss.dragon_hp,distance=..300] run return run function lzenl:f_mc/boss/enderdragon/kill
schedule function lzenl:animations/ender_dragon/k/down/check_pause_20 3s