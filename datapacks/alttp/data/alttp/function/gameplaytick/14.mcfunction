execute positioned -281 14 642 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat1 gameplay matches 1.. if score 6 quests_2_progress matches 1 run scoreboard players set agathacat1 gameplay 1
execute positioned -275 15 600 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat2 gameplay matches 1.. if score 6 quests_2_progress matches 2 run scoreboard players set agathacat2 gameplay 1
execute positioned -331 14 647 if entity @p[distance=..4] at @p unless block ~ ~-0.01 ~ #gothrough unless score agathacat3 gameplay matches 1.. if score 6 quests_2_progress matches 3 run scoreboard players set agathacat3 gameplay 1

##Agatha cat animation 1
execute if score agathacat1 gameplay matches 1.. run scoreboard players add agathacat1 gameplay 1
execute if score agathacat1 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat1 gameplay matches 1.. run attribute @p minecraft:player.entity_interaction_range base set 0
execute if score agathacat1 gameplay matches 1.. run attribute @p minecraft:generic.movement_speed base set 0
execute if score agathacat1 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat1 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -281 13 642
execute if score agathacat1 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat1 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[-0.3,0.3,-0.3],Sitting:0b}
execute if score agathacat1 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[135F,0F]}
execute if score agathacat1 gameplay matches 40 run data modify storage minecraft:quests main[{id:6}].progress set value 2
execute if score agathacat1 gameplay matches 40 run scoreboard players set . crosshair 0
execute if score agathacat1 gameplay matches 40 run bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A cat that's stuck","color":"gold","bold":true},{"text":" ⟞⟝"}]
execute if score agathacat1 gameplay matches 40 run function alttp:questupdateshow
execute if score agathacat1 gameplay matches 40 run schedule function alttp:questupdatehide 5s
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
execute if score agathacat1 gameplay matches 100 run attribute @p minecraft:player.entity_interaction_range base set 4.5
execute if score agathacat1 gameplay matches 100 run attribute @p minecraft:generic.movement_speed base set 0.1
execute if score agathacat1 gameplay matches 100 run scoreboard players set agathacat1 gameplay 0

##Agatha cat animation 2
execute if score agathacat2 gameplay matches 1.. run scoreboard players add agathacat2 gameplay 1
execute if score agathacat2 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat2 gameplay matches 1.. run attribute @p minecraft:player.entity_interaction_range base set 0
execute if score agathacat2 gameplay matches 1.. run attribute @p minecraft:generic.movement_speed base set 0
execute if score agathacat2 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat2 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -275 14 600
execute if score agathacat2 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat2 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[0.3,0.3,0.3],Sitting:0b}
execute if score agathacat2 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[-45F,0F]}
execute if score agathacat2 gameplay matches 40 run data modify storage minecraft:quests main[{id:6}].progress set value 3
execute if score agathacat2 gameplay matches 40 run bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A cat that's stuck","color":"gold","bold":true},{"text":" ⟞⟝"}]
execute if score agathacat2 gameplay matches 40 run function alttp:questupdateshow
execute if score agathacat2 gameplay matches 40 run schedule function alttp:questupdatehide 5s
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
execute if score agathacat2 gameplay matches 120 run attribute @p minecraft:player.entity_interaction_range base set 4.5
execute if score agathacat2 gameplay matches 120 run attribute @p minecraft:generic.movement_speed base set 0.1
execute if score agathacat2 gameplay matches 120 run scoreboard players set agathacat2 gameplay 0

