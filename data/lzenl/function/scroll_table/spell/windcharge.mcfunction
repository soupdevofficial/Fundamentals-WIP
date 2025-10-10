playsound entity.wind_charge.throw player
execute positioned ~ ~1.62 ~ run summon breeze_wind_charge ^ ^ ^1 {Tags:["motion"]}
execute as @n[tag=motion] at @s run function lzenl:motion/start