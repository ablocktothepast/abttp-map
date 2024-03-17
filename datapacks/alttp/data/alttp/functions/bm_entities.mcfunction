#KILL
kill @e[type=item_display,tag=bm]
kill @e[type=interaction,tag=bm]

#SUMMON
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["bm","bg"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,0.001f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8001}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["bm","sel"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.115f,0.115f,0.004f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8005}}}
execute at @p run summon interaction ~ ~ ~ {Tags:["bm","interact"],width:5,height:5}