execute unless score @s aj.tristan.rig_loaded = @s aj.tristan.rig_loaded run function animated_java:tristan/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:tristan/zzzzzzzz/animations/tick
function #animated_java:tristan/on_tick/as_root