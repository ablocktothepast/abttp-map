execute store result score @s dummy run data get entity @s Health
scoreboard players operation @s dummy -= @s force_damage
execute store result entity @s Health float 1 run scoreboard players get @s dummy
scoreboard players set @s force_damage 0