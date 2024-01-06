execute if block ~ ~ ~1 dried_kelp_block if block ~ ~ ~2 air unless block ~ ~-1 ~2 #gothrough run tag @s add pushing
execute if block ~ ~ ~-1 dried_kelp_block if block ~ ~ ~-2 air unless block ~ ~-1 ~-2 #gothrough run tag @s add pushing
execute if block ~1 ~ ~ dried_kelp_block if block ~2 ~ ~ air unless block ~2 ~-1 ~ #gothrough run tag @s add pushing
execute if block ~-1 ~ ~ dried_kelp_block if block ~-2 ~ ~ air unless block ~-2 ~-1 ~ #gothrough run tag @s add pushing

execute if block ~ ~ ~1 dead_brain_coral_block if block ~ ~ ~2 air run tag @s add pushingonce
execute if block ~ ~ ~-1 dead_brain_coral_block if block ~ ~ ~-2 air run tag @s add pushingonce
execute if block ~1 ~ ~ dead_brain_coral_block if block ~2 ~ ~ air run tag @s add pushingonce
execute if block ~-1 ~ ~ dead_brain_coral_block if block ~-2 ~ ~ air run tag @s add pushingonce

execute if entity @s[tag=pushing] rotated ~ 0 run execute store result score @s dummy run data get entity @s Rotation[0]

execute if entity @s[tag=pushing] if score @s dummy matches -44..45 if block ~ ~ ~1 dried_kelp_block if block ~ ~ ~2 air run tag @s add pushing_1
execute if entity @s[tag=pushing] if score @s dummy matches 46..135 if block ~-1 ~ ~ dried_kelp_block if block ~-2 ~ ~ air run tag @s add pushing_2
execute if entity @s[tag=pushing] if score @s dummy matches -180..-135 if block ~ ~ ~-1 dried_kelp_block if block ~ ~ ~-2 air run tag @s add pushing_3
execute if entity @s[tag=pushing] if score @s dummy matches 136..180 if block ~ ~ ~-1 dried_kelp_block if block ~ ~ ~-2 air run tag @s add pushing_3
execute if entity @s[tag=pushing] if score @s dummy matches -134..-45 if block ~1 ~ ~ dried_kelp_block if block ~2 ~ ~ air run tag @s add pushing_4
execute if entity @s[tag=pushing] run tag @s remove pushing

execute if entity @s[tag=pushingonce] rotated ~ 0 run execute store result score @s dummy run data get entity @s Rotation[0]

execute if entity @s[tag=pushingonce] if score @s dummy matches -44..45 if block ~ ~ ~1 dead_brain_coral_block if block ~ ~ ~2 air run tag @s add pushingonce_1
execute if entity @s[tag=pushingonce] if score @s dummy matches 46..135 if block ~-1 ~ ~ dead_brain_coral_block if block ~-2 ~ ~ air run tag @s add pushingonce_2
execute if entity @s[tag=pushingonce] if score @s dummy matches -180..-135 if block ~ ~ ~-1 dead_brain_coral_block if block ~ ~ ~-2 air run tag @s add pushingonce_3
execute if entity @s[tag=pushingonce] if score @s dummy matches 136..180 if block ~ ~ ~-1 dead_brain_coral_block if block ~ ~ ~-2 air run tag @s add pushingonce_3
execute if entity @s[tag=pushingonce] if score @s dummy matches -134..-45 if block ~1 ~ ~ dead_brain_coral_block if block ~2 ~ ~ air run tag @s add pushingonce_4
execute if entity @s[tag=pushingonce] run tag @s remove pushingonce

execute if entity @s[tag=pushing_1] positioned ~ ~ ~1 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_1"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dried_kelp_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushing_1] positioned ~ ~ ~1 as @e[type=marker,tag=somariablock,distance=..0.5] at @s run tp @s ~ ~ ~1
execute if entity @s[tag=pushing_1] run tag @s remove pushing_1

execute if entity @s[tag=pushing_2] positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_2"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dried_kelp_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushing_2] positioned ~-1 ~ ~ as @e[type=marker,tag=somariablock,distance=..0.5] at @s run tp @s ~-1 ~ ~
execute if entity @s[tag=pushing_2] run tag @s remove pushing_2

execute if entity @s[tag=pushing_3] positioned ~ ~ ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_3"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dried_kelp_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushing_3] positioned ~ ~ ~-1 as @e[type=marker,tag=somariablock,distance=..0.5] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=pushing_3] run tag @s remove pushing_3

execute if entity @s[tag=pushing_4] positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_4"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dried_kelp_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushing_4] positioned ~1 ~ ~ as @e[type=marker,tag=somariablock,distance=..0.5] at @s run tp @s ~1 ~ ~
execute if entity @s[tag=pushing_4] run tag @s remove pushing_4

execute if entity @s[tag=pushingonce_1] positioned ~ ~ ~1 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_1","once_block"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dead_brain_coral_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushingonce_1] run tag @s remove pushingonce_1

execute if entity @s[tag=pushingonce_2] positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_2","once_block"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dead_brain_coral_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushingonce_2] run tag @s remove pushingonce_2

execute if entity @s[tag=pushingonce_3] positioned ~ ~ ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_3","once_block"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dead_brain_coral_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushingonce_3] run tag @s remove pushingonce_3

execute if entity @s[tag=pushingonce_4] positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["moveblock","block_4","once_block"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dead_brain_coral_block"},NoGravity:1b,Time:1,Tags:["wblock"]}]}
execute if entity @s[tag=pushingonce_4] run tag @s remove pushingonce_4

scoreboard players set @s pushcool 1