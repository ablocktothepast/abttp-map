execute unless score @s aj.eamon.rig_loaded = @s aj.eamon.rig_loaded run function animated_java:eamon/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:eamon/zzzzzzzz/animations/tick
function #animated_java:eamon/on_tick/as_root