scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.cedric.animation.walking.local_anim_time 0
scoreboard players set @s aj.cedric.animation.walking.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:cedric/zzzzzzzz/animations/walking/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.cedric.animation.walking