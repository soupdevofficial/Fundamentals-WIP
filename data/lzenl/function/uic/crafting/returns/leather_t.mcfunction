##
 # stone_axe.mcfunction
 # 
 #
 # Created by .
##




clear @p[distance=..1,gamemode=!creative] leather 8



give @p[distance=..1] leather_chestplate

playsound minecraft:item.armor.equip_leather master @a[distance=..10] ~ ~ ~ 1 0
advancement grant @p[distance=..1] only lzenl:game/2_craft
advancement grant @p[distance=..1] only lzenl:game/3_leatherarmor 2