scoreboard players set @s interactsneak 5

#OTHER
execute positioned 1 -24 2 run execute if entity @p[distance=..2] run execute as @p at @s run function alttp:linkbed
execute if score devcommentary devcommentary matches 1 run function alttp:devcommentary

#Picking up pots
execute rotated ~ 0 if block ^ ^ ^1 minecraft:suspicious_gravel unless score @s holding_cool matches 1.. unless score @s holding_bool matches 1 run function alttp:pick/pot

#Picking up chickens
execute rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=chicken,distance=..1.2] unless score @s holding_cool matches 1.. unless score @s holding_bool matches 1 run function alttp:pick/chicken

#Throwing stuff
execute unless score @s holding_cool matches 1.. if score @s holding_bool matches 1 run function alttp:pick/throw

#HANDTIER PICKUPS
execute if score @s handtier matches 1.. unless score @s holding_cool matches 1.. unless score @s holding_bool matches 1 rotated ~ 0 if block ^ ^ ^1 dead_tube_coral_block run function alttp:pick/stone
execute if score @s handtier matches 2.. unless score @s holding_cool matches 1.. unless score @s holding_bool matches 1 rotated ~ 0 if block ^ ^ ^1 pink_candle[lit=false] run function alttp:pick/skull
execute if score @s handtier matches 2.. unless score @s holding_cool matches 1.. unless score @s holding_bool matches 1 rotated ~ 0 if block ^ ^ ^1 dead_horn_coral_block run function alttp:pick/hrock

#PUSH
execute unless score @s pushcool matches 1.. run function alttp:pushblock

#CUKEMAN
execute if entity @e[type=armor_stand,tag=cukeman,distance=..2] run function alttp:cukeman_talk

#SUPER BOMB ACTIVATE
tag @e[type=armor_stand,tag=superbombfollow,distance=..2] add active

#CHEST OPENING
execute rotated ~ 0 positioned ^ ^ ^0.8 run tag @e[type=interaction,tag=chestm,distance=..0.6,limit=1,sort=nearest] add open_sesame
execute rotated ~ 0 positioned ^ ^ ^0.8 if entity @e[type=interaction,tag=chestm,distance=..0.6,limit=1,sort=nearest] run return 0

##Dungeon door opening
execute if entity @e[type=item_display,tag=dungeon_door,distance=..1.5] as @e[type=item_display,tag=dungeon_door,distance=..1.5,limit=1,sort=nearest] at @s run function alttp:dungeon/open_door

##NPCs / interaction elements
execute if entity @p[gamemode=adventure] unless entity @e[tag=applebasket,distance=..3] unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=interact,distance=..2,limit=1,sort=nearest] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run function alttp:interactmarker
execute if entity @p[gamemode=adventure] unless entity @e[tag=applebasket,distance=..3] unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=interact,distance=..2,limit=1,sort=nearest] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run return 0

##Apple basket
execute rotated ~ 0 positioned ^ ^ ^2 as @e[type=armor_stand,tag=applebasket] run function alttp:applebasket_pickup

##Doors
execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=!open,tag=!scheduled,tag=!init] if entity @p[tag=exterior] unless score menu quests matches 1 unless score racetime gameplay matches -100.. if entity @s[tag=locked] run function alttp:door_lockcheck

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=!open,tag=!scheduled,tag=!init] if entity @p[tag=exterior] unless score menu quests matches 1 unless score racetime gameplay matches -100.. unless entity @s[tag=lock_opened] run playsound minecraft:alttp.door_knock weather @p

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=!open,tag=!scheduled,tag=!init] if entity @p[tag=exterior] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run schedule function alttp:doormarker_scheduled 1s
execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=!open,tag=!scheduled,tag=!init] if entity @p[tag=exterior] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run tag @s add scheduled

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=!open] if entity @p[tag=interior] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run tag @p add doored

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=open] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run tag @p add doored

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @s[tag=init] unless score menu quests matches 1 unless score racetime gameplay matches -100.. run tag @p add doored

execute if score # gameplay matches 6.. unless score active dialogue matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[type=marker,tag=doormarker,distance=..2,limit=1,sort=nearest] at @s if entity @p[tag=doored] run function alttp:doormarker_scheduled

tag @p remove doored

##Lamp
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"color":"#FCBA03","italic":false,"text":"Lamp"}',"minecraft:lore":['{"color":"white","italic":false,"text":"Right-click to toggle light."}','{"color":"white","italic":false,"text":"Shift to set on fire."}'],"minecraft:custom_model_data":3}}}] run function alttp:lampsneak

##Quests
execute if score menu quests matches 1 as @p at @s run function alttp:questm_close

#Permaloot
execute at @p rotated ~ 0 positioned ^ ^ ^2 as @e[type=item_display,tag=permaloot,distance=..1.5,limit=1,sort=nearest] run function alttp:permalootcollect