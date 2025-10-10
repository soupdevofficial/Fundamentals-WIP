##
 # crafting_execute.mcfunction
 # 
 #
 # Created by .
##
$execute if function lzenl:uic/crafting/requires/$(item) run function lzenl:uic/crafting/returns/$(item)
kill @s