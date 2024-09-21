scoreboard players set @s aj.neal.animation.frienship.local_anim_time 0
tag @s remove aj.neal.animation.frienship
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.neal.disable_command_keyframes
function animated_java:neal/zzzzzzzz/animations/frienship/tree/leaf_0
tag @s remove aj.neal.disable_command_keyframes