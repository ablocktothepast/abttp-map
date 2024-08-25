##Rolling
execute unless data entity @p RootVehicle unless score tpcool dummy matches 1.. if score tptoggle dummy matches 1 run function alttp:thirdperson/roll
execute if score tpcool dummy matches 1.. run scoreboard players remove tpcool dummy 1
data merge entity @e[type=armor_stand,tag=thirdperson_player,limit=1] {NoGravity:0b}
execute if score tproll dummy matches 1.. run scoreboard players remove tproll dummy 1
execute if score tproll dummy matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s rotated ~ 0 if block ^ ^ ^0.4 #gothrough if block ^ ^1.3 ^0.4 #gothrough if block ^-0.4 ^ ^ #gothrough if block ^0.4 ^ ^ #gothrough if block ^-0.4 ^1.3 ^ #gothrough if block ^0.4 ^1.3 ^ #gothrough run tp @s ^ ^ ^0.4
execute if score tproll dummy matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s run particle minecraft:cloud ~ ~0.2 ~ 0.2 0 0.2 0 2 force
execute if score tproll dummy matches 1.. run function alttp:thirdperson/camera

##Figure out zoom level
execute store result score tpz dummy run data get entity @p Rotation[1]
scoreboard players add tpz dummy 15
execute if score tpz dummy matches ..0 run scoreboard players set tpz dummy 0
scoreboard players set 100 dummy 100
scoreboard players operation tpz dummy *= 100 dummy
scoreboard players set 105 dummy 105
scoreboard players operation tpz dummy /= 105 dummy
scoreboard players set 55 dummy 55
scoreboard players operation tpz dummy *= 75 dummy
scoreboard players operation tpz dummy /= 100 dummy
scoreboard players add tpz dummy 50

##Camera
execute store result score tprot1 dummy run data get entity @p Rotation[0]
execute store result score tprot2 dummy run data get entity @p Rotation[1]
execute if score tprot1 dummy = tprot1old dummy if score tprot2 dummy = tprot2old dummy run scoreboard players set tprot1 dummy -420
execute unless score tprot1 dummy matches -420 run function alttp:thirdperson/camera
execute store result score tprot1old dummy run data get entity @p Rotation[0]
execute store result score tprot2old dummy run data get entity @p Rotation[1]

##Movement
scoreboard players set tpwasd dummy 0
execute unless score .w wasd matches 1.. unless score .a wasd matches 1.. unless score .s wasd matches 1.. unless score .d wasd matches 1.. run scoreboard players set tpwasd dummy 1
execute if score tpwasd dummy matches 0 unless score tpslash dummy matches 1 unless score @p bombostick matches 1.. unless score @p quaketick matches 1.. run function alttp:thirdperson/move
execute if score tpwasd dummy matches 0 unless score tpslash dummy matches 1 run function alttp:thirdperson/camera
execute if score @p quaketick matches 1.. run function alttp:thirdperson/camera
execute at @p run tp @e[type=interaction,tag=thirdperson_interaction] ~ ~ ~

##Sword
execute if data entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack if entity @p[nbt={SelectedItemSlot:0}] unless score tpswordcool dummy matches 1.. run function alttp:thirdperson/sword_use
execute if data entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack run data remove entity @e[type=interaction,tag=thirdperson_interaction,limit=1] attack
execute if score tpswordcool dummy matches 1.. run scoreboard players remove tpswordcool dummy 1

##Bow
execute if entity @p[nbt={SelectedItemSlot:1}] run function alttp:thirdperson/bowtick
execute if score tpbow dummy matches 1.. unless entity @p[nbt={SelectedItemSlot:1}] run schedule function alttp:thirdperson/camera 1t
execute if score tpbow dummy matches 1.. unless entity @p[nbt={SelectedItemSlot:1}] run scoreboard players set tpbow dummy 0

##Fall
execute as @e[type=armor_stand,tag=thirdperson_player] at @s if block ~ ~-0.01 ~ #gothrough run function alttp:thirdperson/fall

##Other
execute if data entity @e[type=interaction,tag=thirdperson_interaction,limit=1] interaction as @p at @s run function alttp:rightclicked
item replace entity @e[type=armor_stand,tag=thirdperson_player] weapon.mainhand from entity @p weapon.mainhand
execute unless score tproll dummy matches 1.. as @e[type=armor_stand,tag=thirdperson_player] at @s if block ~ ~-0.01 ~ #gothrough run function alttp:thirdperson/camera