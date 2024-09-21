scoreboard players set @s aj.uncle_alphon.animation.idle_grin.local_anim_time 0
tag @s remove aj.uncle_alphon.animation.idle_grin
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.uncle_alphon.disable_command_keyframes
function animated_java:uncle_alphon/zzzzzzzz/animations/idle_grin/tree/leaf_0
tag @s remove aj.uncle_alphon.disable_command_keyframes