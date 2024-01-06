kill @e[type=item_display,tag=oakheart_alden]
kill @e[type=text_display,tag=oakheart_alden]

execute if score oakheart_alden_2 shops matches 1 run summon item_display -288 -11 700.8 {Rotation:[90F,0F],Tags:["shop_item","oakheart_alden","2"],item:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:1}}}
execute if score oakheart_alden_3 shops matches 1 run summon item_display -290 -11 698 {Rotation:[-90F,0F],Tags:["shop_item","oakheart_alden","3"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:50}}}
execute if score oakheart_alden_4 shops matches 1 run summon item_display -288 -11 696 {Rotation:[0F,0F],Tags:["shop_item","oakheart_alden","4"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:19}}}

execute if score oakheart_alden_2 shops matches 1 run summon text_display -288 -12 700.0 {Rotation:[180F,0F],Tags:["shop_price","oakheart_alden","2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:'{"text":"\\uE005 75"}',background:16711680}
execute if score oakheart_alden_3 shops matches 1 run summon text_display -289.0 -12 698 {Rotation:[-90F,0F],Tags:["shop_price","oakheart_alden","3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:'{"text":"\\uE005 40"}',background:16711680}
execute if score oakheart_alden_4 shops matches 1 run summon text_display -288 -12 697.0 {Rotation:[0F,0F],Tags:["shop_price","oakheart_alden","4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:'{"text":"\\uE005 25"}',background:16711680}