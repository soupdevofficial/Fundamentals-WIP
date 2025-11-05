clear @p[distance=..1] string 1
clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Brittle Stick"] 2
playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.75
give @p[distance=..1] wooden_pickaxe[!tool,consumable={consume_seconds:0,sound:"intentionally_empty",has_consume_particles:false},custom_data={item:{id:10b,type:3}},item_model="minecraft:lever",item_name="Wooden Fire Starter",minecraft:max_damage=10,minecraft:damage=0] 1
advancement grant @p[distance=..1] only lzenl:game/2_craft