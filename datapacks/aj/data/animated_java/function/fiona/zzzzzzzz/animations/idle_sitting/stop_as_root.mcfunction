scoreboard players set @s aj.fiona.animation.idle_sitting.local_anim_time 0
tag @s remove aj.fiona.animation.idle_sitting
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.fiona.disable_command_keyframes
function animated_java:fiona/zzzzzzzz/animations/idle_sitting/tree/leaf_0
tag @s remove aj.fiona.disable_command_keyframes