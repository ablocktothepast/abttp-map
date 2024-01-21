scoreboard players set @s testerdetect 1
function alttp:reset

scoreboard players set . gameplay 0
scoreboard players set # gameplay 0

execute if score active dialogue matches 1 run function alttp:dialogue_stop

tp @s -287 14 516 0 0

effect give @p regeneration 2 255 true

item replace entity @p inventory.0 with air 1
item replace entity @p inventory.1 with air 1
item replace entity @p inventory.2 with air 1
item replace entity @p inventory.3 with air 1
item replace entity @p inventory.4 with air 1
item replace entity @p inventory.5 with air 1
item replace entity @p inventory.6 with air 1
item replace entity @p inventory.7 with air 1
item replace entity @p inventory.8 with air 1
item replace entity @p inventory.9 with air 1
item replace entity @p inventory.10 with air 1
item replace entity @p inventory.11 with air 1
item replace entity @p inventory.12 with air 1
item replace entity @p inventory.13 with air 1
item replace entity @p inventory.14 with air 1
item replace entity @p inventory.15 with air 1
item replace entity @p inventory.16 with air 1
item replace entity @p inventory.17 with air 1
item replace entity @p inventory.18 with air 1
item replace entity @p inventory.19 with air 1
item replace entity @p inventory.23 with air 1
item replace entity @p inventory.24 with air 1
item replace entity @p hotbar.5 with air 1

stopsound @a
schedule clear alttp:ambience/oakheart_exterior
schedule clear alttp:ambience/oakheart_interior
bossbar set blackbars visible false
effect clear @p

scoreboard players set fov_init dummy 0

effect give @p minecraft:regeneration 1 255 true