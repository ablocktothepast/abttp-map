execute unless score @s aj.elisabeth.rig_loaded = @s aj.elisabeth.rig_loaded run function animated_java:elisabeth/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:elisabeth/zzzzzzzz/animations/tick
function #animated_java:elisabeth/on_tick/as_root