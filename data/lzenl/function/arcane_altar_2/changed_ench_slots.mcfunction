


execute if items entity @p[tag=user,distance=..6] player.cursor poisonous_potato[custom_name={text:"Stored Enchantment",italic:false}] run return run playsound block.beacon.power_select block @a[distance=..15] ~ ~ ~ 0.2 2



return run scoreboard players set #removed_ench .data 2

