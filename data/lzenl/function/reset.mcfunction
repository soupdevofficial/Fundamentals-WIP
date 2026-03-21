##
 # reset.mcfunction
 # f_mc
 #
 # Created by lzenl.
##
say Running on Junction!
#core utility
scoreboard objectives add fmc.info trigger "info"
scoreboard objectives add .data dummy
scoreboard objectives add .id dummy
scoreboard objectives add .increment_1 dummy


execute unless score #seed .data matches -2147483648..2147483647 store result score #seed .data run seed

scoreboard objectives add fishing minecraft.used:minecraft.fishing_rod

#temperature
scoreboard objectives add temp dummy


scoreboard objectives add active dummy


scoreboard objectives add animation dummy


scoreboard objectives add aurora dummy


#weapon/ dmg related
scoreboard objectives add weapon.cooldown dummy
scoreboard objectives add weapon.timer_delta dummy
scoreboard objectives add weapon.timer_old dummy

scoreboard objectives add dmg_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dmg_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add dmg_dealt_absorbed minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add dmg_taken_absorbed minecraft.custom:minecraft.damage_absorbed

scoreboard objectives add skills.range dummy
scoreboard objectives add skills.reps dummy



#dialogue related

scoreboard objectives add dlg_speed dummy
scoreboard objectives add dlg_next dummy
scoreboard objectives add dlg_adv dummy

scoreboard objectives add died deathCount


data modify storage f_mc:combat data.elements set value {1:{1:4,2:0.5,3:2,4:0.5,5:1,6:2,got:1},2:{1:1,2:2,3:4,4:2,5:0.5,6:4,got:2},3:{1:0.5,2:4,3:0.5,4:1,5:1,6:0.5,got:3},4:{1:1,2:2,3:1,4:1,5:4,6:0.5,got:4},5:{1:1,2:1,3:2,4:4,5:1,6:2,got:5},6:{1:2,2:2,3:0.5,4:0.5,5:2,6:1,got:6}}


scoreboard objectives add nbs_allsoulsho dummy
scoreboard objectives add nbs_allsoulsho_t dummy

scoreboard players set #5 .data 5
scoreboard players set #100 .data 100

scoreboard players set #rng.count.mod .data 1000
scoreboard players set #rng.count.div .data 40

scoreboard players set #worldgen.global.rng.mod .data 2147483647
scoreboard players set #worldgen.local.rng.mult3 .data 142313731
scoreboard players set #worldgen.local.rng.mult2 .data 34734223
scoreboard players set #worldgen.local.rng.divmod .data 97
scoreboard players set #worldgen.global.rng.postmult .data 673745223

scoreboard players set #chunk_size .data 50
scoreboard players set #chunk_size_half .data 25
scoreboard players set #music.speed.slow .data 40
scoreboard players set #-1000 .data -1000
scoreboard players set #vt_-1 .data -1
scoreboard players set #vt_2 .data 2
scoreboard players set #vt_scale .data 1024
scoreboard players operation #vt_scale2 .data = #vt_scale .data
scoreboard players operation #vt_scale2 .data *= #vt_scale .data
scoreboard players set #dmg_max_multi .data 4000
scoreboard players set #chunk_distance .data 2


gamerule limited_crafting true
gamerule max_snow_accumulation_height 5
gamerule max_command_sequence_length 999999
gamerule keep_inventory true




team add aap "angry_at_player"
team modify aap friendlyFire false
team modify aap color red


team add noCollision "noCollision"
team modify noCollision collisionRule never
execute as @a run function lzenl:f_mc/gameplay/player/temp/temp_reset
data merge storage minecraft:temp {random:{offset:{x:1,y:1,z:1}},loc:"no_dimension",data:{item:{log:""}},saved:{pos:[]},check:{stripped:""},id:0}

forceload add 0 0 0 0