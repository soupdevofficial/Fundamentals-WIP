##
 # test.mcfunction
 # 
 #
 # Created by .
##
$give @s netherite_sword[item_name="$(name)",custom_name={text:"$(name)",color:"$(color)",italic:false},lore=["",$(lore),"",[{text:"Element: ",italic:false,color:gray},{text:"[$(lor_elem)]",color:"$(color)"}],[{text:"Recursion Depth: ",italic:false,color:gray},{text:"-={$(recurs)}=-",color:"#8e31cc"}]],custom_data={weapon:{skill:$(skill),element:$(element)b,sp:$(sp),type:$(type),dmg:$(dmg),atype:$(atype),range:$(range),reps:$(count)},return:1b},consumable={consume_seconds:0.125,animation:"crossbow",sound:"intentionally_empty",has_consume_particles:false},use_cooldown={seconds:0.1,cooldown_group:"skill:heroic"},use_effects={speed_multiplier:1,can_sprint:true}] 1