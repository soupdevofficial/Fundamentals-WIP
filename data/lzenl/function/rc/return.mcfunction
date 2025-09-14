##
 # return.mcfunction
 # 
 #
 # Created by .
##
advancement revoke @s only lzenl:rc/return

execute if items entity @s weapon.* *[custom_data~{spell:{}}] run function lzenl:scroll_table/spell/start

function lzenl:rc/store with entity @s

