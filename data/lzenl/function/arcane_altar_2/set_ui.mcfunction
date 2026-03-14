##
 # set_ui.mcfunction
 # 
 #
 # Created by .
##






#enchant slot
function lzenl:arcane_altar_2/enchant

#respect borders and player items
execute as @a[distance=..6,tag=user] run function lzenl:arcane_altar_2/borders


#remove enchantments
function lzenl:arcane_altar_2/remove_ench
#get old stored_count
execute store result score #old_stored_ench_count .data run data get entity @s item.components."minecraft:custom_data".stored_ench
#store enchantments
#get block data (items stored)
data modify entity @s item.components."minecraft:custom_data".stored_ench append from block ~ ~-1 ~ Items[{id:"minecraft:enchanted_book"}]
#display enchantments in correct slots and pages
data remove storage temp data.stored_ench
    #show only current page
data modify storage temp data.stored_ench set from entity @s item.components."minecraft:custom_data".stored_ench
execute store result score #stored_ench_count .data run data get entity @s item.components."minecraft:custom_data".stored_ench
scoreboard players set #page_borderbottom .data 15
scoreboard players operation #page_borderbottom .data *= @s .data
function lzenl:arcane_altar_2/remove_bottom
execute store result score #page_bordertop .data run data get storage temp data.stored_ench
function lzenl:arcane_altar_2/remove_top
data modify storage temp data.stored_ench[0] merge value {Slot:3b}
data modify storage temp data.stored_ench[1] merge value {Slot:4b}
data modify storage temp data.stored_ench[2] merge value {Slot:5b}
data modify storage temp data.stored_ench[3] merge value {Slot:6b}
data modify storage temp data.stored_ench[4] merge value {Slot:7b}
data modify storage temp data.stored_ench[5] merge value {Slot:12b}
data modify storage temp data.stored_ench[6] merge value {Slot:13b}
data modify storage temp data.stored_ench[7] merge value {Slot:14b}
data modify storage temp data.stored_ench[8] merge value {Slot:15b}
data modify storage temp data.stored_ench[9] merge value {Slot:16b}
data modify storage temp data.stored_ench[10] merge value {Slot:21b}
data modify storage temp data.stored_ench[11] merge value {Slot:22b}
data modify storage temp data.stored_ench[12] merge value {Slot:23b}
data modify storage temp data.stored_ench[13] merge value {Slot:24b}
data modify storage temp data.stored_ench[14] merge value {Slot:25b}
data modify storage temp data.stored_ench[] merge value {id:"minecraft:poisonous_potato",components:{custom_name:{text:"Stored Enchantment",italic:false},"minecraft:item_name":"execute",lore:["",{text:"click with Enchanting Quill to remove",italic:false,color:dark_gray},""],item_model:"minecraft:enchanted_book",enchantment_glint_override:true,rarity:rare}}

scoreboard players reset #quill_active .data

execute if items block ~ ~-1 ~ container.19 #is_ui[item_name="Enchanting Quill",!damage=10] store success score #quill_active .data run data modify storage temp data.stored_ench append from block ~ ~-1 ~ Items[{Slot:19b}]
data modify storage temp data.stored_ench append from storage temp data.ench_item

execute if score #removed_ench .data matches 1 run function lzenl:arcane_altar_2/dmg_quill
data modify block ~ ~-1 ~ Items set from storage temp data.stored_ench
execute if score #old_stored_ench_count .data < #stored_ench_count .data run playsound block.enchantment_table.use block @a[distance=..12] ~ ~ ~ 1 0.5 0 


scoreboard players operation #show_add_ench_onslot .data = #stored_ench_count .data
scoreboard players operation #show_add_ench_onslot .data %= #15 .data
scoreboard players add #show_add_ench_onslot .data 3

scoreboard players set #15 .data 15
scoreboard players operation #show_add_ench_onpage .data = #stored_ench_count .data
scoreboard players operation #show_add_ench_onpage .data /= #15 .data

scoreboard players set #min_page .data 1
scoreboard players operation #min_page .data += @s .data
scoreboard players set #max_page .data 1
scoreboard players operation #max_page .data += #show_add_ench_onpage .data

execute if score @s .data = #show_add_ench_onpage .data run function lzenl:arcane_altar_2/display_add_ench

#set borders
item replace block ~ ~-1 ~ container.0 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.2 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1

execute if score @s .data matches 1.. run function lzenl:arcane_altar_2/before_page

execute if score @s .data matches 0 run item replace block ~ ~-1 ~ container.8 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1

item replace block ~ ~-1 ~ container.9 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.10 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.11 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.17 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.18 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1
item replace block ~ ~-1 ~ container.20 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1

execute if score @s .data < #show_add_ench_onpage .data run function lzenl:arcane_altar_2/next_page

execute if score @s .data >= #show_add_ench_onpage .data run item replace block ~ ~-1 ~ container.26 with poisonous_potato[!food,item_name="execute",custom_name="",item_model="black_stained_glass_pane",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hide_tooltip:true}] 1

