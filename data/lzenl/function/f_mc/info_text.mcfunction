##
 # info.mcfunction
 # 
 #
 # Created by .
##

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nversion: beta 1.0\n\n"


execute if score @s fmc.info matches 1 run return run tellraw @s [{text:"  [2] gameplay\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 2"}},{text:"  [3] settings\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 3"}},{text:"  [4] donation / socials",click_event:{action:"run_command",command:"trigger fmc.info set 4"}}]





execute if score @s fmc.info matches 2 run return run tellraw @s [{text:"  [20] crafting\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 20"}},{text:"  [21] fishing\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 21"}},{text:"  [22] farming\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 22"}},{text:"  [23] cooking\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 23"}},{text:"  [24] combat\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 24"}},{text:"  [25] mining\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 25"}},{text:"  [26] foraging\n\n",click_event:{action:"run_command",command:"trigger fmc.info set 26"}},{text:"  [27] archeology",click_event:{action:"run_command",command:"trigger fmc.info set 27"}},{text:"\n\n  [1] <- back",click_event:{action:"run_command",command:"trigger fmc.info set 1"}}]




execute if score @s fmc.info matches 3 run return run tellraw @s "  [30] set custom chunk distance\n\n"





execute if score @s fmc.info matches 4 run return run tellraw @s ["",{text:"  This Datapack was made by the Soup Dev Team",hover_event:{action:"show_text",value:[{text:"current members:",color:"gray"},"\n\n",{text:"lzenl",color:"gray"}]}},{text:"\n\n"},{text:"    [Ko-fi] - donate here!",color:"dark_aqua",click_event:{action:"copy_to_clipboard",value:"https://ko-fi.com/soupdevofficial"},hover_event:{action:"show_text",value:[{text:"copy link: https://ko-fi.com/soupdevofficial",color:"blue"}]}},{text:"\n\n"},{text:"    [Youtube]",color:"dark_red",click_event:{action:"copy_to_clipboard",value:"https://www.youtube.com/@SoupDev_official"},hover_event:{action:"show_text",value:[{text:"copy link: https://www.youtube.com/@SoupDev_official",color:"blue"}]}},{text:"\n\n"},{text:"    [Modrinth]",color:"dark_green",click_event:{action:"copy_to_clipboard",value:"https://modrinth.com/user/soupdev"},hover_event:{action:"show_text",value:[{text:"copy link: https://modrinth.com/user/soupdev",color:"blue"}]}},{text:"\n\n  [1] <- back",click_event:{action:"run_command",command:"trigger fmc.info set 1"}}]







execute if score @s fmc.info matches 20 run return run tellraw @s " [211] hand crafting\n [212] crafting table\n [213] scroll table"
execute if score @s fmc.info matches 21 run return run tellraw @s ""
execute if score @s fmc.info matches 22 run return run tellraw @s ""
execute if score @s fmc.info matches 23 run return run tellraw @s ""
execute if score @s fmc.info matches 25 run return run tellraw @s ""
execute if score @s fmc.info matches 26 run return run tellraw @s ""
execute if score @s fmc.info matches 27 run return run tellraw @s ""

