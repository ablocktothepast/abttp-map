execute unless score @s aj.fiona.rig_loaded = @s aj.fiona.rig_loaded run function animated_java:fiona/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:fiona/zzzzzzzz/animations/tick
function #animated_java:fiona/on_tick/as_root