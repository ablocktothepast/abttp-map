execute unless score @s aj.amara.rig_loaded = @s aj.amara.rig_loaded run function animated_java:amara/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:amara/zzzzzzzz/animations/tick
function #animated_java:amara/on_tick/as_root