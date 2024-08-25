summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{}],Invisible:1b,Marker:1b,Pose:{Head:[1.0f,0.0f,0.0f]},Tags:["hookchain"]}
execute positioned ~ ~1 ~ store result score @e[type=armor_stand,tag=hookchain,limit=1,sort=nearest] dummy run scoreboard players get hookcheck dummy
execute at @p run playsound minecraft:alttp.tink block @p ~ ~ ~ 1 1
execute unless block ~ ~ ~ #gothrough run scoreboard players set @p hooklook -1
execute unless block ~ ~ ~ #gothrough run tag @s add done
execute unless block ~ ~ ~ #gothrough at @p run tp @s ~ ~ ~
execute if block ~ ~ ~ #gothrough run scoreboard players add hookcheck dummy 1
execute unless score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough if score hookcheck dummy matches 20 run scoreboard players set @p hooklook 1
execute unless score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough if score hookcheck dummy matches 20 run tag @s add done
execute unless score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough unless score hookcheck dummy matches 20 run tp @s ^ ^ ^1

execute if score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough if score hookcheck dummy matches 30 run scoreboard players set @p hooklook 1
execute if score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough if score hookcheck dummy matches 30 at @p run tp @e[type=armor_stand,tag=hookshotani] ~ ~ ~ ~ ~
execute if score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough if score hookcheck dummy matches 30 run tag @s add done
execute if score @p spw_e_3 matches 1 if block ~ ~ ~ #gothrough unless score hookcheck dummy matches 30 run tp @s ^ ^ ^1

##Check for enemies to grab
execute if entity @e[tag=hookshotable,distance=..1] run tag @s add done
execute if entity @e[tag=hookshotable,distance=..1] run scoreboard players set @p hooklook 1
execute if entity @e[tag=hookshotable,distance=..1] run tag @e[tag=hookshotable,distance=..1,limit=1,sort=nearest] add hookshotted

##Summon armor stand for animation
execute if entity @s[tag=done] if score @p hooklook matches -1 at @s run summon armor_stand ~ ~ ~ {ArmorItems:[{count:1,id:"minecraft:netherite_boots"},{count:1,id:"minecraft:netherite_leggings"},{count:1,id:"minecraft:netherite_chestplate"},{count:1,id:"minecraft:netherite_helmet"}],Marker:1b,NoBasePlate:1b,NoGravity:1b,Pose:{LeftArm:[199.0f,0.0f,0.0f],LeftLeg:[20.0f,0.0f,0.0f],RightArm:[199.0f,0.0f,0.0f],RightLeg:[31.0f,0.0f,0.0f]},ShowArms:1b,Tags:["hookshotani"]}
execute if entity @s[tag=done] if score @p hooklook matches -1 at @s run tp @e[type=armor_stand,tag=hookshotani] ~ ~ ~ ~ ~
execute if entity @s[tag=done] if score @p hooklook matches -1 at @s run tp @e[type=armor_stand,tag=hookshotlock] ^-2 ^ ^3

scoreboard players set @e[type=armor_stand,tag=gyorm,distance=..1.5] enemydummy 0
execute if entity @e[type=armor_stand,tag=gyorm,distance=..1.5] run tag @s add done

scoreboard players set 180 dummy 180
scoreboard players set 0 dummy 0
scoreboard players set -1 dummy -1
execute store result score xrot dummy run data get entity @s Rotation[0]
execute store result score yrot dummy run data get entity @s Rotation[1]
scoreboard players operation xrot dummy += 180 dummy
scoreboard players operation 0 dummy -= yrot dummy
execute as @e[type=armor_stand,tag=hookchain] store result entity @s Pose.Head[1] float 1 run scoreboard players get xrot dummy
execute as @e[type=armor_stand,tag=hookchain] store result entity @s Pose.Head[0] float 1 run scoreboard players get 0 dummy

execute as @e[type=armor_stand,tag=hookchain,tag=rotated] run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":37},count:1,id:"minecraft:carrot_on_a_stick"}]}

tp @p @e[type=armor_stand,tag=hookshotlock,limit=1,sort=nearest]

tag @e[type=armor_stand,tag=hookchain] add rotated