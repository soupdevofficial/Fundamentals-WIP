##
 # write.mcfunction
 # 
 #
 # Created by .
##





execute unless score @s dlg_speed matches ..0 run return run function lzenl:dialogue/technical/speed
execute store result score @s dlg_speed run data get storage f_mc:story data.text.speed

data modify storage f_mc:story data.text.read append string storage f_mc:story data.text.hold 0 1
execute store success score #return .data run data modify storage f_mc:story data.text.hold set string storage f_mc:story data.text.hold 1
execute as @n[tag=test] run data modify entity @s text set value {"interpret":true,"nbt":"data.text.read","storage":"f_mc:story"}

execute unless score #return .data matches 1 run return run function lzenl:dialogue/text/root
advancement revoke @s only lzenl:f_mc/check/dialogue


data merge storage f_mc:story {data:{dntread:" "}}

execute store success score #return .data run data modify storage f_mc:story data.dntread set from storage f_mc:story data.text.read[-1]

execute unless score #return .data matches 1 run return fail
playsound minecraft:block.note_block.didgeridoo neutral @s ~ ~ ~ 10 0.5