scoreboard players set @s aj.elowen.animation.idle.local_anim_time 0
tag @s remove aj.elowen.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.elowen.disable_command_keyframes
function animated_java:elowen/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.elowen.disable_command_keyframes