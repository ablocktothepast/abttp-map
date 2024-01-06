execute unless score @s aj.owen.rig_loaded = @s aj.owen.rig_loaded run function animated_java:owen/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:owen/zzzzzzzz/animations/tick
function #animated_java:owen/on_tick/as_root