execute unless score @s aj.bertram.rig_loaded = @s aj.bertram.rig_loaded run function animated_java:bertram/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:bertram/zzzzzzzz/animations/tick
function #animated_java:bertram/on_tick/as_root