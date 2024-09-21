scoreboard players set @s aj.agatha.animation.idle.local_anim_time 0
tag @s remove aj.agatha.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.agatha.disable_command_keyframes
function animated_java:agatha/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.agatha.disable_command_keyframes