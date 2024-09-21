scoreboard players set @s aj.cedric.animation.idle.local_anim_time 0
tag @s remove aj.cedric.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.cedric.disable_command_keyframes
function animated_java:cedric/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.cedric.disable_command_keyframes