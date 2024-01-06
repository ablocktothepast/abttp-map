execute unless score @s aj.melissa.rig_loaded = @s aj.melissa.rig_loaded run function animated_java:melissa/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:melissa/zzzzzzzz/animations/tick
function #animated_java:melissa/on_tick/as_root