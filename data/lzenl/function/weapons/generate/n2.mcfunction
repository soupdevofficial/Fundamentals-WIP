execute store result score #random .data run random value 1..25

execute if score #random .data matches 1..13 run return run function lzenl:weapons/generate/n2a
function lzenl:weapons/generate/n2b