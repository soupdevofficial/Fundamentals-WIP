

playsound item.flintandsteel.use master @a ~ ~ ~ 1 2 1



execute store result score #random .data run random value 1..3

execute if score #random .data matches 1 run return run playsound entity.item.break

execute align xyz run fill ~ ~ ~ ~ ~ ~ fire replace #air

