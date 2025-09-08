##
 # break.mcfunction
 # 
 #
 # Created by .
##
execute on attacker run damage @s 2
execute on vehicle run kill @s

kill @s
playsound block.stone.break block @a ~ ~ ~ 1 0.5
particle item{item:"stone_button"} ~ ~0.1 ~ 0 0 0 0.12 10

