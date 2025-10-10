function lzenl:uic/crafting/set_hp with entity @p[distance=..1]
effect give @s instant_health 1 1 true
execute unless items entity @s saddle wheat_seeds on passengers run ride @s dismount
execute on passengers run return fail
return 1