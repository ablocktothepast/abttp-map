scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.bernard.animation.was_found.local_anim_time 0
scoreboard players set @s aj.bernard.animation.was_found.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:bernard/zzzzzzzz/animations/was_found/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.bernard.animation.was_found