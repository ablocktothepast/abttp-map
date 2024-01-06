scoreboard players set fullcount dummy 0
scoreboard players set readycount dummy 0
execute as @e[type=armor_stand,tag=lanmolas] run scoreboard players add fullcount dummy 1
execute as @e[type=armor_stand,tag=lanmolas,tag=readyready] run scoreboard players add readycount dummy 1

execute if score fullcount dummy = readycount dummy run tag @s add coordinated