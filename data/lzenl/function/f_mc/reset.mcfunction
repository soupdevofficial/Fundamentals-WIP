##
 # reset.mcfunction
 # f_mc
 #
 # Created by lzenl.
##
scoreboard objectives add .data dummy
scoreboard objectives add .id dummy
scoreboard objectives add temp dummy
scoreboard objectives add charge dummy
scoreboard objectives add active dummy
scoreboard objectives add element dummy
scoreboard objectives add animation dummy

scoreboard objectives add aurora dummy
scoreboard objectives add weapon.cooldown dummy
scoreboard players set #chunk_size .data 50
scoreboard players set #chunk_size_half .data 25


scoreboard objectives add dmg_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dmg_taken minecraft.custom:minecraft.damage_taken
data modify storage f_mc:combat data.elements set value {1:{1:4,2:0.5,3:2,4:0.5,5:1,6:2},2:{1:1,2:2,3:4,4:2,5:0.5,6:4},3:{1:0.5,2:4,3:0.5,4:1,5:1,6:0.5},4:{1:1,2:2,3:1,4:1,5:4,6:0.5},5:{1:1,2:1,3:2,4:4,5:1,6:2},6:{1:2,2:2,3:0.5,4:0.5,5:2,6:1}}








gamerule doLimitedCrafting true
gamerule snowAccumulationHeight 5
gamerule maxCommandChainLength 10000

#debug
#function lzenl:f_mc/gameplay/player/remove_bossbar {id:1}
#data remove storage temp data
#data remove storage fundamentals:world_generation data
#scoreboard players reset * .id

scoreboard objectives add died deathCount

team add noCollision "noCollision"
team modify noCollision collisionRule never

execute as @a run function lzenl:f_mc/gameplay/player/temp/temp_reset

data merge storage minecraft:temp {random:{offset:{x:1,y:1,z:1}},loc:"no_dimension",data:{item:{log:""}},saved:{pos:[]},check:{stripped:""},id:0}
