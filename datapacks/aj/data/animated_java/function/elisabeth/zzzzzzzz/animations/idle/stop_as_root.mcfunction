scoreboard players set @s aj.elisabeth.animation.idle.local_anim_time 0
tag @s remove aj.elisabeth.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.elisabeth.disable_command_keyframes
function animated_java:elisabeth/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.elisabeth.disable_command_keyframes