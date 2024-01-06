execute unless score @s aj.erin.rig_loaded = @s aj.erin.rig_loaded run function animated_java:erin/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:erin/zzzzzzzz/animations/tick
function #animated_java:erin/on_tick/as_root