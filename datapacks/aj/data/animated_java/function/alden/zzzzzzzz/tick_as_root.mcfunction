execute unless score @s aj.alden.rig_loaded = @s aj.alden.rig_loaded run function animated_java:alden/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:alden/zzzzzzzz/animations/tick
function #animated_java:alden/on_tick/as_root