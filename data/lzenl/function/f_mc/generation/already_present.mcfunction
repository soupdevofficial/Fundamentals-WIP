$execute if data storage f_mc:worldgen data.$(dim).$(y)."$(x),$(z)" run return fail
$data modify storage f_mc:worldgen data.$(dim).$(y)."$(x),$(z)" set value 1b
return 1