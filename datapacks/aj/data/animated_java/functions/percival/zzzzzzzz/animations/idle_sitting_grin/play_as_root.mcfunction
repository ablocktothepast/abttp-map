scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.percival.animation.idle_sitting_grin.local_anim_time 0
scoreboard players set @s aj.percival.animation.idle_sitting_grin.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:percival/zzzzzzzz/animations/idle_sitting_grin/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.percival.animation.idle_sitting_grin