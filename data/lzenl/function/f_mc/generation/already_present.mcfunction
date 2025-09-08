##
 # already_present.mcfunction
 # 
 #
 # Created by .
##

$execute if data storage f_mc:worldgen data.$(dim).$(x).$(z).$(y) run return fail
$data modify storage f_mc:worldgen data.$(dim).$(x) merge value {$(z): { $(y): 1b } }


$execute in $(dim) positioned $(cx) $(cy) $(cz) run function lzenl:f_mc/generation/start



return 1