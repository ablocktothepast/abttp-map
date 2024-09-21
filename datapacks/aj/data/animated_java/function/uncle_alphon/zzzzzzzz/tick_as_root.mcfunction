execute unless score @s aj.uncle_alphon.rig_loaded = @s aj.uncle_alphon.rig_loaded run function animated_java:uncle_alphon/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:uncle_alphon/zzzzzzzz/animations/tick
function #animated_java:uncle_alphon/on_tick/as_root