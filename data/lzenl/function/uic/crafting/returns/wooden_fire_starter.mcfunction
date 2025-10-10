clear @p[distance=..1] string 1
clear @p[distance=..1] minecraft:wooden_pickaxe[minecraft:item_name="Brittle Stick"] 2
playsound minecraft:entity.villager.work_fletcher master @a[distance=..10] ~ ~ ~ 1 0.75
give @p[distance=..1] wooden_pickaxe[custom_data={return:1b,firestarter:1b},damage=0,max_damage=5,repair_cost=99,!attribute_modifiers,item_model="minecraft:lever",item_name="Wooden Fire Starter",consumable={consume_seconds:5,animation:"brush",sound:"block.bamboo_sapling.break",has_consume_particles:true},use_cooldown={seconds:5,cooldown_group:"woodfire"}] 1
advancement grant @p[distance=..1] only lzenl:game/2_craft