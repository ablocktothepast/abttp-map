scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.amara.animation.idle_sitting.local_anim_time 0
scoreboard players set @s aj.amara.animation.idle_sitting.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:amara/zzzzzzzz/animations/idle_sitting/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.amara.animation.idle_sitting