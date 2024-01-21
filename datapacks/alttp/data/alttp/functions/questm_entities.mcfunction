##KILL
kill @e[type=item_display,tag=quest]
kill @e[type=text_display,tag=quest]
kill @e[type=interaction,tag=quest]

##Summon required display entities
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","bg"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.888888888f,0.54f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:225}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list1","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.0725f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list2","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.0725f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list3","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list4","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list5","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list6","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","listselect"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:235}}}
summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"left",billboard:"center",line_width:195,Tags:["quest","description"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.5f]},text:'{"text":"This is the final quest in this 9 quests demo made by CasperThePancake. Would you like to complain about a detail in his coding and make him cry? If so, log into Discord as Reevz and send a message in the ABTTP Discord server. Have fun!\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}',background:16711680}
summon interaction ~ ~ ~ {width:2f,height:2f,Tags:["quest","leftclick"]}
summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"center",billboard:"center",line_width:200,Tags:["quest","title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.5f]},text:'{"text":"title","color":"black"}',background:16711680}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed1","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed2","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed3","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed4","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed5","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed6","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}
summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}