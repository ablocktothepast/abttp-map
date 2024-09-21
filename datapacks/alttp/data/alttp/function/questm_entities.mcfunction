##KILL
kill @e[type=item_display,tag=quest]
kill @e[type=text_display,tag=quest]
kill @e[type=interaction,tag=quest]

##Summon required display entities
summon item_display ~ ~ ~ {Tags:["quest","bg"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":225},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list1","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list2","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list3","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list4","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list5","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","list6","list"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":238},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.462f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","listselect"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":235},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.476f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"center",billboard:"center",line_width:195,Tags:["quest","description"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.5f]},text:'{"text":"This is the final quest in this 9 quests demo made by CasperThePancake. Would you like to complain about a detail in his coding and make him cry? If so, log into Discord as Reevz and send a message in the ABTTP Discord server. Have fun!\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"white"}',background:16711680}
summon interaction ~ ~ ~ {width:2f,height:2f,Tags:["quest","leftclick"]}
summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"center",billboard:"center",line_width:200,Tags:["quest","title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.5f]},text:'{"text":"title","color":"white"}',background:16711680}
summon item_display ~ ~ ~ {Tags:["quest","listselect"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":235},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.476f,0.077f,0.001f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","completed2","completed"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":239},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","completed3","completed"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":239},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","completed4","completed"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":239},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","completed5","completed"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":239},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.0f]}}
summon item_display ~ ~ ~ {Tags:["quest","completed6","completed"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":239},count:1,id:"minecraft:carrot_on_a_stick"},shadow_radius:0.0f,shadow_strength:0.0f,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.03f,0.03f,0.03f],translation:[0.0f,0.0f,0.0f]}}
#summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}
#summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}