##
 # next_page.mcfunction
 # 
 #
 # Created by .
##


item replace block ~ ~-1 ~ container.26 with poisonous_potato[item_name="execute",custom_name={text:"Down",color:white,italic:false},item_model="hopper",consumable={consume_seconds:999,sound:"intentionally_empty",animation:"none"},tooltip_display={hidden_components:["tooltip_display"]}] 1

item modify block ~ ~-1 ~ container.8 { "function": "minecraft:set_lore", "entity": "this", "lore": [ [ { "text": "current page: [ ", "type": "text", "color": "gray", "italic": false }, { "score": { "objective": ".data", "name": "#min_page" }, "type": "score", "color": "gray", "italic": false }, { "text": " / ", "type": "text", "color": "gray", "italic": false }, { "score": { "objective": ".data", "name": "#max_page" }, "type": "score" }, { "text": " ]", "type": "text", "color": "gray", "italic": false } ] ], "mode": "replace_all" }

item modify block ~ ~-1 ~ container.26 { "function": "minecraft:set_lore", "entity": "this", "lore": [ [ { "text": "current page: [ ", "type": "text", "color": "gray", "italic": false }, { "score": { "objective": ".data", "name": "#min_page" }, "type": "score", "color": "gray", "italic": false }, { "text": " / ", "type": "text", "color": "gray", "italic": false }, { "score": { "objective": ".data", "name": "#max_page" }, "type": "score" }, { "text": " ]", "type": "text", "color": "gray", "italic": false } ] ], "mode": "replace_all" }