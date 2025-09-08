##
 # break.mcfunction
 # 
 #
 # Created by .
##

execute on vehicle run kill @s

kill @s
playsound block.stone.break block @a ~ ~ ~ 1 2
particle item{item:"stick"} ~ ~0.1 ~ 0 0 0 0.12 10

