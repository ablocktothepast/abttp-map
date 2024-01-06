tag @s add ready
tag @s add coordinator

scoreboard players set @s enemydummy8 2

#Count amount of Lanmolas
scoreboard players set lllcount dummy 0
execute as @e[type=armor_stand,tag=lanmolas] run scoreboard players add lllcount dummy 1
execute store result score @s enemydummy16 run scoreboard players get lllcount dummy

#Prepare coordination id counter
scoreboard players set @s enemydummy15 2
scoreboard players set @s enemydummy14 1

#Choose an attack
execute store result score result rand run random value 1..3
execute store result score @s enemydummy18 run scoreboard players get result rand
execute if score @s enemydummy16 matches 1 if score @s enemydummy18 matches 2 run scoreboard players set @s enemydummy18 1
execute if score @s enemydummy16 matches 1 if score @s enemydummy18 matches 3 run scoreboard players set @s enemydummy18 1

#Summon rotation entity
execute if score @s enemydummy18 matches 1 run summon marker 6967.0 67.0 6955.0 {Tags:["lanmolas_rotator"]}