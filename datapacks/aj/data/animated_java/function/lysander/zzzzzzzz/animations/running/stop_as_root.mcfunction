scoreboard players set @s aj.lysander.animation.running.local_anim_time 0
tag @s remove aj.lysander.animation.running
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.lysander.disable_command_keyframes
function animated_java:lysander/zzzzzzzz/animations/running/tree/leaf_0
tag @s remove aj.lysander.disable_command_keyframes