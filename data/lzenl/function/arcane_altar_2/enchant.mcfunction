execute unless items block ~ ~-1 ~ container.1 enchanted_book unless score #quill_active .data matches 1 run return run function lzenl:arcane_altar_2/e_slot_clear


execute if data entity @s item.components.minecraft:custom_data.ench_item run return fail

execute if items block ~ ~-1 ~ container.1 *[item_name="execute"] run return run data remove storage temp data.ench_item

execute unless items block ~ ~-1 ~ container.1 *[minecraft:enchantable] run return fail




data modify entity @s item.components.minecraft:custom_data.ench_item set from block ~ ~-1 ~ Items[{Slot:1b}]

data remove storage temp data.ench_item

data modify storage temp data.ench_item set from entity @s item.components.minecraft:custom_data.ench_item
data modify storage temp data.ench_item.components.minecraft:item_model set from entity @s item.components.minecraft:custom_data.ench_item.id


data remove storage temp macro
data modify storage temp macro.name set string storage temp data.ench_item.id 10

function lzenl:arcane_altar_2/set_custom_name with storage temp macro
data modify storage temp data.ench_item.components.minecraft:item_name set value "execute"
