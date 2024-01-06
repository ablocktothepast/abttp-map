tag @s remove ready
tag @s remove readyready
tag @s remove coordinator
tag @s remove coordinated

# Random interval
execute store result score result rand run random value 1..50

scoreboard players operation @s enemydummy -= result rand

kill @e[type=armor_stand,tag=lanmolas_rotator]

scoreboard players set @s enemydummy11 0
kill @e[type=block_display,tag=fallshadow]