execute unless score @s aj.villager_link.rig_loaded = @s aj.villager_link.rig_loaded run function animated_java:villager_link/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:villager_link/zzzzzzzz/animations/tick
function #animated_java:villager_link/on_tick/as_root