execute positioned -281 14 642 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat1 gameplay matches 1.. if score 6 quests_2_progress matches 1 run scoreboard players set agathacat1 gameplay 1
execute positioned -275 15 600 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat2 gameplay matches 1.. if score 6 quests_2_progress matches 2 run scoreboard players set agathacat2 gameplay 1
execute positioned -331 14 647 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat3 gameplay matches 1.. if score 6 quests_2_progress matches 3 run scoreboard players set agathacat3 gameplay 1

##Agatha cat animation 1
execute if score agathacat1 gameplay matches 1.. run scoreboard players add agathacat1 gameplay 1
execute if score agathacat1 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat1 gameplay matches 1.. run attribute @p minecraft:generic.entity_interaction_range base set 0
execute if score agathacat1 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat1 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -281 13 642
execute if score agathacat1 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat1 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[-0.3,0.3,-0.3],Sitting:0b}
execute if score agathacat1 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[135F,0F]}
execute if score agathacat1 gameplay matches 40 run scoreboard players set 6 quests_2_progress 2
execute if score agathacat1 gameplay matches 40 run scoreboard players set . crosshair 0
execute if score agathacat1 gameplay matches 40 run title @p times 5t 15t 5t
execute if score agathacat1 gameplay matches 40 run title @a title ["","\uE006"]
execute if score agathacat1 gameplay matches 50 run tp @e[type=cat,tag=agathacat] -275 15 600 7 0
execute if score agathacat1 gameplay matches 50 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:1b,Sitting:1b}
execute if score agathacat1 gameplay matches 50.. as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -275 14 600
execute if score agathacat1 gameplay matches 50 run effect give @p minecraft:slowness infinite 255 true
execute if score agathacat1 gameplay matches 80 at @p run playsound minecraft:entity.cat.purreow weather @p ~ ~ ~ 1 1
execute if score agathacat1 gameplay matches 100 run scoreboard players set . crosshair 1
execute if score agathacat1 gameplay matches 100 run effect clear @p slowness
execute if score agathacat1 gameplay matches 100 run kill @e[type=marker,tag=catlock]
execute if score agathacat1 gameplay matches 100 run gamemode adventure @p
execute if score agathacat1 gameplay matches 100 run attribute @p minecraft:generic.entity_interaction_range base set 4.5
execute if score agathacat1 gameplay matches 100 run scoreboard players set agathacat1 gameplay 0

##Agatha cat animation 2
execute if score agathacat2 gameplay matches 1.. run scoreboard players add agathacat2 gameplay 1
execute if score agathacat2 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat2 gameplay matches 1.. run attribute @p minecraft:generic.entity_interaction_range base set 0
execute if score agathacat2 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat2 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -275 14 600
execute if score agathacat2 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat2 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[0.3,0.3,0.3],Sitting:0b}
execute if score agathacat2 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[-45F,0F]}
execute if score agathacat2 gameplay matches 40 run scoreboard players set 6 quests_2_progress 3
execute if score agathacat2 gameplay matches 40 run scoreboard players set . crosshair 0
execute if score agathacat2 gameplay matches 40 run title @p times 5t 15t 5t
execute if score agathacat2 gameplay matches 40 run title @a title ["","\uE006"]
execute if score agathacat2 gameplay matches 50 run tp @e[type=cat,tag=agathacat] -331 14 647 -134 0
execute if score agathacat2 gameplay matches 50 run tp @e[type=marker,tag=catlock] -314 9 629
execute if score agathacat2 gameplay matches 50 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:1b,Sitting:1b}
execute if score agathacat2 gameplay matches 50.. as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -331 13 647
execute if score agathacat2 gameplay matches 50 run effect give @p minecraft:slowness infinite 255 true
execute if score agathacat2 gameplay matches 80 at @p run playsound minecraft:entity.cat.purreow weather @p ~ ~ ~ 1 1
execute if score agathacat2 gameplay matches 120 run scoreboard players set . crosshair 1
execute if score agathacat2 gameplay matches 100 run title @a title ["","\uE006"]
execute if score agathacat2 gameplay matches 110 run tp @e[type=marker,tag=catlock] -275 15 600
execute if score agathacat2 gameplay matches 120 run effect clear @p slowness
execute if score agathacat2 gameplay matches 120 run kill @e[type=marker,tag=catlock]
execute if score agathacat2 gameplay matches 120 run gamemode adventure @p
execute if score agathacat2 gameplay matches 120 run attribute @p minecraft:generic.entity_interaction_range base set 4.5
execute if score agathacat2 gameplay matches 120 run scoreboard players set agathacat2 gameplay 0

