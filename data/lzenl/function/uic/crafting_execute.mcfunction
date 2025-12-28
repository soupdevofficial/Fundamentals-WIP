#logic for executing functions
$execute if entity @p[gamemode=creative] run function lzenl:uic/crafting/returns/$(item)
$execute unless entity @p[gamemode=creative] if function lzenl:uic/crafting/requires/$(item) run function lzenl:uic/crafting/returns/$(item)
kill @s