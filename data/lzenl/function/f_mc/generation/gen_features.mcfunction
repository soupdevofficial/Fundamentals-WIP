##
 # gen_features.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set #gen.offset.limit .data 15


execute if predicate lzenl:overworld run return run function lzenl:f_mc/generation/feature/overworld/generate

execute if predicate lzenl:the_nether run return run function lzenl:f_mc/generation/feature/nether/generate

execute if predicate lzenl:the_end run function lzenl:f_mc/generation/feature/end/generate


