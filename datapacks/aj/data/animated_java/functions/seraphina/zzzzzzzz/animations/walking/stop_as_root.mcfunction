scoreboard players set @s aj.seraphina.animation.walking.local_anim_time 0
tag @s remove aj.seraphina.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.seraphina.disable_command_keyframes
function animated_java:seraphina/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.seraphina.disable_command_keyframes