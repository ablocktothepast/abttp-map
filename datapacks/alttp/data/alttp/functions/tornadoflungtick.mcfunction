scoreboard players add @s tornadoflung 1

# Camera shake
execute store result score result rand run random value 1..4

execute if score result rand matches 1 run tp @s ~ ~ ~ ~ ~1
execute if score result rand matches 2 run tp @s ~ ~ ~ ~ ~2
execute if score result rand matches 3 run tp @s ~ ~ ~ ~ ~-1
execute if score result rand matches 4 run tp @s ~ ~ ~ ~ ~-2

# Rotato

execute at @s run tp @s ~ ~ ~ ~8 ~

# Fling upwards
execute if score @s tornadoflung matches 1 run effect give @s levitation 2 10 true
execute if score @s tornadoflung matches 25 run effect clear @s levitation
execute if score @s tornadoflung matches 25 run effect give @s slow_falling 5 3 true
execute if score @s tornadoflung matches 60 run effect clear @s slow_falling

# Damage
execute if score @s tornadoflung matches 10 run scoreboard players set @s set_damage 1
execute if score @s tornadoflung matches 20 run scoreboard players set @s set_damage 1
execute if score @s tornadoflung matches 30 run scoreboard players set @s set_damage 2
execute if score @s tornadoflung matches 40 run scoreboard players set @s set_damage 1
execute if score @s tornadoflung matches 50 run scoreboard players set @s set_damage 1
execute if score @s tornadoflung matches 60 run scoreboard players set @s set_damage 2
execute if score @s tornadoflung matches 70 run scoreboard players set @s set_damage 1

# Disable after a while
execute if score @s tornadoflung matches 70 run effect give @p resistance 2 255 true
execute if score @s tornadoflung matches 80.. run tag @s remove tornadoflung
execute if score @s tornadoflung matches 80.. run scoreboard players set @s tornadoflung 0