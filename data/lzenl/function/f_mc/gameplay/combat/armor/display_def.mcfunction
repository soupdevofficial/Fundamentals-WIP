##
 # display_def.mcfunction
 # 
 #
 # Created by .
##
execute on passengers if entity @s[type=text_display,tag=display] run return run function lzenl:f_mc/gameplay/combat/armor/update_display





execute at @s[tag=boss] run return run title @a[distance=..150] actionbar ["-={ The Ender Dragon | ",{storage: "f_mc:combat", nbt: "data.display.bar", interpret: true}," | ",{storage: "f_mc:combat", nbt: "data.display.element", interpret: true},"}=-"]




execute at @s run summon text_display ~ ~2 ~ {Tags:[display],billboard:"vertical",text_opacity:255,shadow:0b,see_through:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1f,1f,1f]},background:5197647,text: [{"shadow_color":-13948117,storage: "f_mc:combat", nbt: "data.display.element", interpret: true},"\n",{"shadow_color":16777215,storage: "f_mc:combat", nbt: "data.display.bar", interpret: true}]}
execute at @s positioned ~ ~2 ~ run ride @n[type=text_display,tag=display,distance=..0.5] mount @s



