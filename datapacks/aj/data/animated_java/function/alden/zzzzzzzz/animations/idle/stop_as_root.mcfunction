scoreboard players set @s aj.alden.animation.idle.local_anim_time 0
tag @s remove aj.alden.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.alden.disable_command_keyframes
function animated_java:alden/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.alden.disable_command_keyframes