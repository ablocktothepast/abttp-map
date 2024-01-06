execute unless score @s aj.agatha.rig_loaded = @s aj.agatha.rig_loaded run function animated_java:agatha/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:agatha/zzzzzzzz/animations/tick
function #animated_java:agatha/on_tick/as_root