##
 # comet.mcfunction
 # 
 #
 # Created by .
##

playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..200] ~ ~ ~ 1 0
summon snowball ~ ~20 ~ {Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"dust_color_transition",from_color:[0.667,0.000,1.000],scale:2,to_color:[0.933,0.000,1.000]},ReapplicationDelay:1,Radius:2f,RadiusPerTick:0.05f,RadiusOnUse:2f,Duration:30,WaitTime:40,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:1}]},Tags:["abyss"]},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:crying_obsidian"},Time:550,DropItem:0b,CancelDrop:1b,HurtEntities:1b,FallHurtMax:10,FallHurtAmount:5f}],Item:{id:"minecraft:end_crystal",count:1,components:{"minecraft:item_model":"minecraft:air"}}}

