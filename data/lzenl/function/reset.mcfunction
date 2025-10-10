##
 # reset.mcfunction
 # f_mc
 #
 # Created by lzenl.
##
say Running on Junction!

scoreboard objectives add .data dummy
scoreboard objectives add .id dummy
scoreboard objectives add temp dummy
scoreboard objectives add charge dummy
scoreboard objectives add active dummy
scoreboard objectives add element dummy
scoreboard objectives add animation dummy
scoreboard objectives add aurora dummy
scoreboard objectives add weapon.cooldown dummy
scoreboard objectives add dmg_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dmg_taken minecraft.custom:minecraft.damage_taken
data modify storage f_mc:combat data.elements set value {1:{1:4,2:0.5,3:2,4:0.5,5:1,6:2},2:{1:1,2:2,3:4,4:2,5:0.5,6:4},3:{1:0.5,2:4,3:0.5,4:1,5:1,6:0.5},4:{1:1,2:2,3:1,4:1,5:4,6:0.5},5:{1:1,2:1,3:2,4:4,5:1,6:2},6:{1:2,2:2,3:0.5,4:0.5,5:2,6:1}}
scoreboard objectives add nbs_allsoulsho dummy
scoreboard objectives add nbs_allsoulsho_t dummy
scoreboard players set #chunk_size .data 50
scoreboard players set #chunk_size_half .data 25
scoreboard players set speed nbs_allsoulsho 40
scoreboard players set #-1000 .data -1000
scoreboard players set #vt_-1 .data -1
scoreboard players set #vt_scale .data 1024
scoreboard players operation #vt_scale2 .data = #vt_scale .data
scoreboard players operation #vt_scale2 .data *= #vt_scale .data
scoreboard players set #dmg_max_multi .data 4000
gamerule doLimitedCrafting true
gamerule snowAccumulationHeight 5
gamerule maxCommandChainLength 10000
scoreboard objectives add died deathCount
team add noCollision "noCollision"
team modify noCollision collisionRule never
execute as @a run function lzenl:f_mc/gameplay/player/temp/temp_reset
data merge storage minecraft:temp {random:{offset:{x:1,y:1,z:1}},loc:"no_dimension",data:{item:{log:""}},saved:{pos:[]},check:{stripped:""},id:0}

