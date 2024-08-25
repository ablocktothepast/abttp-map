execute store result score @s dummy run data get entity @s Health

scoreboard players set @s enemydummy2 0

execute if score @s extrahearts matches 0 if score @s dummy matches 20 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 1 if score @s dummy matches 22 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 2 if score @s dummy matches 24 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 3 if score @s dummy matches 26 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 4 if score @s dummy matches 28 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 5 if score @s dummy matches 30 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 6 if score @s dummy matches 32 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 7 if score @s dummy matches 34 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 8 if score @s dummy matches 36 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 9 if score @s dummy matches 38 run scoreboard players set @s enemydummy2 1
execute if score @s extrahearts matches 10 if score @s dummy matches 40 run scoreboard players set @s enemydummy2 1

execute store result score @s dummy run data get entity @s SelectedItemSlot
execute unless score @s dummy matches 0 run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy2 matches 1 if entity @e[type=armor_stand,tag=swordbeam] run tellraw @p {"text":"Your Sword Beam ability is on cooldown!","color":"dark_red"}
execute if entity @e[type=armor_stand,tag=swordbeam] run scoreboard players set @s enemydummy2 0

execute if score @s enemydummy2 matches 1 run function alttp:sword_beam