scoreboard players set lancount dummy 0
execute as @e[type=armor_stand,tag=lanmolas] run scoreboard players add lancount dummy 1
scoreboard players set 50 dummy 50
scoreboard players operation lancount dummy *= 50 dummy
execute store result bossbar lanmolas max run scoreboard players get lancount dummy

scoreboard players set lanhealth dummy 0
execute as @e[type=slime,tag=lanmolassl] store result score @s dummy run data get entity @s Health
execute as @e[type=slime,tag=lanmolassl] run scoreboard players operation lanhealth dummy += @s dummy

execute store result bossbar lanmolas value run scoreboard players get lanhealth dummy