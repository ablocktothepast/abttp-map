scoreboard players set @s aj.neal.animation.departure.local_anim_time 0
tag @s remove aj.neal.animation.departure
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.neal.disable_command_keyframes
function animated_java:neal/zzzzzzzz/animations/departure/tree/leaf_0
tag @s remove aj.neal.disable_command_keyframes