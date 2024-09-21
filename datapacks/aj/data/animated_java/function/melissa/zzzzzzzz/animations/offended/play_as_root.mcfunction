scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.melissa.animation.offended.local_anim_time 0
scoreboard players set @s aj.melissa.animation.offended.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:melissa/zzzzzzzz/animations/offended/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.melissa.animation.offended