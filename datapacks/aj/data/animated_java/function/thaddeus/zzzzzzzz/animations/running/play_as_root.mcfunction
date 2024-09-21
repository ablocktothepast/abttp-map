scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.thaddeus.animation.running.local_anim_time 0
scoreboard players set @s aj.thaddeus.animation.running.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:thaddeus/zzzzzzzz/animations/running/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.thaddeus.animation.running