execute unless score @s aj.thaddeus.rig_loaded = @s aj.thaddeus.rig_loaded run function animated_java:thaddeus/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:thaddeus/zzzzzzzz/animations/tick
function #animated_java:thaddeus/on_tick/as_root