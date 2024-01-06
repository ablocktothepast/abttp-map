##Summon required display entities
execute unless entity @e[type=item_display,tag=bg] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","bg"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.888888888f,0.54f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:225}}}
execute unless entity @e[type=item_display,tag=list1] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list1","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.0725f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=list2] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list2","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.0725f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=list3] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list3","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=list4] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list4","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=list5] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list5","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=list6] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","list6","list"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:226}}}
execute unless entity @e[type=item_display,tag=listselect] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","listselect"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4005f,0.072f,0.11f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:235}}}
execute unless entity @e[type=text_display,tag=description] run summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"left",billboard:"center",line_width:195,Tags:["quest","description"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.09f,0.09f,0.5f]},text:'{"text":"This is the final quest in this 9 quests demo made by CasperThePancake. Would you like to complain about a detail in his coding and make him cry? If so, log into Discord as Reevz and send a message in the ABTTP Discord server. Have fun!\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"black"}',background:16711680}
execute unless entity @e[type=interaction,tag=leftclick] run summon interaction ~ ~ ~ {width:2f,height:2f,Tags:["quest","leftclick"]}
execute unless entity @e[type=text_display,tag=title] run summon text_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},alignment:"center",billboard:"center",line_width:200,Tags:["quest","title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.5f]},text:'{"text":"title","color":"black"}',background:16711680}
execute unless entity @e[type=item_display,tag=completed1] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed1","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=completed2] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed2","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=completed3] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed3","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=completed4] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed4","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=completed5] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed5","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=completed6] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","completed6","completed"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.03f,0.03f,0.15f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:239}}}
execute unless entity @e[type=item_display,tag=switchfirstperson] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}
execute unless entity @e[type=item_display,tag=switchfirstperson2] run summon item_display ~ ~ ~ {shadow_radius:0f,shadow_strength:0f,brightness:{sky:15,block:15},billboard:"center",Tags:["quest","switchfirstperson2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:271}}}

execute unless score init quests matches 1 run function alttp:questm_list_scroll
execute unless score init quests matches 1 as @e[type=text_display,tag=title] run function alttp:questm_titles
execute unless score init quests matches 1 as @e[type=text_display,tag=description] run function alttp:questm_descriptions
execute unless score init quests matches 1 run function alttp:questm_list_scroll
scoreboard players set init quests 1

##Bossbar instructions
bossbar add quests [{"text":"Left-click to switch type"},{"text":" | ","color":"gray","bold":true},{"text":"Right-click to mark"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
bossbar set quests visible true
bossbar set quests players @p
bossbar set quests color white
bossbar set quests max 100
bossbar set quests value 100

##Freeze player
tp @p @e[type=marker,tag=playerpos,limit=1]

##Align elements
execute at @p run tp @e[type=item_display,tag=bg] ^ ^1.6205 ^0.35
execute at @p run tp @e[type=item_display,tag=list1] ^0.225 ^1.7648 ^0.345
execute at @p run tp @e[type=item_display,tag=list2] ^0.225 ^1.691 ^0.345
execute at @p run tp @e[type=item_display,tag=list3] ^0.225 ^1.618 ^0.345
execute at @p run tp @e[type=item_display,tag=list4] ^0.225 ^1.546 ^0.345
execute at @p run tp @e[type=item_display,tag=list5] ^0.225 ^1.473 ^0.345
execute at @p run tp @e[type=item_display,tag=list6] ^0.225 ^1.399 ^0.345
execute at @p run tp @e[type=text_display,tag=description] ^-0.2 ^1.37 ^0.3445
execute at @p run tp @e[type=text_display,tag=title] ^-0.2 ^1.8125 ^0.345
execute at @p run tp @e[type=item_display,tag=completed1] ^0.05 ^1.7648 ^0.345
execute at @p run tp @e[type=item_display,tag=completed2] ^0.05 ^1.691 ^0.345
execute at @p run tp @e[type=item_display,tag=completed3] ^0.05 ^1.618 ^0.345
execute at @p run tp @e[type=item_display,tag=completed4] ^0.05 ^1.546 ^0.345
execute at @p run tp @e[type=item_display,tag=completed5] ^0.05 ^1.473 ^0.345
execute at @p run tp @e[type=item_display,tag=completed6] ^0.05 ^1.399 ^0.345
execute at @p unless entity @e[type=marker,tag=quest_switchalign] run function alttp:questm_switchalign
execute at @p run tp @e[type=interaction,tag=leftclick] ~ ~ ~

##Select texture
execute if score selected quests matches 1 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.7648 ^0.344
execute if score selected quests matches 2 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.691 ^0.344
execute if score selected quests matches 3 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.618 ^0.344
execute if score selected quests matches 4 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.546 ^0.344
execute if score selected quests matches 5 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.473 ^0.344
execute if score selected quests matches 6 at @p run tp @e[type=item_display,tag=listselect] ^0.225 ^1.399 ^0.344

##Inventory
item replace entity @p hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}

##Left click detection
execute if data entity @e[type=interaction,tag=leftclick,limit=1] attack run function alttp:questm_type_switch

##Right click detection
execute if data entity @e[type=interaction,tag=leftclick,limit=1] interaction run function alttp:questm_mark

##Scrolling detection
execute store result score newscroll quests run data get entity @p SelectedItemSlot
execute if score newscroll quests matches 8 if score oldscroll quests matches 0 run function alttp:questm_select_up
execute if score newscroll quests matches 8 if score oldscroll quests matches 0 store result score oldscroll quests run data get entity @p SelectedItemSlot
execute if score newscroll quests matches 0 if score oldscroll quests matches 8 run function alttp:questm_select_down
execute if score newscroll quests matches 0 if score oldscroll quests matches 8 store result score oldscroll quests run data get entity @p SelectedItemSlot
execute if score newscroll quests > oldscroll quests run function alttp:questm_select_down
execute if score newscroll quests < oldscroll quests run function alttp:questm_select_up
execute store result score oldscroll quests run data get entity @p SelectedItemSlot

#FX
effect give @p blindness infinite 255 true
effect give @p speed infinite 0 true

##Quest mapping
execute if score @p quest_sneaking matches 1.. run function alttp:questm_close