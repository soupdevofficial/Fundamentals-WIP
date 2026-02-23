
# reducerngtochunkrange.mcfunction

# tmprng = rng
scoreboard players operation #worldgen.local.tmprng .data = #worldgen.local.rng .data
# normalize sign
execute if score #worldgen.local.tmprng .data matches ..-1 run scoreboard players operation #worldgen.local.tmprng .data *= #vt_-1 .data
# reduce to 0..49
scoreboard players operation #worldgen.local.tmprng .data %= #chunk_size .data