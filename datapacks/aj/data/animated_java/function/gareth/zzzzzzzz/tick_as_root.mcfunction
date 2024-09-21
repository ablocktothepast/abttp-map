execute unless score @s aj.gareth.rig_loaded = @s aj.gareth.rig_loaded run function animated_java:gareth/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:gareth/zzzzzzzz/animations/tick
function #animated_java:gareth/on_tick/as_root