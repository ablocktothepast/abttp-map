scoreboard players set @s aj.melissa.animation.sweeping.local_anim_time 0
tag @s remove aj.melissa.animation.sweeping
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.melissa.disable_command_keyframes
function animated_java:melissa/zzzzzzzz/animations/sweeping/tree/leaf_0
tag @s remove aj.melissa.disable_command_keyframes