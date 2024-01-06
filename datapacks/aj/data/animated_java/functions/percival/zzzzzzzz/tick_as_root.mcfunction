execute unless score @s aj.percival.rig_loaded = @s aj.percival.rig_loaded run function animated_java:percival/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:percival/zzzzzzzz/animations/tick
function #animated_java:percival/on_tick/as_root