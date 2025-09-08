##
 # break.mcfunction
 # 
 #
 # Created by .
##








execute at @s as @n[tag=bloomery_ui,distance=..0.5] run item replace entity @s horse.8 with stone_button[item_model="red_stained_glass_pane",item_name="execute",custom_name={text:"Place Small Campfire Inside the Bloomery to Activate it !",italic:false,color:red}]



execute as @s[tag=lit] run return run function lzenl:f_mc/blocks/small_campfire/is_lit


fill ~ ~ ~ ~ ~ ~ air replace light


execute on vehicle run function lzenl:f_mc/blocks/kill

particle item{item:"stick"} ~ ~0.1 ~ 0 0.1 0 0.12 30


playsound block.wood.break block @a ~ ~ ~ 2 0.5

