execute unless score @s aj.seraphina.rig_loaded = @s aj.seraphina.rig_loaded run function animated_java:seraphina/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:seraphina/zzzzzzzz/animations/tick
function #animated_java:seraphina/on_tick/as_root