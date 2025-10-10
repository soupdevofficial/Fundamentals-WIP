##
 # comet_init.mcfunction
 # 
 #
 # Created by .
##
execute store result storage temp data.random.1 int 1 run random value 0..360
execute store result storage temp data.random.2 int 2 run random value 6..30

function lzenl:f_mc/boss/enderdragon/comet_init2 with storage temp data.random