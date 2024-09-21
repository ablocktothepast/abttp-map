execute unless score @s aj.cedric.rig_loaded = @s aj.cedric.rig_loaded run function animated_java:cedric/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:cedric/zzzzzzzz/animations/tick
function #animated_java:cedric/on_tick/as_root