clear @p[distance=..1,gamemode=!creative] stick 1
clear @p[distance=..1,gamemode=!creative] leather 1
clear @p[distance=..1,gamemode=!creative] string 1
playsound minecraft:item.armor.equip_leather player @a[distance=..10] ~ ~ ~ 4 0
give @p[distance=..1] wooden_pickaxe[item_name="Wooden Handle",!tool,item_model="stick",!attribute_modifiers,repair_cost=99] 1
advancement grant @p[distance=..1] only lzenl:game/2_craft