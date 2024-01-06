scoreboard players set @s aj.elowen.animation.walking.local_anim_time 0
tag @s remove aj.elowen.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.elowen.disable_command_keyframes
function animated_java:elowen/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.elowen.disable_command_keyframes