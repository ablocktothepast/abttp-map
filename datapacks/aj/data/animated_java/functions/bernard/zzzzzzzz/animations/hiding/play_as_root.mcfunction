scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.bernard.animation.hiding.local_anim_time 0
scoreboard players set @s aj.bernard.animation.hiding.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:bernard/zzzzzzzz/animations/hiding/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.bernard.animation.hiding