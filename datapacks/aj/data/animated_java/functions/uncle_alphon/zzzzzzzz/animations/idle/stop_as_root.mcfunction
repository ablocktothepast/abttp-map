scoreboard players set @s aj.uncle_alphon.animation.idle.local_anim_time 0
tag @s remove aj.uncle_alphon.animation.idle
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.uncle_alphon.disable_command_keyframes
function animated_java:uncle_alphon/zzzzzzzz/animations/idle/tree/leaf_0
tag @s remove aj.uncle_alphon.disable_command_keyframes