scoreboard players set @s aj.uncle_alphon.animation.surprised.local_anim_time 0
tag @s remove aj.uncle_alphon.animation.surprised
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.uncle_alphon.disable_command_keyframes
function animated_java:uncle_alphon/zzzzzzzz/animations/surprised/tree/leaf_0
tag @s remove aj.uncle_alphon.disable_command_keyframes