##Agatha cat animation 3
execute if score agathacat3 gameplay matches 1.. run scoreboard players add agathacat3 gameplay 1
execute if score agathacat3 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat3 gameplay matches 1.. run attribute @p minecraft:generic.entity_interaction_range base set 0
execute if score agathacat3 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat3 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -331 13 647
execute if score agathacat3 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat3 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[-0.3,0.3,0.3],Sitting:0b}
execute if score agathacat3 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[45F,0F]}
execute if score agathacat3 gameplay matches 40 run scoreboard players set 6 quests_2_progress 4
execute if score agathacat3 gameplay matches 40 run scoreboard players set . crosshair 0
execute if score agathacat3 gameplay matches 40 run title @p times 5t 15t 5t
execute if score agathacat3 gameplay matches 40 run title @a title ["","\uE006"]
execute if score agathacat3 gameplay matches 50 run tp @e[type=cat,tag=agathacat] -398 32 634 -90 0
execute if score agathacat3 gameplay matches 50 run tp @e[type=marker,tag=catlock] -371 23 636
execute if score agathacat3 gameplay matches 50 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:1b,Sitting:1b}
execute if score agathacat3 gameplay matches 50.. as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -398 33 634
execute if score agathacat3 gameplay matches 50 run effect give @p minecraft:slowness infinite 255 true
execute if score agathacat3 gameplay matches 80 at @p run playsound minecraft:entity.cat.purreow weather @p ~ ~ ~ 1 1
execute if score agathacat3 gameplay matches 120 run scoreboard players set . crosshair 1
execute if score agathacat3 gameplay matches 100 run title @a title ["","\uE006"]
execute if score agathacat3 gameplay matches 110 run tp @e[type=marker,tag=catlock] -331 14 647
execute if score agathacat3 gameplay matches 120 run effect clear @p slowness
execute if score agathacat3 gameplay matches 120 run kill @e[type=marker,tag=catlock]
execute if score agathacat3 gameplay matches 120 run gamemode adventure @p
execute if score agathacat3 gameplay matches 120 run attribute @p minecraft:generic.entity_interaction_range base set 4.5
execute if score agathacat3 gameplay matches 120 run scoreboard players set agathacat3 gameplay 0

##Cat held
execute if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:103b,tag:{display:{Name:'{"text":"Agatha\'s cat","color":"yellow","italic":false}',Lore:['{"text":"Quest item","color":"gold","italic":false}','{"text":"Bring the cat back safely to Agatha!","color":"white","italic":false}']},CustomModelData:297}}]}] run clear @p carrot_on_a_stick{CustomModelData:297}
execute if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Count:1b,Slot:103b,tag:{display:{Name:'{"text":"Agatha\'s cat","color":"yellow","italic":false}',Lore:['{"text":"Quest item","color":"gold","italic":false}','{"text":"Bring the cat back safely to Agatha!","color":"white","italic":false}']},CustomModelData:297}}]}] run item replace entity @p armor.head with carrot_on_a_stick{display:{Name:'{"text":"Agatha\'s cat","color":"yellow","italic":false}',Lore:['{"text":"Quest item","color":"gold","italic":false}','{"text":"Bring the cat back safely to Agatha!","color":"white","italic":false}']},CustomModelData:297} 1

##Cobweb duster
execute if score secondbatch gameplay matches 2 unless entity @p[nbt={Inventory:[{id:"minecraft:shears",Slot:0b,tag:{CustomModelData:1}}]}] run clear @p shears{CustomModelData:1}
execute if score secondbatch gameplay matches 2 unless entity @p[nbt={Inventory:[{id:"minecraft:shears",Slot:0b,tag:{CustomModelData:1}}]}] unless score active dialogue matches 1 unless score menu quests matches 1 run item replace entity @p hotbar.0 with shears{CanDestroy:["minecraft:cobweb"],display:{Name:'{"text":"Cobweb Duster","color":"red","italic":false}',Lore:['{"text":"Quest Item","color":"gold","italic":false}','{"text":"Use this to clean cobwebs and","color":"white","italic":false}','{"text":"get rid of spiders!","color":"white","italic":false}']},HideFlags:1,CustomModelData:1,Enchantments:[{id:"minecraft:efficiency",lvl:0s}],Unbreakable:1b} 1

##Spooders
execute if score secondbatch gameplay matches 2 run scoreboard players add muckspiders gameplay 1
execute if score secondbatch gameplay matches 2 if score muckspiders gameplay matches 600.. at @p unless entity @e[type=silverfish,tag=muckyspidersf,distance=..10] run function alttp:gameplay_impulse/muckyspiderspawn

execute store result score time dummy run time query daytime
execute if score time dummy matches ..14000 run time add 1t