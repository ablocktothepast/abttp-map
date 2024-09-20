#KILL
kill @e[type=text_display,tag=bm]
kill @e[type=item_display,tag=bm]
kill @e[type=interaction,tag=bm]

#SUMMON
#Main
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","bg"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE018"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","sel"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.018f,0.018f,0.018f]},text:'{"text":"\\uE019"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","bb"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.1f,0.018f]},text:'{"text":"\\uE021"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","tb"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.018f]},text:'{"text":"\\uE022"}'}
execute at @p run summon interaction ~ ~ ~ {Tags:["bm","interact"],width:5,height:5}
summon item_display ~ ~ ~ {Tags:["bm","hl"],billboard:"center",brightness:{block:15,sky:15},item:{components:{"minecraft:custom_model_data":8007},count:1,id:"minecraft:carrot_on_a_stick"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[-2.3f,2.3f,-0.01f],translation:[0.0f,0.0f,0.0f]}}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","b_cancel"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0115f,0.0115f,0.001f]},text:'{"text":"\\uE046"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","b_left"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0115f,0.0115f,0.001f]},text:'{"text":"\\uE047"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","b_up"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0115f,0.0115f,0.001f]},text:'{"text":"\\uE048"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","b_right"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0115f,0.0115f,0.001f]},text:'{"text":"\\uE049"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","ind_1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.001f]},text:'{"text":"\\uE057"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","ind_2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.001f]},text:'{"text":"\\uE058"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","ind_3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.001f]},text:'{"text":"\\uE059"}'}

#Inventory items
execute if score @p spw_u_1 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i0","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE026"}'}
execute if score @p spw_u_2 matches 1 if score @p boomerangtier matches 1..2 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i1","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE027"}'}
execute if score @p spw_u_2 matches 1 if score @p boomerangtier matches 3 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i1","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE028"}'}
execute if score @p bombs matches 1.. run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i2","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE029"}'}
execute if score @p bombs matches 0 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i2","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE050"}'}
execute if score @p spw_u_3 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i3","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE030"}'}
execute if score @p spw_u_11 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i4","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE031"}'}
execute if score @p bottle_1 matches 0 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE045"}'}
execute if score @p bottle_1 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE051"}'}
execute if score @p bottle_1 matches 2 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE052"}'}
execute if score @p bottle_1 matches 3 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE053"}'}
execute if score @p bottle_1 matches 4 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE054"}'}
execute if score @p bottle_1 matches 5 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE055"}'}
execute if score @p bottle_1 matches 6 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i5","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE056"}'}
execute if score @p spw_u_18 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i7","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE032"}'}
execute if score @p spw_u_20 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i8","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE033"}'}
execute if score @p spw_u_5 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i9","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE034"}'}
execute if score @p spw_u_13 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i10","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE035"}'}
execute if score @p spw_u_10 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i11","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE036"}'}
execute if score @p bottle_2 matches 0 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE045"}'}
execute if score @p bottle_2 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE051"}'}
execute if score @p bottle_2 matches 2 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE052"}'}
execute if score @p bottle_2 matches 3 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE053"}'}
execute if score @p bottle_2 matches 4 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE054"}'}
execute if score @p bottle_2 matches 5 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE055"}'}
execute if score @p bottle_2 matches 6 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i12","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE056"}'}
execute if score @p spw_u_17 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i14","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE037"}'}
execute if score @p spw_u_16 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i15","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE038"}'}
execute if score @p spw_u_15 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i16","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE039"}'}
execute if score @p spw_u_9 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i17","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE040"}'}
execute if score @p spw_u_12 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i18","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE041"}'}
execute if score @p bottle_3 matches 0 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE045"}'}
execute if score @p bottle_3 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE051"}'}
execute if score @p bottle_3 matches 2 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE052"}'}
execute if score @p bottle_3 matches 3 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE053"}'}
execute if score @p bottle_3 matches 4 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE054"}'}
execute if score @p bottle_3 matches 5 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE055"}'}
execute if score @p bottle_3 matches 6 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i19","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE056"}'}
execute if score @p spw_u_6 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i21","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE042"}'}
execute if score @p spw_u_7 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i22","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE043"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i23","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE044"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i24","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE044"}'}
summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i25","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE044"}'}
execute if score @p bottle_4 matches 0 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE045"}'}
execute if score @p bottle_4 matches 1 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE051"}'}
execute if score @p bottle_4 matches 2 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE052"}'}
execute if score @p bottle_4 matches 3 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE053"}'}
execute if score @p bottle_4 matches 4 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE054"}'}
execute if score @p bottle_4 matches 5 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE055"}'}
execute if score @p bottle_4 matches 6 run summon text_display ~ ~ ~ {background:16711680,billboard:"center",Tags:["bm","i26","i"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.145f,0.145f,0.145f]},text:'{"text":"\\uE056"}'}

