execute store result score @s enemydummy12 run scoreboard players get @e[type=armor_stand,tag=lanmolas,tag=coordinator,limit=1] enemydummy12
execute store result score @s enemydummy16 run scoreboard players get @e[type=armor_stand,tag=lanmolas,tag=coordinator,limit=1] enemydummy16
execute store result score @s enemydummy14 run scoreboard players get @e[type=armor_stand,tag=lanmolas,tag=coordinator,limit=1] enemydummy15
execute store result score @s enemydummy18 run scoreboard players get @e[type=armor_stand,tag=lanmolas,tag=coordinator,limit=1] enemydummy18
scoreboard players add @e[type=armor_stand,tag=lanmolas,tag=coordinator,limit=1] enemydummy15 1

tag @s add ready

scoreboard players set @s enemydummy8 2