##Agatha cat animation 3
execute if score agathacat3 gameplay matches 1.. run scoreboard players add agathacat3 gameplay 1
execute if score agathacat3 gameplay matches 1.. run gamemode spectator @p
execute if score agathacat3 gameplay matches 1.. run attribute @p minecraft:player.entity_interaction_range base set 0
execute if score agathacat3 gameplay matches 1.. run attribute @p minecraft:generic.movement_speed base set 0
execute if score agathacat3 gameplay matches 2 as @p at @s run summon marker ~ ~ ~ {Tags:["catlock"]}
execute if score agathacat3 gameplay matches 2..50 as @p at @e[type=marker,tag=catlock] run tp @s ~ ~ ~ facing -331 13 647
execute if score agathacat3 gameplay matches 20 run data merge entity @e[type=cat,tag=agathacat,limit=1] {NoAI:0b}
execute if score agathacat3 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Motion:[-0.3,0.3,0.3],Sitting:0b}
execute if score agathacat3 gameplay matches 21 run data merge entity @e[type=cat,tag=agathacat,limit=1] {Rotation:[45F,0F]}
execute if score agathacat3 gameplay matches 40 run data modify storage minecraft:quests main[{id:6}].progress set value 4
execute if score agathacat3 gameplay matches 40 run bossbar set questupdate name [{"text":"⟞⟝ "},{"text":"Quest updated: "},{"text":"A cat that's stuck","color":"gold","bold":true},{"text":" ⟞⟝"}]
execute if score agathacat3 gameplay matches 40 run function alttp:questupdateshow
execute if score agathacat3 gameplay matches 40 run schedule function alttp:questupdatehide 5s
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
execute if score agathacat3 gameplay matches 120 run attribute @p minecraft:player.entity_interaction_range base set 4.5
execute if score agathacat3 gameplay matches 120 run attribute @p minecraft:generic.movement_speed base set 0.1
execute if score agathacat3 gameplay matches 120 run scoreboard players set agathacat3 gameplay 0

##Cat held
execute if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",count:1,Slot:103b,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Agatha\'s cat"}',"minecraft:lore":['{"color":"gold","italic":false,"text":"Quest item"}','{"color":"white","italic":false,"text":"Bring the cat back safely to Agatha!"}'],"minecraft:custom_model_data":297}}]}] run clear @p carrot_on_a_stick{CustomModelData:297}
execute if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 unless entity @p[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",count:1,Slot:103b,components:{"minecraft:custom_name":'{"color":"yellow","italic":false,"text":"Agatha\'s cat"}',"minecraft:lore":['{"color":"gold","italic":false,"text":"Quest item"}','{"color":"white","italic":false,"text":"Bring the cat back safely to Agatha!"}'],"minecraft:custom_model_data":297}}]}] run item replace entity @p armor.head with minecraft:carrot_on_a_stick[minecraft:custom_model_data=297,minecraft:lore=['{"text":"Quest item","color":"gold","italic":false}','{"text":"Bring the cat back safely to Agatha!","color":"white","italic":false}'],minecraft:custom_name='{"text":"Agatha\'s cat","color":"yellow","italic":false}'] 1

##Cobweb duster
execute if score secondbatch gameplay matches 2 unless entity @p[nbt={Inventory:[{id:"minecraft:shears",Slot:0b,components:{"minecraft:custom_model_data":1}}]}] run clear @p shears{CustomModelData:1}
execute if score secondbatch gameplay matches 2 unless entity @p[nbt={Inventory:[{id:"minecraft:shears",Slot:0b,components:{"minecraft:custom_model_data":1}}]}] unless score active dialogue matches 1 unless score menu quests matches 1 run item replace entity @p hotbar.0 with minecraft:shears[minecraft:custom_model_data=1,minecraft:lore=['{"text":"Quest Item","color":"gold","italic":false}','{"text":"Use this to clean cobwebs and","color":"white","italic":false}','{"text":"get rid of spiders!","color":"white","italic":false}'],minecraft:enchantments={levels:{"minecraft:efficiency":0},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:custom_name='{"text":"Cobweb Duster","color":"red","italic":false}',minecraft:can_break={predicates:[{blocks:"minecraft:cobweb"}]}] 1

##Spooders
execute if score secondbatch gameplay matches 2 run scoreboard players add muckspiders gameplay 1
execute if score secondbatch gameplay matches 2 if score muckspiders gameplay matches 600.. at @p unless entity @e[type=silverfish,tag=muckyspidersf,distance=..10] run function alttp:gameplay_impulse/muckyspiderspawn

execute store result score time dummy run time query daytime
execute if score time dummy matches ..14500 run gamerule doDaylightCycle true
execute if score time dummy matches 14501.. run gamerule doDaylightCycle false