##Key menu
summon text_display ~ ~5 ~ {billboard:"center",line_width:150,Tags:["bm","km","description"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.085f,0.085f,0.085f]},text:'{"text":"This is a test description, welcome to the keys menu!\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","title1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.085f,0.085f,0.085f]},text:'{"text":"Key 1\\n"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","title2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.085f,0.085f,0.085f]},text:'{"text":"Key 2\\n"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","title3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.085f,0.085f,0.085f]},text:'{"text":"Key 3\\n"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","title4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.085f,0.085f,0.085f]},text:'{"text":""}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","icon1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.05f]},text:'{"text":"\\uE003"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","icon2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.05f]},text:'{"text":"\\uE003"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","icon3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.05f]},text:'{"text":"\\uE003"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",line_width:110,alignment:"left",Tags:["bm","km","icon4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.05f]},text:'{"text":"\\uE003"}',background:16711680}

##Adventure menu
execute if score @p pendant_courage matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","pen_c"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE062"}',background:16711680}
execute if score @p pendant_power matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","pen_p"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE063"}',background:16711680}
execute if score @p pendant_wisdom matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","pen_w"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE064"}',background:16711680}
execute if score @p crystal_1 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_2 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_3 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_4 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_5 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_5"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_6 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_6"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}
execute if score @p crystal_7 matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","cry_7"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.14f,0.14f,0.05f]},text:'{"text":"\\uE065"}',background:16711680}

execute if score @p heartpieces matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","hp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.05f]},text:'{"text":"\\uE066"}',background:16711680}
execute if score @p heartpieces matches 2 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","hp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.05f]},text:'{"text":"\\uE067"}',background:16711680}
execute if score @p heartpieces matches 3 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","hp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.05f]},text:'{"text":"\\uE068"}',background:16711680}
execute unless score @p heartpieces matches 1..3 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","as","hp"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.28f,0.28f,0.05f]},text:'{"text":"\\uE069"}',background:16711680}

##Equipment menu
execute if score @p hasquiver matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","quiver"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE070"}',background:16711680}
execute if score @p hasbombbag matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","bombbag"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE071"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","magic"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE072"}',background:16711680}
execute if score @p rupeepouchlevel matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","rupeepouch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE085"}',background:16711680}
execute if score @p rupeepouchlevel matches 2 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","rupeepouch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE086"}',background:16711680}
execute if score @p rupeepouchlevel matches 3 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","rupeepouch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE087"}',background:16711680}
execute if score @p rupeepouchlevel matches 4 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","rupeepouch"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.05f]},text:'{"text":"\\uE088"}',background:16711680}
execute if score @p haspegasus matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","boots"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.22f,0.22f,0.05f]},text:'{"text":"\\uE074"}',background:16711680}
execute if score @p handtier matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","glove"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.05f]},text:'{"text":"\\uE075"}',background:16711680}
execute if score @p handtier matches 2 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","glove"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.05f]},text:'{"text":"\\uE076"}',background:16711680}
summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","zora"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.05f]},text:'{"text":"\\uE077"}',background:16711680}
execute if score @p hasmoonpearl matches 1 run summon text_display ~ ~5 ~ {billboard:"center",Tags:["bm","em","moonpearl"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.24f,0.24f,0.05f]},text:'{"text":"\\uE078"}',background:16711680}