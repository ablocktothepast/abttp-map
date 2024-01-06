scoreboard players set @s aj.lysander.animation.quiz_result.local_anim_time 0
tag @s remove aj.lysander.animation.quiz_result
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.lysander.disable_command_keyframes
function animated_java:lysander/zzzzzzzz/animations/quiz_result/tree/leaf_0
tag @s remove aj.lysander.disable_command_keyframes