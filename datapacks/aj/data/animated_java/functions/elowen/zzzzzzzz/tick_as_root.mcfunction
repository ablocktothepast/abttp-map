execute unless score @s aj.elowen.rig_loaded = @s aj.elowen.rig_loaded run function animated_java:elowen/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:elowen/zzzzzzzz/animations/tick
function #animated_java:elowen/on_tick/as_root