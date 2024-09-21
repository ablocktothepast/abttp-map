scoreboard players set @s aj.melissa.animation.idle.local_anim_time 0
tag @s remove aj.melissa.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.melissa.disable_command_keyframes
function animated_java:melissa/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.melissa.disable_command_keyframes