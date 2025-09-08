##
 # vanilla_element.mcfunction
 # 
 #
 # Created by .
##


#{"color":"#999999","text":" [normal]"}
#{"color":"light_purple","text":" [magic]"}
#{"color":"#FF3C00","text":" [infernal]"}
#{"color":"#fcbd3f","text":" [light]"}
#{"color":"#176069","text":" [dark]"}
#{"color":"#8e31cc","text":" [abyssal]"}

execute at @s if items entity @s weapon.mainhand netherite_sword run return run function lzenl:f_mc/gameplay/combat/armor/z_get_item {lore:[{"italic":false,"color":"gray","text":"Element:"},{"color":"#FF3C00","text":" [infernal]"}],element:3}
execute at @s if items entity @s weapon.mainhand golden_sword run return run function lzenl:f_mc/gameplay/combat/armor/z_get_item {lore:[{"italic":false,"color":"gray","text":"Element:"},{"color":"light_purple","text":" [magic]"}],element:2}
execute at @s if items entity @s weapon.mainhand #swords run return run function lzenl:f_mc/gameplay/combat/armor/z_get_item {lore:[{"italic":false,"color":"gray","text":"Element:"},{"color":"#999999","text":" [normal]"}],element:1}

return fail




















