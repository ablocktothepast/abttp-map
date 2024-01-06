scoreboard players set @s aj.owen.animation.walking.local_anim_time 0
tag @s remove aj.owen.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.owen.disable_command_keyframes
function animated_java:owen/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.owen.disable_command_keyframes