scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.elisabeth.animation.running.local_anim_time 0
scoreboard players set @s aj.elisabeth.animation.running.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:elisabeth/zzzzzzzz/animations/running/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.elisabeth.animation.running