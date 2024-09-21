execute unless score @s aj.neal.rig_loaded = @s aj.neal.rig_loaded run function animated_java:neal/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:neal/zzzzzzzz/animations/tick
function #animated_java:neal/on_tick/as_root