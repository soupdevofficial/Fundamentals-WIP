##
 # test.mcfunction
 # 
 #
 # Created by .
##
fill ^-10 ^30 ^-20 ^10 ^10 ^20 air replace #logs
fill ^-10 ^ ^-20 ^10 ^10 ^20 air replace #logs
fill ^-10 ^ ^-20 ^10 ^10 ^20 air replace #replaceable_gen

scoreboard players set test6 temp 60
data modify storage temp data.test set value 25
function lzenl:f_mc/generation/feature/end/rift/1_lenght with storage temp data

scoreboard players set test6 temp 60
data modify storage temp data.test set value 25
function lzenl:f_mc/generation/feature/end/rift/1_lenght with storage temp data
 