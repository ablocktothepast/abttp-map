#KILL
kill @e[type=text_display,tag=bm]
kill @e[type=item_display,tag=bm]
kill @e[type=interaction,tag=bm]

#SUMMON
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","bg"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE018"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","sel"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.018f,0.018f,0.018f]},text:'{"text":"\\uE019"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","bb"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.1f,0.018f]},text:'{"text":"\\uE021"}'}
execute at @p run summon interaction ~ ~ ~ {Tags:["bm","interact"],width:5,height:5}