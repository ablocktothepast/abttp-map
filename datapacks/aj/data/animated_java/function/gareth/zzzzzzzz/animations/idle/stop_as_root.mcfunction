scoreboard players set @s aj.gareth.animation.idle.local_anim_time 0
tag @s remove aj.gareth.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.gareth.disable_command_keyframes
function animated_java:gareth/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.gareth.disable_command_keyframes