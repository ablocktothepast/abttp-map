scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.amara.animation.shrug.local_anim_time 0
scoreboard players set @s aj.amara.animation.shrug.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:amara/zzzzzzzz/animations/shrug/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.amara.animation.shrug