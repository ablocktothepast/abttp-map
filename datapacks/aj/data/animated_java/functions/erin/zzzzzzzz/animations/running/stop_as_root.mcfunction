scoreboard players set @s aj.erin.animation.running.local_anim_time 0
tag @s remove aj.erin.animation.running
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.erin.disable_command_keyframes
function animated_java:erin/zzzzzzzz/animations/running/tree/leaf_0
tag @s remove aj.erin.disable_command_keyframes