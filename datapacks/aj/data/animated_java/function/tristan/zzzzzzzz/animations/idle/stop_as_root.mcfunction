scoreboard players set @s aj.tristan.animation.idle.local_anim_time 0
tag @s remove aj.tristan.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tristan.disable_command_keyframes
function animated_java:tristan/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.tristan.disable_command_keyframes