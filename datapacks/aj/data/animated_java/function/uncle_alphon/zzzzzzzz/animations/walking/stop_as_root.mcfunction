scoreboard players set @s aj.uncle_alphon.animation.walking.local_anim_time 0
tag @s remove aj.uncle_alphon.animation.walking
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.uncle_alphon.disable_command_keyframes
function animated_java:uncle_alphon/zzzzzzzz/animations/walking/tree/leaf_0
tag @s remove aj.uncle_alphon.disable_command_keyframes