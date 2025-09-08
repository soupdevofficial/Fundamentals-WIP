##
 # test4.mcfunction
 # 
 #
 # Created by .
##
scoreboard players remove test6 temp 1

execute if score test6 temp matches 20..60 store result score test5 temp run random value 1..4

execute if score test6 temp matches -10..20 store result score test5 temp run random value 3..5

execute if score test6 temp matches -30..-10 store result score test5 temp run random value 6..8

execute if score test6 temp matches ..-30 store result score test5 temp run random value 4..8

scoreboard players operation test4 temp += test5 temp


fillbiome ^-3 ^-1 ^-3 ^3 ^2 ^3 pale_garden


execute if score test4 temp matches 0..5 run fill ~ ~-15 ~ ~ ~-1 ~ crying_obsidian replace #mineable
execute if score test4 temp matches 6..10 run fill ~ ~-15 ~ ~ ~-1 ~ obsidian replace #mineable
execute if score test4 temp matches 11..16 run fill ~ ~-10 ~ ~ ~-1 ~ blackstone replace #mineable
execute if score test4 temp matches 17.. run fill ~ ~-6 ~ ~ ~-1 ~ mud replace #mineable
fill ~ ~-1 ~ ~ ~-1 ~ black_stained_glass replace crying_obsidian
