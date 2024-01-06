execute unless score @s aj.bernard.rig_loaded = @s aj.bernard.rig_loaded run function animated_java:bernard/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:bernard/zzzzzzzz/animations/tick
function #animated_java:bernard/on_tick/as_root