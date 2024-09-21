execute unless score @s aj.lysander.rig_loaded = @s aj.lysander.rig_loaded run function animated_java:lysander/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:lysander/zzzzzzzz/animations/tick
function #animated_java:lysander/on_tick/as_root